<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="carlist.aspx.vb" Inherits="carlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="carID" DataSourceID="SqlDataSource1" Width="463px">
        <Columns>
            <asp:BoundField DataField="carName" HeaderText="Car Name" SortExpression="carName" />
            <asp:BoundField DataField="carMaker" HeaderText="Maker" SortExpression="carMaker" />
            <asp:BoundField DataField="carColor" HeaderText="Color" SortExpression="carColor" />
            <asp:BoundField DataField="carYear" HeaderText="Year" SortExpression="carYear" />
            <asp:BoundField DataField="carMiles" HeaderText="Miles" SortExpression="carMiles" />
            <asp:BoundField DataField="carPrize" HeaderText="Prize" SortExpression="carPrize" />
            <asp:HyperLinkField DataNavigateUrlFields="carID" DataNavigateUrlFormatString="cardetails.aspx?carID={0}" HeaderText="View Details" Text="Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" SelectCommand="SELECT * FROM [cars]"></asp:SqlDataSource>
</asp:Content>

