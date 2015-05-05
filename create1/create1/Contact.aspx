<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="create1.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <section class="contact">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TankID" DataSourceID="SqlDataSource2" EmptyDataText="Нет записей для отображения.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="TankID" HeaderText="TankID" ReadOnly="True" SortExpression="TankID" />
                <asp:BoundField DataField="TankType" HeaderText="TankType" SortExpression="TankType" />
                <asp:BoundField DataField="TankVolume" HeaderText="TankVolume" SortExpression="TankVolume" />
                <asp:BoundField DataField="TankWeight" HeaderText="TankWeight" SortExpression="TankWeight" />
                <asp:BoundField DataField="TankMaterial" HeaderText="TankMaterial" SortExpression="TankMaterial" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:toplivoConnectionString2 %>" DeleteCommand="DELETE FROM [Tanks] WHERE [TankID] = @TankID" InsertCommand="INSERT INTO [Tanks] ([TankType], [TankVolume], [TankWeight], [TankMaterial]) VALUES (@TankType, @TankVolume, @TankWeight, @TankMaterial)" ProviderName="<%$ ConnectionStrings:toplivoConnectionString2.ProviderName %>" SelectCommand="SELECT [TankID], [TankType], [TankVolume], [TankWeight], [TankMaterial] FROM [Tanks]" UpdateCommand="UPDATE [Tanks] SET [TankType] = @TankType, [TankVolume] = @TankVolume, [TankWeight] = @TankWeight, [TankMaterial] = @TankMaterial WHERE [TankID] = @TankID">
            <DeleteParameters>
                <asp:Parameter Name="TankID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TankType" Type="String" />
                <asp:Parameter Name="TankVolume" Type="Single" />
                <asp:Parameter Name="TankWeight" Type="Single" />
                <asp:Parameter Name="TankMaterial" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TankType" Type="String" />
                <asp:Parameter Name="TankVolume" Type="Single" />
                <asp:Parameter Name="TankWeight" Type="Single" />
                <asp:Parameter Name="TankMaterial" Type="String" />
                <asp:Parameter Name="TankID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:toplivoConnectionString1 %>" DeleteCommand="DELETE FROM [Tanks] WHERE [TankID] = @TankID" InsertCommand="INSERT INTO [Tanks] ([TankType], [TankVolume], [TankWeight], [TankMaterial]) VALUES (@TankType, @TankVolume, @TankWeight, @TankMaterial)" ProviderName="<%$ ConnectionStrings:toplivoConnectionString1.ProviderName %>" SelectCommand="SELECT [TankID], [TankType], [TankVolume], [TankWeight], [TankMaterial] FROM [Tanks]" UpdateCommand="UPDATE [Tanks] SET [TankType] = @TankType, [TankVolume] = @TankVolume, [TankWeight] = @TankWeight, [TankMaterial] = @TankMaterial WHERE [TankID] = @TankID">
            <DeleteParameters>
                <asp:Parameter Name="TankID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TankType" Type="String" />
                <asp:Parameter Name="TankVolume" Type="Single" />
                <asp:Parameter Name="TankWeight" Type="Single" />
                <asp:Parameter Name="TankMaterial" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TankType" Type="String" />
                <asp:Parameter Name="TankVolume" Type="Single" />
                <asp:Parameter Name="TankWeight" Type="Single" />
                <asp:Parameter Name="TankMaterial" Type="String" />
                <asp:Parameter Name="TankID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </section>

    </asp:Content>