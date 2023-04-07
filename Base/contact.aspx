<%@ Page Title="" Language="C#" MasterPageFile="~/Base/base.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="HamroAirway.Base.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="logo">
                        <img src="../Images/logo.png" alt="Flight Template">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="page-direction-button">
                        <a href="home.aspx"><i class="fa fa-home"></i>Go Back Home</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Contact Information</h2>
                        <p> Pellentesque quis turpis et lectus auctor gravida ut vel orci. Proin et tempus nunc. Proin sed justo neque. Donec et tempus ligula, et gravida elit. Vivamus vitae placerat metus.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="../Images/contact-01.jpg" alt="">
                </div>
                <div class="col-md-6">
                    <img src="../Images/contact-02.jpg" alt="">
                </div>
                <div class="col-md-4">
                    <h6>Proin dignissim rhoncus</h6>
                    <p>Aliquam elit metus, varius in ligula sed, posuere aliquam nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis vel rhoncus lectus.</p>
                </div>
                <div class="col-md-4">
                    <h6>Duis vehicula quis elit</h6>
                    <p>Donec nisl felis, eleifend eu diam ut, condimentum finibus erat. Aliquam luctus commodo ultricies. Etiam in tellus mi. Nam lobortis est magna, et rutrum ipsum lacinia id.</p>
                </div>
                <div class="col-md-4">
                    <h6>Duis vel rhoncus lectus</h6>
                    <p>Mauris aliquet eget lorem a tempor. Morbi in dui sed orci placerat ultrices sed a mi. Praesent eget porttitor enim. In tempor eros mi. Morbi a lobortis ante. Sed blandit vitae diam commodo ultricies.</p>
                </div>
            </div>
        </div>
    </section>



    <section class="contact-form">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <h2>Leave us a message</h2>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-3">
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                            </fieldset>
                        </div>
                        <div class="col-md-6">
                            <fieldset>
                                <input name="email" type="text" class="form-control" id="email" placeholder="Your email..." required="">
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                            </fieldset>
                        </div>
                        <div class="col-md-12">
                            <fieldset>
                                <button type="submit" id="form-submit" class="btn">Submit Your Message</button>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>
