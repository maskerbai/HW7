<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="cardetails.aspx.vb" Inherits="Sales_cardetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="carID" DataSourceID="SqlDataSource1" Height="50px" Width="241px">
        <Fields>
            <asp:BoundField DataField="carName" HeaderText="Car Name" SortExpression="carName" />
            <asp:BoundField DataField="carMaker" HeaderText="Maker" SortExpression="carMaker" />
            <asp:BoundField DataField="carColor" HeaderText="Color" SortExpression="carColor" />
            <asp:BoundField DataField="carYear" HeaderText="Year" SortExpression="carYear" />
            <asp:BoundField DataField="carMiles" HeaderText="Miles" SortExpression="carMiles" />
            <asp:BoundField DataField="carPrize" HeaderText="Prize" SortExpression="carPrize" />
            <asp:BoundField DataField="preOwner" HeaderText="Pre-Owner " SortExpression="preOwner" />
            <asp:BoundField DataField="transmission" HeaderText="Transmission" SortExpression="transmission" />
            <asp:BoundField DataField="bodyStyle" HeaderText="BodyStyle" SortExpression="bodyStyle" />
            <asp:CommandField ButtonType="Button" InsertText="New Record" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cars %>" SelectCommand="SELECT * FROM [cars] WHERE ([carID] = @carID)" DeleteCommand="DELETE FROM [cars] WHERE [carID] = @carID" InsertCommand="INSERT INTO [cars] ([carName], [carColor], [carMaker], [carYear], [carMiles], [carPrize], [preOwner], [transmission], [bodyStyle], [description]) VALUES (@carName, @carColor, @carMaker, @carYear, @carMiles, @carPrize, @preOwner, @transmission, @bodyStyle, @description)" UpdateCommand="UPDATE [cars] SET [carName] = @carName, [carColor] = @carColor, [carMaker] = @carMaker, [carYear] = @carYear, [carMiles] = @carMiles, [carPrize] = @carPrize, [preOwner] = @preOwner, [transmission] = @transmission, [bodyStyle] = @bodyStyle, [description] = @description WHERE [carID] = @carID">
        <DeleteParameters>
            <asp:Parameter Name="carID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="carName" Type="String" />
            <asp:Parameter Name="carColor" Type="String" />
            <asp:Parameter Name="carMaker" Type="String" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carMiles" Type="Int32" />
            <asp:Parameter Name="carPrize" Type="Int32" />
            <asp:Parameter Name="preOwner" Type="String" />
            <asp:Parameter Name="transmission" Type="String" />
            <asp:Parameter Name="bodyStyle" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="carID" QueryStringField="carID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="carName" Type="String" />
            <asp:Parameter Name="carColor" Type="String" />
            <asp:Parameter Name="carMaker" Type="String" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carMiles" Type="Int32" />
            <asp:Parameter Name="carPrize" Type="Int32" />
            <asp:Parameter Name="preOwner" Type="String" />
            <asp:Parameter Name="transmission" Type="String" />
            <asp:Parameter Name="bodyStyle" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="carID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

