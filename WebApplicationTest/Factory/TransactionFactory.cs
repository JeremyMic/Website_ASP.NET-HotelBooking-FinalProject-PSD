using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Model;

namespace WebApplicationTest.Factory
{
    public class TransactionFactory
    {
        public static HeaderTransaction CreateHeader(string username)
        {
            HeaderTransaction headerTransaction = new HeaderTransaction()
            {
                user_id = username,
                transactionDate = DateTime.Now
            };
            return headerTransaction;
        }
        public static DetailTransaction CreateDetail(int transactionId,
       Book book)
        {
            DetailTransaction detailTransaction = new DetailTransaction()
            {
                transaction_id = transactionId,
                hotel_id = book.Hotel.hotelId,
                price = book.Hotel.price,
                quantity = book.Quantity,
                startDate = book.startDate,
                endDate = book.endDate

            };
            return detailTransaction;
        }

    }
}