using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HamroAirway.Utils;
using System.Security.Cryptography.X509Certificates;

namespace HamroAirway.Base
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            DbConnect db = new DbConnect();
            string cmdText = "SELECT * FROM users WHERE email=@email";
            SqlCommand cmd = new SqlCommand(cmdText, db.conn);
            cmd.Parameters.AddWithValue("@email", txtEmailReview.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow dr = dt.Rows[0];
            db.conn.Close();

            int id = Convert.ToInt32(dr["user_id"]);

            if (id > 0)
            {
                DbConnect db1 = new DbConnect();
                cmdText = "INSERT INTO reviews (user_id, email, message) VALUES (@user_id, @email, @message )";
                cmd = new SqlCommand(cmdText, db1.conn);
                cmd.Parameters.AddWithValue("@user_id", id);
                cmd.Parameters.AddWithValue("@email", txtEmailReview.Text);
                cmd.Parameters.AddWithValue("@message", txtMessageReview.Text);
                cmd.ExecuteNonQuery();
                db.conn.Close();
                ltlReviewMessage.Text = "<h4 style=\" color:green; text-align:center; \"> Thank you for your review. </h4>";
                clearFields();

            }
            else
            {
                db.conn.Close();
                ltlReviewMessage.Text = "<h4 style=\" color:red; text-align:center; \"> Please register brfore you review. </h4>";

            }

          

        }
        public void clearFields()
        {
            txtEmailReview.Text = string.Empty;
            txtMessageReview.Text = string.Empty;
        }
     }
}