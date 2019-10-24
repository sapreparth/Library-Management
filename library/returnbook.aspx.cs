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
    public partial class returnbook : System.Web.UI.Page
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
                       
                     /*   conn.Open();
                        cmd.CommandText = "select m_id from issue where m_id=" + tempid;
                        conn.Close();*/
                        conn.Open();
                        cmd.CommandText = "select no_issue from issue where m_id=" + tempid;
                        SqlDataReader rdr1;
                        rdr1 = cmd.ExecuteReader();
                        rdr1.Read();
                        String s = rdr1["no_issue"].ToString();
                        int noc = Int32.Parse(s);
                        noc = noc - 1;
                        conn.Close();
                        conn.Open();
                        cmd.CommandText = "delete from issue where barcode=" + int1 + "and m_id=" + int2;
                        SqlDataReader sdr2 = cmd.ExecuteReader();

                        sdr2.Close();
                        conn.Close();
                        cmd.CommandText = "update issue set no_issue=@no_issue where m_id=" + tempid;
                        TextBox3.Text = noc.ToString();
                        cmd.Parameters.AddWithValue("@no_issue", TextBox3.Text);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        cmd.CommandText = "update book set book_status=@book_status where barcode=" + temp1;
                        TextBox4.Text = "available";
                        cmd.Parameters.AddWithValue("@book_status", TextBox4.Text);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        Label2.Text = "book return sucessfully";




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