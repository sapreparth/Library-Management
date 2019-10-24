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
    public partial class renewbook : System.Web.UI.Page
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
            int int1, int2;
            int temp1, tempid;


            int1 = Int32.Parse(TextBox1.Text);
            int2 = Int32.Parse(TextBox2.Text);
            try
            {
                cmd.CommandText = "select barcode from issue where barcode=" + int1;
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
                    cmd.CommandText = "select m_id from issue where m_id=" + int2;
                    SqlDataReader sdr1 = cmd.ExecuteReader();
                    String temp2 = int2.ToString();
                    sdr1.Read();
                    string correctid1 = sdr1["m_id"].ToString();
                    tempid = Int32.Parse(correctid1);
                    String ext1 = TextBox2.Text.ToString();
                    conn.Close();
                    if (ext1 == correctid1)
                    {

                        cmd.CommandText = "update issue set issue_date=@issue_date,return_date=@return_date where m_id=" + int2;
                        cmd.Parameters.AddWithValue("@issue_date", DateTime.Today);
                        cmd.Parameters.AddWithValue("@return_date", DateTime.Today.AddDays(21));

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Label2.Text = "book sucessfully renewed";
                    }
                }


            }


            catch (Exception err)
            {
                Label2.Text = "Please,enter valid data";
            }

        }
    }
}