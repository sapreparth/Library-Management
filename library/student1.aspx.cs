using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class student1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["m_name"] != null)
            {
                Label1.Text = Session["m_name"].ToString();
            }
            else
            {
                Response.Redirect("login2.aspx");
            }
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView3.Visible = true;
            GridView4.Visible = false;
            GridView5.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login2.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView4.Visible = true;
            GridView3.Visible = false;
            GridView5.Visible = false;

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
            GridView3.Visible = false;
            GridView5.Visible = true;

        }
    }
}