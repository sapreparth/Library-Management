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
    public partial class issuebook : System.Web.UI.Page
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

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s1 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            int int1,int2;
            int temp1,tempid;


            int1 = Int32.Parse(TextBox1.Text);
            int2 = Int32.Parse(TextBox2.Text);
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
                if (ext == correctid) //hiii
                {
                    conn.Open();
                    cmd.CommandText = "select m_id from member where m_id=" + int2;
                    SqlDataReader sdr1 = cmd.ExecuteReader();
                    String temp2 = int2.ToString();
                    sdr1.Read();
                    string correctid1 = sdr1["m_id"].ToString();
                    tempid = Int32.Parse(correctid1);
                    String ext1 = TextBox2.Text.ToString();
                    conn.Close();
                    if (ext1 == correctid1)
                    {
                        try
                        {
                            conn.Open();
                            cmd.CommandText = "select barcode from issue where barcode=" + int1;
                            SqlDataReader sdr2 = cmd.ExecuteReader();
                            sdr2.Read();
                            string correctid2 = sdr2["barcode"].ToString();
                            tempid = Int32.Parse(correctid2);
                            String ext2 = TextBox2.Text.ToString();

                            Label2.Text = "Book has been already issued to someone";
                            conn.Close();

                       }
                        catch (Exception err1)
                        {
                         try
                        {
                                conn.Close();
                                conn.Open();
                                cmd.CommandText = "select m_id from issue where m_id=" + tempid;
                                conn.Close();
                                conn.Open();
                                cmd.CommandText = "select no_issue from issue where m_id=" + tempid;
                                SqlDataReader rdr1;
                                rdr1 = cmd.ExecuteReader();
                                rdr1.Read();
                                String s = rdr1["no_issue"].ToString();
                                int noc = Int32.Parse(s);

                                if (noc < 3)
                                {
                                    noc = noc + 1;
                                    conn.Close();
                                    conn.Open();
                                    cmd.CommandText = "select status from member where m_id=" + tempid;
                                    SqlDataReader rdr2;
                                    rdr2 = cmd.ExecuteReader();
                                    rdr2.Read();
                                    String s2 = rdr2["status"].ToString();
                                    conn.Close();
                                    if (s2 == "active")
                                    {

                                        cmd.CommandText = "select expiry_date from member where m_id=" + tempid;
                                        conn.Open();
                                        SqlDataReader rdr3 = cmd.ExecuteReader();
                                        String temp3 = int1.ToString();
                                        rdr3.Read();
                                       string expd = rdr3["expiry_date"].ToString();
                                        DateTime mydate = Convert.ToDateTime(expd);//3
                                        int result = DateTime.Compare(mydate, DateTime.Today.AddDays(21));
                                        conn.Close();
                                        if (result < 0)
                                        {
                                            Label2.Text = "Your account will expire soon so you can not issue book";
                                        }

                                        else
                                        {
                                            conn.Open();
                                            cmd.CommandText = "insert into issue(barcode,m_id,no_issue,issue_date,return_date) values (@barcode,@m_id,@no_issue,@issue_date,@return_date)";
                                            cmd.Parameters.AddWithValue("@barcode", TextBox1.Text);
                                            cmd.Parameters.AddWithValue("@m_id", TextBox2.Text);
                                            TextBox3.Text = noc.ToString();
                                            cmd.Parameters.AddWithValue("@no_issue", TextBox3.Text);

                                            cmd.Parameters.AddWithValue("@issue_date", DateTime.Today);

                                            cmd.Parameters.AddWithValue("@return_date", DateTime.Today.AddDays(21));


                                            cmd.ExecuteNonQuery();
                                            conn.Close();

                                            cmd.CommandText = "update issue set no_issue=" + noc + "where m_id=" + tempid;

                                            conn.Open();
                                            cmd.ExecuteNonQuery();
                                            conn.Close();
                                            cmd.CommandText = "update book set book_status=@book_status where barcode=" + temp1;
                                            TextBox5.Text = "not available";
                                            cmd.Parameters.AddWithValue("@book_status", TextBox5.Text);

                                            conn.Open();
                                            cmd.ExecuteNonQuery();
                                            conn.Close();

                                            Label2.Text = "Book sucessfully issued";
                                      
                                        }
                                    }
                                    else
                                    {
                                        Label2.Text = "Your account is blocked";

                                    }
                                }
                                else
                                {
                                    // Label2.Text = noc.ToString();

                                    Label2.Text = "You already issued 3 books";
                                }

                            }

                            catch (Exception err)
                            {
                                conn.Close();
                                conn.Open();
                                cmd.CommandText = "select status from member where m_id=" + tempid;
                                SqlDataReader rdr2;
                                rdr2 = cmd.ExecuteReader();
                                rdr2.Read();
                                String s2 = rdr2["status"].ToString();
                                conn.Close();
                                if (s2 == "active")
                                {
                                    cmd.CommandText = "select expiry_date from member where m_id=" + tempid;
                                    conn.Open();
                                    SqlDataReader rdr3 = cmd.ExecuteReader();
                                    String temp3 = int1.ToString();
                                    rdr3.Read();
                                    string expd = rdr3["expiry_date"].ToString();
                                    DateTime mydate = Convert.ToDateTime(expd);//3
                                    int result = DateTime.Compare(mydate, DateTime.Today.AddDays(21));
                                    conn.Close();
                                    if (result < 0)
                                    {
                                        Label2.Text = "Your account will expire soon so you can not issue book";
                                    }
                                    else
                                    {
                                        int noc = 1;
                                        cmd.CommandText = "insert into issue(barcode,m_id,no_issue,issue_date,return_date) values (@barcode,@m_id,@no_issue,@issue_date,@return_date)";
                                        cmd.Parameters.AddWithValue("@barcode", TextBox1.Text);
                                        cmd.Parameters.AddWithValue("@m_id", TextBox2.Text);
                                        TextBox3.Text = noc.ToString();

                                        cmd.Parameters.AddWithValue("@no_issue", TextBox3.Text);
                                        cmd.Parameters.AddWithValue("@issue_date", DateTime.Today);

                                        cmd.Parameters.AddWithValue("@return_date", DateTime.Today.AddDays(21));



                                        conn.Open();
                                        cmd.ExecuteNonQuery();
                                        conn.Close();
                                        cmd.CommandText = "update book set book_status=@book_status where barcode=" + temp1;
                                        TextBox4.Text = "not available";
                                        cmd.Parameters.AddWithValue("@book_status", TextBox4.Text);

                                        conn.Open();
                                        cmd.ExecuteNonQuery();
                                        conn.Close();

                                        Label2.Text = "Book sucessfully issued";
                                   
                                    }
                                }
                                else
                                {
                                    Label2.Text = "Your account is blocked";

                                }



                            }

                        }



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