using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HamroAirway.Admin
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadReviews();
        }

        public void loadReviews()
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "SELECT (u.first_name + u.last_name) as full_name, r.review_id, r.message,  r.email from users u INNER JOIN reviews r on u.user_id = r.user_id";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewReview.DataSource = dt;
            GridViewReview.DataBind();
            dbConnect.conn.Close();
        }


        protected void OnPageIndexChanging_Review(object sender, GridViewPageEventArgs e)
        {
            GridViewReview.PageIndex = e.NewPageIndex;
            loadReviews();

        }
    }
}