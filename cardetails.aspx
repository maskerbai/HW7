<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="cardetails.aspx.vb" Inherits="cardetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="masterpage.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="carID" DataSourceID="SqlDataSource1" Height="50px" Width="250px" style="margin:5px 0 10px 0; border:solid 1px #525252; border-collapse:collapse; text-align:left;">
        <Fields>
            <asp:BoundField DataField="carName" HeaderText="Name" SortExpression="carName" />
            <asp:BoundField DataField="carColor" HeaderText="Color" SortExpression="carColor" />
            <asp:BoundField DataField="carMaker" HeaderText="Make" SortExpression="carMaker" />
            <asp:BoundField DataField="carYear" HeaderText="Year" SortExpression="carYear" />
            <asp:BoundField DataField="carMiles" HeaderText="Miles" SortExpression="carMiles" />
            <asp:BoundField DataField="carPrize" HeaderText="Prize" SortExpression="carPrize" />
            <asp:BoundField DataField="transmission" HeaderText="Transmission" SortExpression="transmission" />
            <asp:BoundField DataField="bodyStyle" HeaderText="Body Style" SortExpression="bodyStyle" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
        </Fields>
        <HeaderStyle BackColor="#FFFF66" />
        <PagerStyle HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" SelectCommand="SELECT * FROM [cars]"></asp:SqlDataSource>
</asp:Content>

