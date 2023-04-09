<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="airline.aspx.cs" Inherits="HamroAirway.Admin.airline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container px-4">
        <h1 class="text-center">Airline</h1>

        <div class="row g-3 my-2">
                 <div class="row">
                     <!-- First name input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtairline" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="lblRegisterFirstName" runat="server" Text="Airline Name" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your first name." ControlToValidate="txtairline" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Last name input -->
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtairlineAdd" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Address" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your last name." ControlToValidate="txtairlineAdd" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="pt-1 mb-4 ">
                        <!-- Submit button -->
                         <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary btn-lg btn-block mb-3" Width="250" ValidationGroup="paymentGroup" OnClick="btnSave_Click" />
                    </div>
            </div>

      
        <div class="row my-5">
            <div class="form-group">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewAirline" runat="server" AutoGenerateColumns="False" DataKeyNames="airline_id" Width="100%" AllowPaging="True" PageSize="15" 
                        OnPageIndexChanging="OnPageIndexChanging_Airline" CssClass="table table-bordered table-condensed table-hover" OnRowCancelingEdit="GridViewAirline_RowCancelingEdit"
                        OnRowEditing="GridViewAirline_RowEditing" OnRowUpdating="GridViewAirline_RowUpdating" >
                        <Columns>
                            <asp:BoundField DataField="airline_id" HeaderText="airline_id" ReadOnly="True" InsertVisible="False" SortExpression="airline_id"></asp:BoundField>
                            <asp:BoundField DataField="airline_name" HeaderText="Airline name" SortExpression="airline_name"></asp:BoundField>
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address"></asp:BoundField>
                            <asp:CommandField ShowEditButton="True" ButtonType="Button"></asp:CommandField>
                        </Columns>

                    </asp:GridView>
                </div>   
            </div>
        </div>
    </div>
</div>
       
</asp:Content>
