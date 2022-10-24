using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Factory;
using WebApplicationTest.Model;

namespace WebApplicationTest.View
{
    public partial class BookPage : System.Web.UI.Page
    {
        protected static Hotel hotel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Context.Request.QueryString.Get("id");
                using (HotelReservationEntities db = new HotelReservationEntities())
                {
                    hotel = db.Hotel.Where(x => x.hotelId.ToString() == id).FirstOrDefault();
                    qtyValidator.MaximumValue = hotel.quantity.ToString();
                    qtyValidator.ErrorMessage = "Quantity Must Between 1 and " +
                    qtyValidator.MaximumValue;
                }
            }
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            List<Book> books = new List<Book>();
            bool isExist = false;
            if (Session["book"] != null)
            {
                books = (List<Book>)Session["book"];
                foreach (Book item in books)
                {
                    if (item.Hotel == hotel)
                    {
                        item.Quantity += int.Parse(txtQuantity.Text);
                        item.startDate = calendarCheckIn.SelectedDate;
                        item.endDate = calendarCheckOut.SelectedDate;
                        isExist = true;
                        break;
                    }
                }
            }
            else if (!isExist || Session["book"] == null)
            {
                Book book = ViewBookingFactory.Create(int.Parse(txtQuantity.Text), hotel, calendarCheckIn.SelectedDate, calendarCheckOut.SelectedDate);
                books.Add(book);
            }
            Session["book"] = books;

            Response.Redirect("Home.aspx");
        }


    }
}