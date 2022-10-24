using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationTest.Model
{
    public class Book
    {
        public int Quantity { get; set; }
        public Hotel Hotel { get; set; }
        public DateTime startDate  { get; set; }
        public DateTime endDate { get; set; }
    }
}