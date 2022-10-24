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
    public partial class HotelPage : System.Web.UI.Page
    {
        protected List<Hotel> hotels = new List<Hotel>();
        protected static Hotel hotel;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                int count = db.Hotel.Count();
                if (count > 0)
                {
                    hotels = db.Hotel.ToList();
                }
            }
        }
    }
}
