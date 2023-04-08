using HamroAirway.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HamroAirway.Dao;
using HamroAirway.Model;
using System.Drawing;
using System.Xml.Linq;

namespace HamroAirway.Admin
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadUserData();
            }
        }

        protected void btSave_Click(object sender, EventArgs e)
        {
            UsersDao usersDao = new UsersDao();
            Users users = new Users();
            string fName = registerFirstName.Text;
            string lName = registerLastName.Text;

            users.first_name = char.ToUpper(fName[0]) + fName.Substring(1);
            users.last_name = char.ToUpper(lName[0]) + lName.Substring(1);
            users.phone_number = registerPhone.Text;
            users.email = registerEmail.Text;
            users.password = registerPassword.Text;

            usersDao.RegisterUser(users);

            clearFiledds();

            loadUserData();
           
        }

        protected void GridViewUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewUser.EditIndex = e.NewEditIndex;
            loadUserData();
        }
        protected void GridViewUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridViewUser.DataKeys[e.RowIndex].Value);
            string fname = e.NewValues["first_name"].ToString();
            string lname = e.NewValues["last_name"].ToString();
            string email = e.NewValues["email"].ToString();
            string phone = e.NewValues["phone_number"].ToString();
            string role = e.NewValues["role"].ToString();

            DbConnect dbConnect = new DbConnect();
            string cmdText = "UPDATE users SET first_name=@fname, last_name=@lname, email=@email, phone_number=@phone, role=@role WHERE user_id=@id";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@role", role);
            cmd.ExecuteNonQuery();
            dbConnect.conn.Close();
            GridViewUser.EditIndex = -1;

            loadUserData();
        }
        protected void GridViewUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        { 
            GridViewUser.EditIndex = -1;
            loadUserData();
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

        private void clearFiledds()
        {
            registerEmail.Text = string.Empty;
            registerPassword.Text = string.Empty;
            registerFirstName.Text = string.Empty;
            registerLastName.Text = string.Empty;
            registerPhone.Text = string.Empty;
            registerRepeatPassword.Text = string.Empty;

        }

    }
}