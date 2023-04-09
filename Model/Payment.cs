using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HamroAirway.Model
{
    public class Payment
    {
        public int booking_id { get; set; }
        public double amount { get; set;}
        public string date { get; set; }    

    }
}