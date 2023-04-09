<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="HamroAirway.User.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container px-4">
        <h1 class="text-center">Payment</h1>

        <p class="fw-bold">Ticket details</p>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                     <div class="form-outline mb-3 col-lg-3 col-md-6">
                        <asp:TextBox ID="txtFlightNumber" runat="server" CssClass="form-control input-lg"  ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="Flight number" CssClass="form-label" ></asp:Label>
                    </div>

                    <div class="form-outline mb-3 col-lg-3 col-md-6">
                        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control input-lg"  ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="lblFlightNumber" runat="server" Text="From" CssClass="form-label" ></asp:Label>
                    </div>
                  
                    <div class="form-outline mb-3 col-lg-3 col-md-6">
                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="To" CssClass="form-label" ></asp:Label>
                    </div>

                     <div class="form-outline mb-3 col-lg-3 col-md-6">
                        <asp:TextBox ID="txtdate" runat="server"  CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Date" CssClass="form-label" ></asp:Label>
                     </div>
            </div>
        </div>


        <p class="fw-bold">User details</p>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="User name" CssClass="form-label" ></asp:Label>
                    </div>

                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Phone number" CssClass="form-label" ></asp:Label>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                     </div>

            </div>
        </div>


        <p class="fw-bold">Payment details</p>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardType" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="Card Type" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter card type." ControlToValidate="txtCardType" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                  
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="Card number" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter card number." ControlToValidate="txtCardNumber" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardPin" runat="server"  CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="Pin number" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter card pin." ControlToValidate="txtCardPin" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="pt-1 mb-4 "> 
                         <asp:Button ID="btnPay" runat="server" Text="Pay" CssClass="btn btn-primary btn-lg btn-block mb-3" Width="250" ValidationGroup="paymentGroup" OnClick="btnPay_Click" />
                         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-lg btn-block mb-3" Width="250" OnClick="btnClear_Click" />
                    </div>
                     <div class="pt-1 mb-4 "> 
                         <asp:Button ID="btnBack" runat="server" Text="< Back" CssClass="btn btn-secondary btn-lg btn-block mb-3" Width="250" OnClick="btnBack_Click" />
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
