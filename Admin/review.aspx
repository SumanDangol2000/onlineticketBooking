<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="HamroAirway.Admin.review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container px-4">
        <h1 class="text-center">Review</h1>

      
        <div class="row my-5">
                    <div class="form-group">
                        <div class="table-responsive">
                            <asp:GridView ID="GridViewReview" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="review_id" OnPageIndexChanging="OnPageIndexChanging_Review"
                                 PageSize="15" CssClass="table table-bordered table-condensed table-hover" AllowPaging="True" >
                             <Columns>
                                <asp:BoundField DataField="review_id" HeaderText="Review id" ReadOnly="True" InsertVisible="False" SortExpression="review_id"></asp:BoundField>
                                <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
             </div>
       

    </div>
</asp:Content>
