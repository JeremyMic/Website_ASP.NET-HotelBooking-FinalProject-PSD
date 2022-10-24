using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;

namespace WebApplicationTest.View
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["logout"] == "true")
            {
                Session.Clear();
                HttpCookie authUser = Request.Cookies["auth_user"];
                if (authUser != null)
                {
                    authUser.Value = "";
                    authUser.Expires = DateTime.Now.AddYears(-1);
                    Response.SetCookie(authUser);
                }
                Response.Redirect("Home.aspx");
            }
        }
    }
}