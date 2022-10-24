using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Model;

namespace WebApplicationTest.Repository
{
    public class HotelRepository
    {
        public static void DecreaseStock(int id, int quantity)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                Hotel hotel = db.Hotel.Where(x => x.hotelId == id).FirstOrDefault();
                hotel.quantity -= quantity;
                db.SaveChanges();
            }
        }

    }
}