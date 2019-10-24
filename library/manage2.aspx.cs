using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace library
{
    public partial class manage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["u_name"] != null)
            {
                Label1.Text = "Welcome "+ Session["u_name"].ToString();
            }
            else
            {
                Response.Redirect("login1.aspx");
            }
        }

    }
}