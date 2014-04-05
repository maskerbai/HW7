<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="saleslist.aspx.vb" Inherits="saleslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Salesman List</title>
    <link rel="stylesheet" type="text/css" href="masterpage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView class="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="salesID" DataSourceID="SqlDataSource1" style="width:100%; margin:5px 0 10px 0; border:solid 1px #525252; border-collapse:collapse; text-align:center;">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:HyperLinkField DataNavigateUrlFields="salesID" DataNavigateUrlFormatString="salesdetails.aspx?salesID={0}" HeaderText="View Details" Text="Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
</asp:Content>

