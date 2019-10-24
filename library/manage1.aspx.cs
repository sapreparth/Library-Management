using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace library
{
    public partial class manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(Session["u_name"]!=null)
            {
                Label1.Text = Session["u_name"].ToString();
                String temp = Session["role"].ToString();
                if (temp=="admin")
                {
                }
                else
                {
                    Response.Redirect("manage2.aspx");
                }
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login1.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            string s1 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "insert into management values (@l_name,@l_pwd,@l_contact_no,@l_address,@l_email,@l_role)";
            cmd.Parameters.AddWithValue("@l_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@l_pwd", TextBox2.Text);
            cmd.Parameters.AddWithValue("@l_contact_no", TextBox3.Text);
            cmd.Parameters.AddWithValue("@l_address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@l_email", TextBox5.Text);
            cmd.Parameters.AddWithValue("@l_role", TextBox14.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Label2.Text = "Record sucessfully added";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string s1 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            int int1;
            int temp1;


            int1 = Int32.Parse(TextBox6.Text);
            try
            {
                cmd.CommandText = "select l_id from management where l_id=" + int1;
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                String temp = int1.ToString();
                rdr.Read();



                string correctid = rdr["l_id"].ToString();
                temp1 = Int32.Parse(correctid);

                string ext = TextBox6.Text.ToString();
                conn.Close();
                if (ext == correctid)
                {
                    conn.Open();
                    cmd.CommandText = "delete from management where l_id=" + temp1 + "AND l_name='" + TextBox7.Text + "'";
                    SqlDataReader sdr = cmd.ExecuteReader();
                    conn.Close();
                    sdr.Close();
                    Label2.Text = "Record deleted sucessfully";



                }
            }

            catch (Exception err)
            {
                Label2.Text = "Please,enter valid data";
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string s1 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(s1);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            int int1;
            int temp1;


            int1 = Int32.Parse(TextBox8.Text);
            try
            {
                cmd.CommandText = "select l_id from management where l_id=" + int1;
                conn.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                String temp = int1.ToString();
                rdr.Read();



                string correctid = rdr["l_id"].ToString();
                temp1 = Int32.Parse(correctid);

                string ext = TextBox8.Text.ToString();
                conn.Close();
                if (ext == correctid)
                {
                    cmd.CommandText = "update management set l_name=@l_name,l_pwd=@l_pwd,l_contact_no=@l_contact_no,l_address=@l_address,l_email=@l_email where l_id=" + temp1;
                    cmd.Parameters.AddWithValue("@l_name", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@l_pwd", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@l_contact_no", TextBox11.Text);
                    cmd.Parameters.AddWithValue("@l_address", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@l_email", TextBox13.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label2.Text = "Record sucessfully updated";

                }
            }
            catch (Exception err)
            {
                Label2.Text = "Please,enter valid ID";
            }


        }

       
    }
}