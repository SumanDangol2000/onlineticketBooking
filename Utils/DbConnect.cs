using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HamroAirway.Utils
{
 
    public class DbConnect
    {
        public SqlConnection conn;
        public DbConnect()
        {
            string sqlcon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;
            conn = new SqlConnection(sqlcon);
            conn.Open();
        }
    }
}