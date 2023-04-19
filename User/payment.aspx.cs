using HamroAirway.Dao;
using HamroAirway.Model;
using HamroAirway.Utils;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Org.BouncyCastle.Asn1.X500;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace HamroAirway.User
{
    public partial class payment : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            txtFlightNumber.Text = Request.QueryString["flight_id"].ToString();
            txtFrom.Text = Request.QueryString["departure"].ToString();
            txtTo.Text = Request.QueryString["arrival"].ToString();
            txtdate.Text = Request["date"].ToString();
            txtPrice.Text = Request["price"].ToString();
            txtTicketNum.Text = "1";
            txtUserName.Text = Session["name"].ToString();
            txtPhone.Text = Session["phone"].ToString();
            txtEmail.Text = Session["email"].ToString();
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            setBooking();

            setPayment();

            clearFields();

            printTicket();

            
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

        public void setPayment()
        {

            Payment payment = new Payment();
            PaymentDao paymentDao = new PaymentDao();
            payment.booking_id = getBookingId();
            payment.amount = Convert.ToInt32(txtTicketNum.Text) * Convert.ToDouble(Request["price"].ToString());
            payment.date = Convert.ToString(DateTime.Now);

            paymentDao.savePaymnet(payment);
        }

        public void setBooking()
        {
            Booking booking = new Booking();
            BookingDao bookingDao = new BookingDao();
            booking.flight_id = Convert.ToInt32(Request.QueryString["flight_id"].ToString());
            booking.user_id = Convert.ToInt32(Session["id"].ToString());
            booking.booking_date = Convert.ToString(DateTime.Now);
            booking.no_of_booking= Convert.ToInt32(txtTicketNum.Text);
            booking.total_cost = Convert.ToInt32(txtTicketNum.Text) * Convert.ToDouble(Request["price"].ToString());

            bookingDao.saveBooking(booking);    
        }

        public int getBookingId()
        {

            DbConnect dbConnect = new DbConnect();
            string cmdText = "SELECT TOP 1 * FROM bookings order by booking_id DESC";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            DataRow dr = dt.Rows[0];
            dbConnect.conn.Close();

            return Convert.ToInt32(dr["booking_id"].ToString());
        }


        public void printTicket()
        {
            Random rnd = new Random();
            int ticketNumber = rnd.Next();

            // Create a new PDF document
            Document document = new Document();

            MemoryStream memoryStream = new MemoryStream();

            PdfWriter.GetInstance(document, memoryStream);

            document.Open();

            // Create a new Paragraph with the event name and date
            Paragraph eventInfo = new Paragraph("E-Ticket (Customer copy)");
            eventInfo.Alignment = Element.ALIGN_CENTER;
            document.Add(eventInfo);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            Paragraph userDetail = new Paragraph("User details");
            document.Add(userDetail);
            document.Add(new Paragraph("\n"));

            Paragraph userName = new Paragraph("Passenger name : " + Session["name"].ToString());
            Paragraph userEmail = new Paragraph("Passenger email : " + Session["email"].ToString());
            Paragraph userPhone = new Paragraph("Passenger phone : " + Session["phone"].ToString());
            Paragraph purchaseDate = new Paragraph("Purchase date : " + DateTime.Now);
            document.Add(userName);
            document.Add(userPhone);
            document.Add(userEmail);
            document.Add(purchaseDate);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            Paragraph ticketDetail = new Paragraph("Ticket details");
            document.Add(ticketDetail);
            document.Add(new Paragraph("\n"));

            Paragraph tickketNumber = new Paragraph("Ticket number : " + ticketNumber);
            Paragraph flightId = new Paragraph("Flight number : " + Request.QueryString["flight_id"].ToString());
            Paragraph departureLocation = new Paragraph("Departure location : " + Request.QueryString["departure"].ToString());
            Paragraph arrivalLocation = new Paragraph("Arrival location : " + Request.QueryString["arrival"].ToString());
            Paragraph departureDate = new Paragraph("Departure date: " + Request.QueryString["date"].ToString());
            document.Add(tickketNumber);
            document.Add(flightId);
            document.Add(departureLocation);
            document.Add(arrivalLocation);
            document.Add(departureDate);

            document.Add(new Paragraph("\n"));

            Paragraph contactDetail = new Paragraph("Contact information :");
            document.Add(contactDetail);

            Paragraph address = new Paragraph("Email : hamroairway@gmail.com \nPhone : +977-9812345512, +977-1234567 ");
            document.Add(address);
            // Close the document
            document.Close();

            // Set the content type and headers for the HTTP response
            HttpContext.Current.Response.ContentType = "application/pdf";
            HttpContext.Current.Response.AppendHeader("Content-Disposition", "attachment;filename=ticket.pdf");
            HttpContext.Current.Response.BinaryWrite(memoryStream.ToArray());
            HttpContext.Current.Response.End();


        }

    }
}