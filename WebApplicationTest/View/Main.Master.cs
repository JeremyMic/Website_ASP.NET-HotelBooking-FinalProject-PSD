using System;
using WebApplicationTest.Model;


namespace WebApplicationTest.View
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["auth_user"] == null)
            {
                ViewBook.Visible = false;
                AuthUsername.Visible = false;
                Logout.Visible = false;
            }
            else
            {
                AuthUsername.Visible = true;
                AuthUsername.Text = "Welcome, " + ((UserClass)Session["auth_user"]).Name;
                LoginButton.Visible = false;

                if (((UserClass)Session["auth_user"]).Role == "Admin")
                {
                    ManageUser.Visible = true;
                    ManageHotel.Visible = true;
                }

                Logout.Visible = true;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}

