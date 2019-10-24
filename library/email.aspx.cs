using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String toEmail, EmailSubj, EmailMsg;

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["u_name"] != null)
            {
                Label1.Text = Session["u_name"].ToString();
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
            SqlConnection myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconn;
            String str = "select * from issue";
            cmd.CommandText = str;
            myconn.Open();
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            string s2 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn1 = new SqlConnection(s2);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = conn1;

            while (sdr.Read())
            {
                String rd = sdr["return_date"].ToString();//1
                String fd = sdr["fine_date"].ToString();
                String mid = sdr["m_id"].ToString();//2
                DateTime mydate=Convert.ToDateTime(rd);//3
                int temp1 = Int32.Parse(mid);//4
                int result = DateTime.Compare(mydate, DateTime.Today);//5
               // DateTime mydate1 = DateTime.Today;
                String ss = "100";//8
                TextBox6.Text = ss;//9
                String s1 = DateTime.Today.AddDays(10).ToString();//11
                TextBox5.Text = s1;//12
                if (result < 0)//6
                {
                    
                    if (fd=="")//70
                    {
                       

                        cmd1.CommandText = "update issue set fine_amount='"+TextBox6.Text+"'where m_id=" + temp1;//10
                       
                        //cmd1.Parameters.AddWithValue("@fine_date", );
                       

                        conn1.Open();
                        cmd1.ExecuteNonQuery();
                        conn1.Close();
                      //  DateTime mydate1 = Convert.ToDateTime(fd);
                        //int result1 = DateTime.Compare(mydate1, DateTime.Today);

                        cmd1.CommandText= "update issue set fine_date = '"+TextBox5.Text+"'where m_id = " + temp1;//13
                        conn1.Open();
                        cmd1.ExecuteNonQuery();
                        conn1.Close();

                        TextBox7.Text = "blocked";//14
                        cmd1.CommandText = "update member set status = '" + TextBox7.Text + "'where m_id = " + temp1;//15
                        conn1.Open();
                        cmd1.ExecuteNonQuery();
                        conn1.Close();
                        conn1.Open();

                        cmd1.CommandText = "select m_email from member where m_id=" + temp1;//all 16
                        SqlDataReader rdr1;
                        
                        rdr1 = cmd1.ExecuteReader();
                        rdr1.Read();
                        String s = rdr1["m_email"].ToString();
                        conn1.Close();
                        TextBox2.Text = s;
                       
                        TextBox3.Text = "AKP Library";
                        TextBox4.Text = "You are late to return book so you have to pay fine of 100 rupees in 10 days";

                        toEmail = TextBox2.Text;
                        EmailSubj = Convert.ToString(TextBox3.Text);
                        EmailMsg = Convert.ToString(TextBox4.Text);
                        Email_Without_Attachment(toEmail, EmailSubj, EmailMsg);
                        conn1.Open();
                        cmd1.ExecuteNonQuery();
                        conn1.Close();

                        Label2.Text = "mail sended first time";
                    }
                    else
                    {
                        if (fd != "delete")
                        {
                            DateTime mydate1 = Convert.ToDateTime(fd);//1
                        
                          int result1 = DateTime.Compare(mydate1, DateTime.Today);//2
                            if (result1 < 0)//3
                            {
                                TextBox7.Text = "permanant blocked";//4
                                cmd1.CommandText = "update member set status = '" + TextBox7.Text + "'where m_id = " + temp1;//5
                                conn1.Open();
                                cmd1.ExecuteNonQuery();
                                conn1.Close();
                                TextBox8.Text = "delete";
                                cmd1.CommandText = "update issue set fine_date = '" + TextBox8.Text + "'where m_id = " + temp1;//13
                                conn1.Open();
                                cmd1.ExecuteNonQuery();
                                conn1.Close();


                                conn1.Open();
                                cmd1.CommandText = "select m_email from member where m_id=" + temp1;//6 all

                                SqlDataReader rdr1;

                                rdr1 = cmd1.ExecuteReader();
                                rdr1.Read();
                                String s = rdr1["m_email"].ToString();
                                conn1.Close();
                                TextBox2.Text = s;

                                TextBox3.Text = "AKP Library";
                                TextBox4.Text = "You doesn't pay your fine in due date so your account has been permenantly blocked";
                                toEmail = TextBox2.Text;
                                EmailSubj = Convert.ToString(TextBox3.Text);
                                EmailMsg = Convert.ToString(TextBox4.Text);
                                Email_Without_Attachment(toEmail, EmailSubj, EmailMsg);
                                conn1.Open();
                                cmd1.ExecuteNonQuery();
                                conn1.Close();

                                Label2.Text = "mail sended";


                            }
                        }



                    }
                }

            }
            myconn.Close();

             str = "select * from member";
            cmd.CommandText = str;
            myconn.Open();
        
            sdr = cmd.ExecuteReader();
            string s3 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn2 = new SqlConnection(s3);
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = conn2;
            while (sdr.Read())
            {
                String ed = sdr["expiry_date"].ToString();
                DateTime myexpdate = Convert.ToDateTime(ed);
                String id = sdr["m_id"].ToString();//2
                int temp1 = Int32.Parse(id);//4
                int ans = DateTime.Compare(myexpdate, DateTime.Today);//5
                if(ans < 0)
                {
                    cmd2.CommandText = "select * from member where m_id=" + id;
                    conn2.Open();
                    SqlDataReader rdr1 = cmd2.ExecuteReader();
                 // String temp3= int1.ToString();
                    rdr1.Read();


                    TextBox3.Text = rdr1["m_id"].ToString();
                    TextBox4.Text = rdr1["m_name"].ToString();
                    TextBox5.Text = rdr1["m_type"].ToString();
                    TextBox6.Text = rdr1["m_contact_no"].ToString();
                    TextBox7.Text = rdr1["m_email"].ToString();
                    TextBox8.Text = rdr1["branch"].ToString();
                    TextBox9.Text = rdr1["join_date"].ToString();
                    TextBox10.Text = rdr1["expiry_date"].ToString();
                    conn2.Close();
                    conn2.Open();
                    cmd2.CommandText = "delete from member where m_id=" + temp1;
                    rdr1= cmd2.ExecuteReader();
                    conn2.Close();
                    rdr1.Close();
                    cmd2.CommandText = "insert into past_student(id,name,type,contact_no,email,branch,join_date,expiry_date) values (@id,@name,@type,@contact_no,@email,@branch,@join_date,@expiry_date)";
                    cmd2.Parameters.AddWithValue("@name", TextBox4.Text);
                    cmd2.Parameters.AddWithValue("@id", TextBox3.Text);
                    cmd2.Parameters.AddWithValue("@type", TextBox5.Text);
                    cmd2.Parameters.AddWithValue("@contact_no", TextBox6.Text);
                    cmd2.Parameters.AddWithValue("@email", TextBox7.Text);
                    cmd2.Parameters.AddWithValue("@branch", TextBox8.Text);
                    cmd2.Parameters.AddWithValue("@join_date", TextBox9.Text);
                    cmd2.Parameters.AddWithValue("@expiry_date", TextBox10.Text);
                    conn2.Open();
                    cmd2.ExecuteNonQuery();
                    conn2.Close();


                }



            }



        }
        public static void Email_Without_Attachment(String ToEmail, String Subj, String Message)
        {
            String HostAdd, FromEmailid, Pass;
            HostAdd = ConfigurationManager.AppSettings["Host"].ToString();
            FromEmailid = ConfigurationManager.AppSettings["FromMail"].ToString();
            Pass = ConfigurationManager.AppSettings["Password"].ToString();

            MailMessage mailMessage = new MailMessage();

            mailMessage.From = new MailAddress(FromEmailid);
            mailMessage.Subject = Subj;
            mailMessage.Body = Message;
            mailMessage.IsBodyHtml = true;
            mailMessage.To.Add(new MailAddress(ToEmail));

            SmtpClient smtp = new SmtpClient();
            smtp.Host = HostAdd;


            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = mailMessage.From.Address;
            NetworkCred.Password = Pass;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mailMessage);


        }
    }
}