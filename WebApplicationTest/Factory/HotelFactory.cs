using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Model;

namespace WebApplicationTest.Factory
{
    public static class HotelFactory
    {
        public static Hotel Create()
        {
            return new Hotel();
        }
        public static Hotel Create(int id, string name, decimal price)
        {
            Hotel product = new Hotel()
            {
                hotelId = id,
                name = name,
                price = price
            };
            return product;
        }

        public static Hotel Create(int id, string name, string address, string roomType, decimal price, int quantity)
        {
            Hotel Hotel = new Hotel()
            {
                hotelId = id,
                name = name,
                address = address,
                roomType = roomType,
                price = price,
                quantity = quantity,

            };
            return Hotel;
        }
    }
}