using System;
using WebApplicationTest.Util;

namespace WebApplicationTest.View
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String username = txtUsername.Text;
            String email = txtEmail.Text;
            String name = txtName.Text;
            String password = txtPassword.Text;

            DbManager.Execute("INSERT INTO [User] VALUES ('" + username + "','" + email + "','" + name + "','" + password + "','User" + "')");

            PageUtility.Alert(this, "Registration Complete");

            Response.Redirect("LoginPage.aspx");
        }
    }
}