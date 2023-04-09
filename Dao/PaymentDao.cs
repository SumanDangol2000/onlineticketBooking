using HamroAirway.Model;
using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HamroAirway.Dao
{
    public class PaymentDao
    {

        public void savePaymnet(Payment payment)
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "INSERT INTO flights (booking_id, payment_amount, payment_date) VALUES (@booking_id, @payment_amount, @payment_date)";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            cmd.Parameters.AddWithValue("@booking_id", payment.booking_id);
            cmd.Parameters.AddWithValue("@payment_amount",payment.amount );
            cmd.Parameters.AddWithValue("@payment_date", payment.date);
            cmd.ExecuteNonQuery();
            dbConnect.conn.Close();

        }

    }
}