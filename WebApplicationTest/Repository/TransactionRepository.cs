using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Model;

namespace WebApplicationTest.Repository
{
    public class TransactionRepository
    {
        public static HeaderTransaction InsertHeaderTransaction(HeaderTransaction headerTransaction)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                db.HeaderTransaction.Add(headerTransaction);
                db.SaveChanges();
                return headerTransaction;
            }
        }
        public static DetailTransaction InsertDetailTransaction(DetailTransaction detailTransaction)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                db.DetailTransaction.Add(detailTransaction);
                db.SaveChanges();
                int hotelId = (int)detailTransaction.hotel_id;
                int quantity = detailTransaction.quantity.Value;
                HotelRepository.DecreaseStock(hotelId, quantity);
                return detailTransaction;
            }
        }

    }
}