﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class removeaccount : System.Web.UI.Page
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
            //try
            //{
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
                    conn.Open();
                    cmd.CommandText = "select * from member where m_id=" + temp1;
                    SqlDataReader sdr1 = cmd.ExecuteReader();
                    sdr1.Read();
                    TextBox4.Text = sdr1["m_id"].ToString();
                    TextBox5.Text = sdr1["m_name"].ToString();
                    TextBox6.Text = sdr1["m_type"].ToString();
                    TextBox7.Text = sdr1["m_contact_no"].ToString();
                    TextBox8.Text = sdr1["m_email"].ToString();
                    TextBox9.Text = sdr1["branch"].ToString();
                    TextBox10.Text = sdr1["join_date"].ToString();
                    TextBox11.Text = sdr1["expiry_date"].ToString();


                    conn.Close();



                     cmd.CommandText = "insert into past_student(id,name,type,contact_no,email,branch,join_date,expiry_date) values (@id,@name,@type,@contact_no,@email,@branch,@join_date,@expiry_date)";
                    cmd.Parameters.AddWithValue("@id", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@type", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@contact_no", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@branch", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@join_date", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@expiry_date", TextBox11.Text);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                conn.Open();

                cmd.CommandText = "delete from member where m_id=" + temp1 + @"AND m_name='" + TextBox2.Text + @"'AND m_contact_no='" + TextBox3.Text + @"'";
                SqlDataReader sdr = cmd.ExecuteReader();
                conn.Close();
                sdr.Close();
                Label2.Text = "Record deleted sucessfully";

                }
            //}
            //catch (Exception err)
            //{
             //   Label2.Text = "Please,enter valid ID";
           // }

        }

       

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {
        
        }
    }
}