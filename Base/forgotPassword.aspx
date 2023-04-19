<%@ Page Title="" Language="C#" MasterPageFile="~/Base/base.Master" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="HamroAirway.Base.forgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class=" mx-1">
    <div class="container  py-5 h-100 ">
        <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="card col-lg-5 col-md-8 " style="border-radius: 1rem;">

              <div class="card-body p-4 p-lg-5 text-black">
                  <div class="d-flex align-items-center mb-3 pb-1">
                    <span class="h1 fw-bold mb-0">Change password</span>
                  </div>

                 <div class="form-outline mb-4">
                    <asp:TextBox ID="forgotLoginEmail" runat="server"  CssClass="form-control" ></asp:TextBox>
                    <asp:Label ID="lblLoginEmail" runat="server" Text="Enter your registered email" CssClass="form-label" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your email" ControlToValidate="forgotLoginEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="forgotPasswordGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your email is invalid!" ControlToValidate="forgotLoginEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="loginGroup"></asp:RegularExpressionValidator>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <asp:TextBox ID="forgotLoginPassword"  runat="server" CssClass="form-control" ></asp:TextBox>
                    <asp:Label ID="lblLoginPassword" runat="server" Text="Enter your new Password" CssClass="form-label" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="forgotLoginPassword" Display="Dynamic" ForeColor="Red" ValidationGroup="forgotPasswordGroup"></asp:RequiredFieldValidator>
                </div>

                <!-- Repeat Password input -->
                <div class="form-outline mb-3">
                    <asp:TextBox ID="forgotLoginRepeatPassword" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="form-label" ></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Re-enter your new password." ControlToValidate="forgotLoginRepeatPassword" Display="Dynamic" ForeColor="Red" ValidationGroup="forgotPasswordGroup"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your password does not match with previous one." ControlToCompare="forgotLoginPassword" ControlToValidate="forgotLoginRepeatPassword" ValidationGroup="forgotPasswordGroup" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                </div>

                  <div class="pt-1 mb-4">
                      <!-- Submit button -->
                      <asp:Button ID="btnChangePassword" runat="server" Text="save" CssClass="btn btn-primary btn-lg btn-block mb-3" ValidationGroup="forgotPasswordGroup" OnClick="btnChangePassword_Click" />
                   
                  </div>

                  <p class="text-center text-muted mt-3 mb-0"> <a href="login.aspx"
                    class="fw-bold text-body"><u>Login here</u></a></p>


              </div>
            </div>

       
      </div>
  </div>
</section>

</asp:Content>
