<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="HamroAirway.Admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            
            <div class="container-fluid px-4" style="background-color:antiquewhite; height:100%;" >
                <h1 class="text-center py-5">Dashboard</h1>
                <div class="row g-3 my-2">
                    <div class="col-md-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">720</h3>
                                <p class="fs-5">Users</p>
                            </div>
                            <i class="fas fa-user fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                 <%-- Users --%>
                <div class="row my-5">
                    <div class="form-group">
                        <div class="table-responsive">
                        <h3 class="fs-4 mb-3">USERS</h3>
                        <asp:GridView ID="GridViewUser" runat="server"  AutoGenerateColumns="False" Width="100%" DataKeyNames="user_id"
                              OnPageIndexChanging="OnPageIndexChanging_User" PageSize="5" CssClass="table table-bordered table-condensed table-hover" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="user_id" HeaderText="user id" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
                                <asp:BoundField DataField="first_name" HeaderText="first name" SortExpression="first_name"></asp:BoundField>
                                <asp:BoundField DataField="last_name" HeaderText="last name" SortExpression="last_name"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="phone_number" HeaderText="phone number" SortExpression="phone_number"></asp:BoundField>
                                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        
                    </div>
                </div>
             </div>
                

                    
                <%-- flight --%>
                <div class="row my-5">
                    <div class="form-group">
                        <div class="table-responsive">
                    <h3 class="fs-4 mb-3">FLIGHTS</h3>
                    <asp:GridView ID="GridViewFlight" runat="server"  AutoGenerateColumns="False" Width="100%" DataKeyNames="flight_id"
                          OnPageIndexChanging="OnPageIndexChanging_Flight" PageSize="5" CssClass="table table-bordered table-condensed table-hover" >
                        <Columns>
                            <asp:BoundField DataField="airline_id" HeaderText="airline id" ReadOnly="True" InsertVisible="False" SortExpression="flight_id"></asp:BoundField>
                            <asp:BoundField DataField="flight_number" HeaderText="flight_number" SortExpression="flight_number"></asp:BoundField>
                            <asp:BoundField DataField="departure_airport" HeaderText="departure_airport" SortExpression="departure_airport"></asp:BoundField>
                            <asp:BoundField DataField="arrival_airport" HeaderText="arrival_airport" SortExpression="arrival_airport"></asp:BoundField>
                            <asp:BoundField DataField="arrival_time" HeaderText="arrival_time" SortExpression="arrival_time"></asp:BoundField>
                            <asp:BoundField DataField="departure_time" HeaderText="departure_time" SortExpression="departure_time"></asp:BoundField>
                            <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

    </div>

  </div>

    
</asp:Content>
