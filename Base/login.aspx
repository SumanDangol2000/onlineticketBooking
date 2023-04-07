<%@ Page Title="" Language="C#" MasterPageFile="~/Base/base.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HamroAirway.Base.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- login container --%>
    
<section class="vh-100" style="background-color: #ffffff;">
    <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <a class="navbar-brand" href="#"> <img  src="../images/logo.png" alt="Company Logo" /> </a>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                 <div class="form-outline mb-4">
                    <asp:TextBox ID="loginEmail" runat="server"  CssClass="form-control" ></asp:TextBox>
                    <asp:Label ID="lblLoginEmail" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your email" ControlToValidate="loginEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your email is invalid!" ControlToValidate="loginEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="loginGroup"></asp:RegularExpressionValidator>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <asp:TextBox ID="loginPassword"  runat="server" CssClass="form-control" ></asp:TextBox>
                    <asp:Label ID="lblLoginPassword" runat="server" Text="Password" CssClass="form-label" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your password" ControlToValidate="loginPassword" Display="Dynamic" ForeColor="Red" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                </div>

                  <div class="pt-1 mb-4">
                      <!-- Submit button -->
                    <asp:Button ID="btLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-lg btn-block mb-3" OnClick="btnLogin_Clcik" ValidationGroup="loginGroup" />
                   
                  </div>

                  <a class="small text-muted" href="forgotPassword.aspx">Forgot password?</a>
                  <p class="mb-5 pb-lg-2"  style="color: #393f81;">Don't have an account? <a href="registration.aspx" style="color: #393f81;" class="fw-bold text-body">Register here</a></p>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</section>


    
</asp:Content>
