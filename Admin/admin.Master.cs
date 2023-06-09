﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HamroAirway.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                lblUserName.Text = Session["role"].ToString();
            }
            else
            {
                Response.Redirect("../pageNotFound/pageNotFound.aspx");
            }
            

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("../base/home.aspx");
        }
    }
}