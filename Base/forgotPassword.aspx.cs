using HamroAirway.Model;
using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HamroAirway.Base
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {

            DbConnect db = new DbConnect();
            string cmdText = "SELECT * FROM users WHERE email=@email";
            SqlCommand cmd = new SqlCommand(cmdText, db.conn);
            cmd.Parameters.AddWithValue("@email", forgotLoginEmail.Text);
            int data = Convert.ToInt32(cmd.ExecuteScalar());
            db.conn.Close();

            if (data > 0)
            {
                DbConnect db1 = new DbConnect();
                string cmdText1 = "UPDATE users set password=@password where email=@email";
                SqlCommand cmd1 = new SqlCommand(cmdText1, db1.conn);
                cmd1.Parameters.AddWithValue("password", FormsAuthentication.HashPasswordForStoringInConfigFile(forgotLoginPassword.Text, "sha1"));
                cmd1.Parameters.AddWithValue("email", forgotLoginEmail.Text);
                cmd1.ExecuteNonQuery();
                ltlMessage.Text = "<h4 style=\" color:green; text-align:center; \"> Password changed successfully. </h4>";
                db1.conn.Close();
                clearFields();
            }
            else
            {
                ltlMessage.Text = "<h4 style=\" color:red; text-align:center; \"> User does not exist.</h4>";

            }


        }

        public void clearFields()
        {
            forgotLoginPassword.Text = string.Empty;
            forgotLoginEmail.Text = string.Empty;
            forgotLoginRepeatPassword.Text = string.Empty;
        }
    }
}