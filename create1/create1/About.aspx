<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="create1.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FuelID" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="FuelID" HeaderText="FuelID" ReadOnly="True" SortExpression="FuelID" />
        <asp:BoundField DataField="FuelType" HeaderText="FuelType" SortExpression="FuelType" />
        <asp:BoundField DataField="FuelDensity" HeaderText="FuelDensity" SortExpression="FuelDensity" />
    </Columns>
</asp:GridView>
<hgroup>
</hgroup>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:toplivoConnectionString1 %>" DeleteCommand="DELETE FROM [Fuels] WHERE [FuelID] = @FuelID" InsertCommand="INSERT INTO [Fuels] ([FuelType], [FuelDensity]) VALUES (@FuelType, @FuelDensity)" ProviderName="<%$ ConnectionStrings:toplivoConnectionString1.ProviderName %>" SelectCommand="SELECT [FuelID], [FuelType], [FuelDensity] FROM [Fuels]" UpdateCommand="UPDATE [Fuels] SET [FuelType] = @FuelType, [FuelDensity] = @FuelDensity WHERE [FuelID] = @FuelID">
    <DeleteParameters>
        <asp:Parameter Name="FuelID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FuelType" Type="String" />
        <asp:Parameter Name="FuelDensity" Type="Single" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FuelType" Type="String" />
        <asp:Parameter Name="FuelDensity" Type="Single" />
        <asp:Parameter Name="FuelID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>