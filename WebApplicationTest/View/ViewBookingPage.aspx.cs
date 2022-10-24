using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;

namespace WebApplicationTest.View
{
    public partial class ViewBookingPage : System.Web.UI.Page
    {
        protected static List<Book> books = new List<Book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            books = (List<Book>)Session["book"];
        }
    }
}