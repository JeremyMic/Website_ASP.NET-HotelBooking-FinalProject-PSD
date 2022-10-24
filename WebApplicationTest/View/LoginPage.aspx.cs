using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;
using WebApplicationTest.Util;

namespace WebApplicationTest.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = DbManager.Get("SELECT * FROM [User] WHERE username ='" + txtUsername.Text + "' AND password = '" + txtPassword.Text + "'");
            if (dt.Rows.Count > 0)
            {
                UserClass adminUser = new UserClass()
                {
                    Username = dt.Rows[0]["username"].ToString(),
                    Email = dt.Rows[0]["email"].ToString(),
                    Name = dt.Rows[0]["name"].ToString(),
                    Password = dt.Rows[0]["password"].ToString(),
                    Role = dt.Rows[0]["role"].ToString()
                };
                Session.Add("auth_user", adminUser);
                Response.Redirect("Home.aspx");
            }
            else
            {
                String errorMessage = "Invalid username or password";
                PageUtility.Alert(this, errorMessage);
            }
        }
    }
}