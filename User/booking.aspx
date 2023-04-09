<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="HamroAirway.User.booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center my-5">Welcome to HamroAirway</h1>
    <div class="container px-4">
        <h1 class="text-center">Flight details</h1>
        <h4 class="text-center mb-5">Search your destination and book your ticket(s).</h4>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="lblFlightNumber" runat="server" Text="From" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter departure location." ControlToValidate="txtFrom" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                  
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="To" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter arrival location." ControlToValidate="txtTo" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Date" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter arrival airport." ControlToValidate="txtdate" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="pt-1 mb-4 "> 
                         <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary btn-lg btn-block mb-3" Width="250" ValidationGroup="paymentGroup" OnClick="btnSearch_Click" />
                         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-lg btn-block mb-3" Width="250" OnClick="btnClear_Click" />
                    </div>
            </div>

            <div class="row my-5">
            <div class="form-group">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewFlight" runat="server" AutoGenerateColumns="False" DataKeyNames="flight_id" Width="100%" AllowPaging="True" PageSize="15"
                        OnPageIndexChanging="OnPageIndexChanging_Flight" CssClass="table table-bordered table-condensed table-hover" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="flight_id" HeaderText="Flight id" ReadOnly="True" InsertVisible="False" SortExpression="flight_id"></asp:BoundField>
                            <asp:BoundField DataField="airline_name" HeaderText="Airline name" SortExpression="airline_name"></asp:BoundField>
                            <asp:BoundField DataField="flight_number" HeaderText="Fligh number" SortExpression="flight_number"></asp:BoundField>
                            <asp:BoundField DataField="departure_airport" HeaderText="Departure " SortExpression="departure_airport"></asp:BoundField>
                            <asp:BoundField DataField="arrival_airport" HeaderText="Arrival " SortExpression="arrival_airport"></asp:BoundField>
                            <asp:BoundField DataField="departure_time" HeaderText="Departure time" SortExpression="departure_time"></asp:BoundField>
                            <asp:BoundField DataField="arrival_time" HeaderText="Arrival time" SortExpression="arrival_time"></asp:BoundField>
                            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration"></asp:BoundField>
                            <asp:CommandField SelectText="Book ticket" ShowSelectButton="True" ButtonType="Button" HeaderText="Action"></asp:CommandField>
                        </Columns>
                    </asp:GridView>
                 </div>   
                </div>
             </div>
            </div>
    </div>
</asp:Content>
