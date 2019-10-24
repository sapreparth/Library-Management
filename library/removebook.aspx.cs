using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class removebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["u_name"] != null)
            {
                Label3.Text = Session["u_name"].ToString();
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            int int1;
            int temp1;


            int1 = Int32.Parse(TextBox1.Text);
            try
            {
                cmd.CommandText = "select barcode from book where barcode=" + int1;
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                String temp = int1.ToString();
                rdr.Read();



                string correctid = rdr["barcode"].ToString();
                temp1 = Int32.Parse(correctid);

                string ext = TextBox1.Text.ToString();
                conn.Close();
                if (ext == correctid)
                {
                    conn.Open();
                    cmd.CommandText = "select no_of_copy from book where barcode=" + temp1;
                    SqlDataReader rdr1;
                    rdr1 = cmd.ExecuteReader();
                    rdr1.Read();
                    String s = rdr1["no_of_copy"].ToString();
                    int noc = Int32.Parse(s);
                    noc = noc - 1;
                    conn.Close();
                    conn.Open();

                    cmd.CommandText = "delete from book where barcode=" + temp1 + "AND book_name='" + TextBox2.Text + "'AND book_edition='" + TextBox3.Text + "'";
                    SqlDataReader sdr2 = cmd.ExecuteReader();

                    sdr2.Close();
                    conn.Close();
                    

                    cmd.CommandText = "update book set no_of_copy=@no_of_copy where book_name='" + TextBox2.Text + "'AND book_edition='" + TextBox3.Text + "'";
                    TextBox3.Text = noc.ToString();
                    cmd.Parameters.AddWithValue("@no_of_copy", TextBox3.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label2.Text = "Record deleted sucessfully";
                    



                }

            }

            catch (Exception err)
            {
                Label2.Text = "Please,enter valid data";
            }


        }

      
    }
}
