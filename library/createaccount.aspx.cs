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
    public partial class createaccount : System.Web.UI.Page
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
            cmd.CommandText = "insert into member(m_name,m_pwd,m_type,m_contact_no,m_email,branch,join_date,expiry_date,status) values (@m_name,@m_pwd,@m_type,@m_contact_no,@m_email,@branch,@join_date,@expiry_date,@status)";
            cmd.Parameters.AddWithValue("@m_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@m_pwd", TextBox2.Text);
            cmd.Parameters.AddWithValue("@m_type", TextBox3.Text);
            cmd.Parameters.AddWithValue("@m_contact_no", TextBox4.Text);
            cmd.Parameters.AddWithValue("@m_email", TextBox5.Text);
            cmd.Parameters.AddWithValue("@branch", TextBox6.Text);
            cmd.Parameters.AddWithValue("@status", TextBox9.Text);
           // String date1 = DateTime.Today.ToLongDateString();
           /* String date = TextBox7.Text;
            System.Globalization.DateTimeFormatInfo dateinfo = new System.Globalization.DateTimeFormatInfo();
            dateinfo.ShortDatePattern = "dd/MM/yyyy";
            DateTime validDate = Convert.ToDateTime(date, dateinfo);*/
            cmd.Parameters.AddWithValue("@join_date",DateTime.Today );
            cmd.Parameters.AddWithValue("@expiry_date", DateTime.Today.AddYears(4));


            /*  String date2 = TextBox8.Text;
              System.Globalization.DateTimeFormatInfo dateinfo2 = new System.Globalization.DateTimeFormatInfo();
              dateinfo.ShortDatePattern = "dd/MM/yyyy";
              DateTime validDate2 = Convert.ToDateTime(date2, dateinfo2);


              cmd.Parameters.AddWithValue("@expiry_date", validDate2);*/


            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Label2.Text = "Account sucessfully created";
        }

        
    }
}