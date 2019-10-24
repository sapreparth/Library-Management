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
    public partial class unblockaccount : System.Web.UI.Page
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
                cmd.CommandText = "select m_id from member where m_id=" + int1;
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                String temp = int1.ToString();
                rdr.Read();



                string correctid = rdr["m_id"].ToString();
                temp1 = Int32.Parse(correctid);

                string ext = TextBox1.Text.ToString();
                conn.Close();
                if (ext == correctid)
                {
                    cmd.CommandText = "update member set status=@status where m_id=" + temp1 + "AND m_name='" + TextBox2.Text + "'AND m_contact_no='" + TextBox3.Text + "'";
                    TextBox3.Text = "active";
                    cmd.Parameters.AddWithValue("@status", TextBox3.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label2.Text = "Account Activated";

                }
            }
            catch (Exception err)
            {
                Label2.Text = "Please,enter valid ID";
            }

        }

    }
}