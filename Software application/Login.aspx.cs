using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datalayer;

namespace Software_application
{
    public partial class Login : System.Web.UI.Page
    {
        private Databaseconnection databaseconnection = new Databaseconnection();
        private Boolean logged;
        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            logged = databaseconnection.Authenticate(tbUsername.Text,tbPassword.Text);
            if (logged)
            {
            if (chkBox.Checked)
            {
                Response.Cookies["UserName"].Value = tbUsername.Text.Trim();
                Response.Cookies["Password"].Value = tbPassword.Text.Trim();
                Session["login"] = true;
                Response.Redirect("Home.aspx", true);
            }
            else
            {
                if (Request.Cookies["UserName"] != null || Request.Cookies["Password"] != null)
                {
                    Response.Cookies.Remove("Username");
                    Response.Cookies.Remove("Password");
                }
            }
            }
            else
            {
                lblLoginError.Visible = true;
            }


        }
    }
}