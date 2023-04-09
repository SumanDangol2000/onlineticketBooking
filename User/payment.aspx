<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="HamroAirway.User.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container px-4">
        <h1 class="text-center">Payment</h1>

        <p class="fw-bold">Ticket details</p>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtFlightNumber" runat="server" CssClass="form-control input-lg"  ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="Flight number" CssClass="form-label" ></asp:Label>
                    </div>

                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control input-lg"  ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="lblFlightNumber" runat="server" Text="From" CssClass="form-label" ></asp:Label>
                    </div>
                  
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="To" CssClass="form-label" ></asp:Label>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtdate" runat="server"  CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Date" CssClass="form-label" ></asp:Label>
                     </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtPrice" runat="server"  CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label10" runat="server" Text="Price" CssClass="form-label" ></asp:Label>
                     </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtTicketNum" runat="server" TextMode="Number" CssClass="form-control input-lg" min="1" max="10" ></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" Text="No. of ticket(s)" CssClass="form-label" ></asp:Label>
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
                         <button type="button" class="btn btn-success btn-lg py-2 mb-3" data-bs-toggle="modal" data-bs-target="#exampleModal">Proceed for payment</button>                      
                         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-lg btn-block mb-3" Width="250" OnClick="btnClear_Click" />
                    </div>
                     <div class="pt-1 mb-4 "> 
                         <asp:Button ID="btnBack" runat="server" Text="< Back" CssClass="btn btn-secondary btn-lg btn-block mb-3" Width="250" OnClick="btnBack_Click" data-dismiss="modal"/>
                    </div>
            </div>
        </div>
    </div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Do you want to Pay?
      </div>
      <div class="modal-footer">
        <asp:Button ID="btnPay" runat="server" Text="YES" CssClass="btn btn-success  btn-block mt-2 py-1.5" Width="80" OnClick="btnPay_Click" data-dismiss="modal"/>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">NO</button>
      </div>
    </div>
  </div>
</div>

</asp:Content>
