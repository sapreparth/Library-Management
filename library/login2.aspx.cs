using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string constring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select m_pwd,m_id from member where m_name='" + Login1.UserName + "'";
            cmd.Connection = con;
            SqlDataReader rdr = cmd.ExecuteReader();
            rdr.Read();
            try
            {
                string correctpass = rdr["m_pwd"].ToString();
                String id = rdr["m_id"].ToString();
                if (Login1.Password == correctpass)
                {
                    Session["m_name"] = Login1.UserName;
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                    Response.Redirect("student1.aspx");
                }
            }
            catch (Exception error1)
            {
                Console.WriteLine("Please,Enter valid username and Password");
            }
        }
    }
}