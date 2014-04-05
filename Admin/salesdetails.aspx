<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="salesdetails.aspx.vb" Inherits="Admin_salesdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Salesman Details</title>
    <link rel="stylesheet" type="text/css" href="masterpage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="salesID" DataSourceID="SqlDataSource1" Height="50px" Width="250px" style="margin:5px 0 10px 0; border:solid 1px #525252; border-collapse:collapse; text-align:left;">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:CommandField ButtonType="Button" InsertText="Add New Saleman" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" SelectCommand="SELECT * FROM [sales] WHERE ([salesID] = @salesID)" DeleteCommand="DELETE FROM [sales] WHERE [salesID] = @salesID" InsertCommand="INSERT INTO [sales] ([Name], [Phone], [streetAddress], [city], [state]) VALUES (@Name, @Phone, @streetAddress, @city, @state)" UpdateCommand="UPDATE [sales] SET [Name] = @Name, [Phone] = @Phone, [streetAddress] = @streetAddress, [city] = @city, [state] = @state WHERE [salesID] = @salesID">
        <DeleteParameters>
            <asp:Parameter Name="salesID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Phone" Type="Int32" />
            <asp:Parameter Name="streetAddress" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="salesID" QueryStringField="salesID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Phone" Type="Int32" />
            <asp:Parameter Name="streetAddress" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="salesID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

