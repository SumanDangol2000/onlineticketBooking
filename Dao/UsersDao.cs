using HamroAirway.Model;
using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace HamroAirway.Dao
{
    public class UsersDao
    {
        DbConnect dbConnect = new DbConnect();
        string cmdText;
        SqlCommand cmd;
        public void RegisterUser(Users users)
        {
            //string cmdText = "SELECT * FROM users WHERE email=" + users.email;
            //SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            //int data = Convert.ToInt32(cmd.ExecuteScalar());

            //if (data == 0)
            //{
                cmdText = "INSERT INTO users (first_name, last_name, email, phone_number, password, role ) VALUES (@first_name, @last_name, @email, @phone_number, @password, @role )";
                cmd = new SqlCommand(cmdText, dbConnect.conn);
                cmd.Parameters.AddWithValue("@first_name", users.first_name);
                cmd.Parameters.AddWithValue("@last_name", users.last_name);
                cmd.Parameters.AddWithValue("@email", users.email);
                cmd.Parameters.AddWithValue("@phone_number", users.phone_number);
                cmd.Parameters.AddWithValue("@password", FormsAuthentication.HashPasswordForStoringInConfigFile(users.password, "sha1"));
                cmd.Parameters.AddWithValue("@role", "Normal");
                cmd.ExecuteNonQuery();
            //}
            //else
            //{

            //}


        }

        public DataTable LoginUser(Users users)
        {
            
            cmdText = "SELECT * FROM users WHERE email=@email AND password=@password";
            cmd = new SqlCommand(cmdText, dbConnect.conn);
            cmd.Parameters.AddWithValue("@email", users.email);
            cmd.Parameters.AddWithValue("@password", FormsAuthentication.HashPasswordForStoringInConfigFile(users.password, "sha1"));
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
    }
}