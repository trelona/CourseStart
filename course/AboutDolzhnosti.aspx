<%@ Page Title="AboutDolzhnosti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutDolzhnosti.aspx.cs" Inherits="course.AboutDolzhnosti" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Image ID="ImageDolzhnosti" runat="server" BorderStyle="Double" EnableTheming="True" ForeColor="Black" Height="200px" ImageUrl="http://www.kasparov.ru/content/materials/201305/519B1FFB7F9EE.jpg" Width="200px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Информацция о должностях, имеющихся в ресторане"></asp:Label>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="KodDolzhnosti" DataSourceID="SqlDataSource3" Height="50px" Width="280px">
        <Fields>
            <asp:BoundField DataField="KodDolzhnosti" HeaderText="Код должности: " InsertVisible="False" ReadOnly="True" SortExpression="KodDolzhnosti" />
            <asp:BoundField DataField="Naimenovanie" HeaderText="Наименование: " SortExpression="Naimenovanie" />
            <asp:BoundField DataField="Oklad" HeaderText="Оклад: " SortExpression="Oklad" />
            <asp:BoundField DataField="Obyazannosti" HeaderText="Обязанности: " SortExpression="Obyazannosti" />
            <asp:BoundField DataField="Trebovania" HeaderText="Требования: " SortExpression="Trebovania" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Введите название должности:"></asp:Label>
&nbsp;<asp:TextBox ID="textDolzhnosti" runat="server" Height="16px" Width="304px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Поиск" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCFF" DataKeyNames="KodDolzhnosti" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="278px" Width="947px">
        <AlternatingRowStyle BackColor="White" BorderStyle="Solid" />
        <Columns>
            <asp:ButtonField DataTextField="KodDolzhnosti" ButtonType="Button" CommandName="Select" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Naimenovanie" HeaderText="Наименование" SortExpression="Naimenovanie" />
            <asp:BoundField DataField="Oklad" HeaderText="Оклад" SortExpression="Oklad" />
            <asp:BoundField DataField="Obyazannosti" HeaderText="Обязанности" SortExpression="Obyazannosti" />
            <asp:BoundField DataField="Trebovania" HeaderText="Требования" SortExpression="Trebovania" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" DeleteCommand="DELETE FROM [Dolzhnosti] WHERE [KodDolzhnosti] = @KodDolzhnosti" InsertCommand="INSERT INTO [Dolzhnosti] ([Naimenovanie], [Oklad], [Obyazannosti], [Trebovania]) VALUES (@Naimenovanie, @Oklad, @Obyazannosti, @Trebovania)" SelectCommand="SELECT * FROM [Dolzhnosti]" UpdateCommand="UPDATE [Dolzhnosti] SET [Naimenovanie] = @Naimenovanie, [Oklad] = @Oklad, [Obyazannosti] = @Obyazannosti, [Trebovania] = @Trebovania WHERE [KodDolzhnosti] = @KodDolzhnosti">
        <DeleteParameters>
            <asp:Parameter Name="KodDolzhnosti" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Naimenovanie" Type="String" />
            <asp:Parameter Name="Oklad" Type="Decimal" />
            <asp:Parameter Name="Obyazannosti" Type="String" />
            <asp:Parameter Name="Trebovania" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Naimenovanie" Type="String" />
            <asp:Parameter Name="Oklad" Type="Decimal" />
            <asp:Parameter Name="Obyazannosti" Type="String" />
            <asp:Parameter Name="Trebovania" Type="String" />
            <asp:Parameter Name="KodDolzhnosti" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT * FROM [Dolzhnosti] WHERE ([KodDolzhnosti] = @KodDolzhnosti)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="KodDolzhnosti" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>