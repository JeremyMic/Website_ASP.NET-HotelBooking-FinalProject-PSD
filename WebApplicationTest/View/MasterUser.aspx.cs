using System;
using WebApplicationTest.Model;
using WebApplicationTest.Util;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest.View
{
    public partial class MasterUser : System.Web.UI.Page
    {
        private UserClass selectedUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_to_edit"] != null)
            {
                selectedUser = (UserClass)Session["user_to_edit"];
                txtUsername.Text = selectedUser.Username;
                txtEmail.Text = selectedUser.Email;
                txtName.Text = selectedUser.Name;
                txtPassword.Text = selectedUser.Password;
                roleDropDownList.SelectedValue = selectedUser.Role;
            }
        }
        protected void btnProcess_Click(object Sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string name = txtName.Text;
            string password = txtPassword.Text;
            string role = roleDropDownList.SelectedValue;

            if (Session["user_to_edit"] != null)
            {
                DbManager.Execute("UPDATE [User] SET username='" + username
                + "', email='" + email
                + "', name='" + name
                + "',password='" + password
                + "',role='" + role
                + "' WHERE username='" + selectedUser.Username + "'");
                PageUtility.Alert(this, "User Updated!");
            }
            else
            {
                DbManager.Execute("INSERT INTO [User] VALUES ('"
                + username + "','" + email + "','" + name + "','" + password
                + "','User" + "')");
                PageUtility.Alert(this, "User Added!");
            }
            Response.Redirect(Request.UrlReferrer.ToString());
        }
    }
}