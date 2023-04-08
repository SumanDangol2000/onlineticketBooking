using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HamroAirway.Admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadUserData();
                loadFlightData();
            }
        }

        public void loadUserData()
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "SELECT * FROM users";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewUser.DataSource = dt;
            GridViewUser.DataBind();
            dbConnect.conn.Close();

        }

        protected void OnPageIndexChanging_User(object sender, GridViewPageEventArgs e)
        {
            GridViewUser.PageIndex = e.NewPageIndex;
            loadUserData();

        }
        public void loadFlightData()
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "SELECT * FROM flights";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewFlight.DataSource = dt;
            GridViewFlight.DataBind();
            dbConnect.conn.Close();

        }
        protected void OnPageIndexChanging_Flight(object sender, GridViewPageEventArgs e)
        {
            GridViewFlight.PageIndex = e.NewPageIndex;
            loadFlightData();

        }


    }
}