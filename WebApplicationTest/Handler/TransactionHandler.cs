using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationTest.Factory;
using WebApplicationTest.Model;
using WebApplicationTest.Repository;

namespace WebApplicationTest.Handler
{
    public class TransactionHandler
    {
        public static void Checkout(User user, List<Book> books)
        {
            HeaderTransaction headerTransaction =TransactionFactory.CreateHeader(user.username);
            int headerTransactionId =
           TransactionRepository.InsertHeaderTransaction(headerTransaction)
           .transactionId;
            foreach (var hotel in books)
            {
                DetailTransaction detailTransaction =
               TransactionFactory.CreateDetail(headerTransactionId, hotel);
                TransactionRepository.InsertDetailTransaction(
               detailTransaction);
            }
        }

    }
}