using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Model;

namespace WebApplicationTest.Factory
{
    public class ViewBookingFactory
    {
        public static Book Create(int quantity, Hotel hotel, DateTime startDate, DateTime endDate)
        {
            Book book = new Book()
            {
                Quantity = quantity,
                Hotel = hotel,
                startDate = startDate,
                endDate = endDate
            };
            return book;
        }
    }
}