<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="HamroAirway.Admin.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid px-4 " style="background-color:antiquewhite; height:100%;">
        <h1 class="text-center py-5">Users </h1>
         <div class="row g-3 my-2">
                 <div class="row">
                     <!-- First name input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerFirstName" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="lblRegisterFirstName" runat="server" Text="FirstName" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your first name." ControlToValidate="registerFirstName" ForeColor="Red" ValidationGroup="registerUserGroup"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Last name input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerLastName" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="LastName" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your last name." ControlToValidate="registerLastName" ForeColor="Red" ValidationGroup="registerUserGroup"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerEmail" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your valid email." ControlToValidate="registerEmail" ForeColor="Red" Display="Dynamic" ValidationGroup="registerUserGroup"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid email expression!" Display="Dynamic" ControlToValidate="registerEmail" ForeColor="Red" ValidationGroup="registerUserGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>

                    <!-- Phone input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerPhone" runat="server" TextMode="Phone" CssClass="form-control input-lg" MaxLength="10"></asp:TextBox>
                        <asp:Label ID="lblRegisterPhone" runat="server" Text="Phone" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your valid phone number." ControlToValidate="registerPhone" Display="Dynamic" ForeColor="Red" ValidationGroup="registerUserGroup" ValidationExpression="\d+"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="registerPhone" ErrorMessage="Please Enter Only Numbers" Display="Dynamic"  ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="registerUserGroup"> </asp:RegularExpressionValidator>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerPassword" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Password" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter password." ControlToValidate="registerPassword" ForeColor="Red" ValidationGroup="registerUserGroup"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Repeat Password input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="registerRepeatPassword" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Re-enter the password." ControlToValidate="registerRepeatPassword" Display="Dynamic" ForeColor="Red" ValidationGroup="registerUserGroup"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your password does not match with previous one." ControlToCompare="registerPassword" ControlToValidate="registerRepeatPassword" ValidationGroup="registerUserGroup" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </div>

                    <div class="pt-1 mb-4 ">
                        <!-- Submit button -->
                        <asp:Button ID="btLogin" runat="server" Text="Save" CssClass="btn btn-primary btn-lg btn-block mb-3" Width="250" ValidationGroup="registerUserGroup" OnClick="btSave_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-warning btn-lg btn-block mb-3" Width="250"  OnClick="btnClear_Click" />
                    
                    </div>
                 </div>   

                 <%-- Users --%>
                <div class="row my-5">
                    <div class="form-group">
                        <div class="table-responsive">
                        <h3 class="fs-4 mb-3">USERS</h3>
                            <asp:GridView ID="GridViewUser" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="user_id" OnRowCancelingEdit="GridViewUser_RowCancelingEdit"
                                OnRowEditing="GridViewUser_RowEditing" OnRowUpdating="GridViewUser_RowUpdating" OnPageIndexChanging="OnPageIndexChanging_User" PageSize="5"
                                CssClass="table table-bordered table-condensed table-hover" AllowPaging="True" >
                            <Columns>
                                <asp:BoundField DataField="user_id" HeaderText="user id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                                <asp:BoundField DataField="first_name" HeaderText="first name" SortExpression="first_name"></asp:BoundField>
                                <asp:BoundField DataField="last_name" HeaderText="last name" SortExpression="last_name"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="phone_number" HeaderText="phone number" SortExpression="phone_number"></asp:BoundField>
                                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role"></asp:BoundField>
                                <asp:CommandField ShowEditButton="True" ButtonType="Button"></asp:CommandField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
             </div>
        </div>
    </div>
</asp:Content>
