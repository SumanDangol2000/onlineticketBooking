using HamroAirway.Dao;
using HamroAirway.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HamroAirway.Base
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Clcik(object sender, EventArgs e)
        {

            UsersDao usersDao = new UsersDao(); 
            Users users = new Users();
            users.email = loginEmail.Text;
            users.password = loginPassword.Text;
            
            DataTable dt = usersDao.LoginUser(users);

            if(dt.Rows.Count > 0 )
            {
                DataRow dr = dt.Rows[0];

                Session["id"] = dr["user_id"];
                Session["name"] = dr["first_name"].ToString() + " " + dr["last_name"].ToString();
                Session["email"] = dr["email"];
                Session["phone"] = dr["phone_number"];
                switch(dr["role"].ToString())
                {
                    case "Normal":
                        Response.Redirect("../User/user.aspx");
                        break;

                    case "Admin":
                        Response.Redirect("../Admin/dashboard.aspx");
                        break;

                }
                
            }


        }
    }
}