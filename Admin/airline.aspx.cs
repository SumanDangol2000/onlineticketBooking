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
    public partial class airline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadAirlineData();
            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "INSERT INTO airlines (airline_name, address) VALUES (@airline_name, @address)";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            cmd.Parameters.AddWithValue("@airline_name", txtairline.Text);
            cmd.Parameters.AddWithValue("@address", txtairlineAdd.Text);
            cmd.ExecuteNonQuery();
            dbConnect.conn.Close();

            loadAirlineData();

        }

        protected void GridViewAirline_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewAirline.EditIndex = e.NewEditIndex;
            loadAirlineData();
        }
        protected void GridViewAirline_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridViewAirline.DataKeys[e.RowIndex].Value);
            string airline_name = e.NewValues["airline_name"].ToString();
            string address = e.NewValues["address"].ToString();

            DbConnect dbConnect = new DbConnect();
            string cmdText = "UPDATE airlines SET airline_name=@airline_name, address=@address WHERE airline_id=@id";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@airline_name", airline_name);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.ExecuteNonQuery();
            dbConnect.conn.Close();
            GridViewAirline.EditIndex = -1;

            loadAirlineData();
        }
        protected void GridViewAirline_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewAirline.EditIndex = -1;
            loadAirlineData();
        }


        public void loadAirlineData()
        {
            DbConnect dbConnect = new DbConnect();
            string cmdText = "SELECT * FROM airlines";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewAirline.DataSource = dt;
            GridViewAirline.DataBind();
            dbConnect.conn.Close();

        }

        protected void OnPageIndexChanging_Airline(object sender, GridViewPageEventArgs e)
        {
            GridViewAirline.PageIndex = e.NewPageIndex;
            loadAirlineData();

        }

        private void clearFiledds()
        {
            txtairline.Text = string.Empty;
            txtairlineAdd.Text = string.Empty;

        }

       
    }
}