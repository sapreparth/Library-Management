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
    public partial class addbook : System.Web.UI.Page
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
            cmd.CommandText = "insert into book values (@subject,@book_name,@book_edition,@no_of_copy,@author_id,@book_status,@Shell)";
            cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
            cmd.Parameters.AddWithValue("@book_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@book_edition", TextBox3.Text);
            cmd.Parameters.AddWithValue("@no_of_copy", TextBox4.Text);
            cmd.Parameters.AddWithValue("@author_id", TextBox5.Text);
            cmd.Parameters.AddWithValue("@book_status", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Shell", TextBox7.Text);


            int i =0;
            int j = Int32.Parse(TextBox4.Text);
            conn.Open();
            for (i = 0; i < j; i++)
            {
                cmd.ExecuteNonQuery();
            }
            conn.Close();
            Label2.Text = "book sucessfully added";

        }

      
    }
}