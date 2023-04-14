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

            // Create a new MemoryStream to write the PDF file
            MemoryStream memoryStream = new MemoryStream();

            // Create a PdfWriter instance to write the PDF file to the MemoryStream
            PdfWriter.GetInstance(document, memoryStream);

            // Open the document
            document.Open();

            // Create a new Paragraph with the event name and date
            Paragraph eventInfo = new Paragraph("Ticket detials" + "\n" + DateTime.Now);
            eventInfo.Alignment = Element.ALIGN_CENTER;
            document.Add(eventInfo);

            document.Add(new Paragraph("\n"));

            // Create a table to display the ticket information
            PdfPTable table = new PdfPTable(4);
            table.WidthPercentage = 100;

            // Add the ticket holder name and ticket number to the table
            PdfPCell cell11 = new PdfPCell(new Phrase("Ticket Number: " + ticketNumber));
            PdfPCell cell12 = new PdfPCell(new Phrase("Passanger Name: " + Session["name"].ToString()));
            PdfPCell cell13 = new PdfPCell(new Phrase("Phone Number: " + Session["phone"].ToString()));
            PdfPCell cell14 = new PdfPCell(new Phrase("Email Address: " + Session["email"].ToString()));
            table.AddCell(cell11);
            table.AddCell(cell12);
            table.AddCell(cell13);
            table.AddCell(cell14);

            // Add the event venue and organizer to the table
            PdfPCell cell21 = new PdfPCell(new Phrase("Flight ID: " + Request.QueryString["flight_id"].ToString()));
            PdfPCell cell22 = new PdfPCell(new Phrase("Departure location: " + Request.QueryString["departure"].ToString()));
            PdfPCell cell23 = new PdfPCell(new Phrase("Arrival location: " + Request.QueryString["arrival"].ToString()));
            PdfPCell cell24 = new PdfPCell(new Phrase("Date/time: " + Request.QueryString["date"].ToString()));

            table.AddCell(cell21);
            table.AddCell(cell22);
            table.AddCell(cell23);
            table.AddCell(cell24);
            document.Add(table);

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