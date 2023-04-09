using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HamroAirway.User
{
    public partial class payment : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //txtFlightNumber.Text = Request.QueryString["flight_id"].ToString();
            //txtFrom.Text = Request.QueryString["departure"].ToString();
            //txtTo.Text = Request.QueryString["arrival"].ToString();
            //txtdate.Text = Request["date"].ToString();

            //txtUserName.Text = Session["name"].ToString();
            //txtPhone.Text = Session["phone"].ToString();
            //txtEmail.Text = Session["email"].ToString();
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(),  "alertMessage","alert('Do you want to proceed your payment?')", true);

            clearFields();

          
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        public void clearFields()
        {
            txtFlightNumber.Text = string.Empty;
            txtFrom.Text = string.Empty;
            txtTo.Text = string.Empty;
            txtdate.Text = string.Empty;

            txtUserName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;

            txtCardType.Text = string.Empty;
            txtCardNumber.Text = string.Empty;
            txtCardPin.Text = string.Empty;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("booking.aspx");
        }
    }
}