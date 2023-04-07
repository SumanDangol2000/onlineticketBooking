<%@ Page Title="" Language="C#" MasterPageFile="~/Base/base.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HamroAirway.Base.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .image{
            background-image:url("../Images/bg_image.png");
            height:600px;
            background-repeat:no-repeat;
            background-size:cover;
        }

        .service1{
            background-image:url("../Images/service3.png");
            background-repeat:no-repeat;
            background-size:cover;
        }

        .service2{
            background-image:url("../Images/service4.png");
            background-repeat:no-repeat;
            background-size:cover;
        }

        .service3{
            background-image:url("../Images/service1.png");
            background-repeat:no-repeat;
            background-size:cover;
        }

        .service4{
            background-image:url("../Images/service2.png");
            background-repeat:no-repeat;
            background-size:cover;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container py-4">

    <%-- landing image and content --%>
    <div class="p-5 mb-4 bg-light rounded-3 bg-image image">
          <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">Travel safe with HamroAirway</h1>
            <p class="col-md-8 fs-4"> Get your ticket(s) on just a single click. Have a best experiance from HamroAirway service. </p>
             <a href="login.aspx"> <input type="button" class="btn btn-primary btn-lg" value="Book tickets "  /></a>
          </div>
        </div>
    </div>
    <%-- Services --%>
    
    <section id="services" class="container py-4" >

    <h1 class="text-center mt-5" >Services</h1>
    

    <div class="row align-items-md-stretch">
      <div class="col-md-6 mt-4 ">
        <div class="h-100 p-5 text-dark bg-dark rounded-3 bg-image service1">
          <h2>Online ticket booking</h2>
            <p> Book your airway tickets online through HamroAirway website or mobile app quickly and easily.
                Search for flights, select the dates, times, and destinations, and book tickets online immediately.</p>
        </div>
      </div>
      <div class="col-md-6 mt-4">
        <div class="h-100 p-5 bg-dark text-dark border rounded-3 bg-image service2">
          <h2>Reservation changes</h2>
           <p>Allow passengers to make changes to their flight reservations, such as changing the dates, times, or destinations, or upgrading their seats. 
               These changes can often be made online or by calling the customer service center.</p> 
        </div>
      </div>
        <div class="col-md-6 mt-4">
        <div class="h-100 p-5 text-dark bg-dark rounded-3 bg-image service3">
          <h2>Group booking</h2>
          <p>Offers group booking services for passengers traveling in large groups, such as families, friends, or business groups.
              These services typically offer discounts and other benefits for group bookings.</p>
        </div>
      </div>
      <div class="col-md-6 mt-4">
        <div class="h-100 p-5 bg-light text-dark border rounded-3 bg-image service4">
          <h2>Special services</h2>
          <p>Offers various special services for passengers, such as wheelchair assistance, special meals, and assistance for unaccompanied minors.
              Request various services during the ticket booking process or by contacting the customer service center.</p>
        </div>
      </div>
    </div>
</section>


<!-- Section: Images of most visited country/places -->

<div class="text-center text-dark">

<h1 class="text-center mt-5">Most visited places</h1>
  <div class="container p-4">
    <section class="">
      <div class="row">
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/113.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >Germany</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/111.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >Switzerland</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/112.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >USA</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/114.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >United Kingdom</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/115.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >Japan</div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
          <div
            class="bg-image hover-overlay ripple shadow-1-strong rounded"
            data-ripple-color="light"
          >
            <img
              src="https://mdbcdn.b-cdn.net/img/new/fluid/city/116.webp"
              class="w-100"
            />
              <div
                class="mask"
                style="background-color: rgba(251, 251, 251, 0.2);"
              >Korea</div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>


    <%-- Footer --%>
 <footer class="bg-light mt-5 " id="contact">
     <%-- Contact --%>
    <div class="text-center pb-5 pt-3">
        <h1 class="text-uppercase mb-4">Contact</h1>
        <p>Phone number : +977-9812345512, +977-1234567</p>
        <p>Email : HamroAirway@mail.com</p>
        <p>Address : Maitidevi, Kathmandu Nepal.</p>
    </div>
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
   © 2023 Copyright:HamroAirway
  </div>
</footer>



</asp:Content>
