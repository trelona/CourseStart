<%@ Page Title="AboutSotrudniki" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutSotrudniki.aspx.cs" Inherits="course.AboutSotrudniki" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Image ID="ImageSotrudniki" runat="server" BorderStyle="Double" EnableTheming="True" ForeColor="Black" Height="200px" ImageUrl="http://sled.net.ua/sites/default/files/%D0%BE%D1%84%D0%B8%D1%86%D0%B8%D0%B0%D0%BD%D1%82%202.jpg" Width="200px" />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Информация о сотрудниках, работающих в ресторане."></asp:Label>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="KodSotrudnika" DataSourceID="SqlDataSource2" Height="50px" Width="391px">
        <Fields>
            <asp:TemplateField HeaderText="Код сотрудника: " InsertVisible="False" SortExpression="KodSotrudnika">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("KodSotrudnika") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("KodSotrudnika") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="FIO" HeaderText="ФИО: " SortExpression="FIO" />
            <asp:BoundField DataField="DataRozhdenia" HeaderText="Дата рождения: " SortExpression="DataRozhdenia" />
            <asp:BoundField DataField="Pol" HeaderText="Пол: " SortExpression="Pol" />
            <asp:BoundField DataField="Adres" HeaderText="Адрес: " SortExpression="Adres" />
            <asp:BoundField DataField="Telefon" HeaderText="Телефон: " SortExpression="Telefon" />
            <asp:BoundField DataField="Pasport" HeaderText="Паспорт: " SortExpression="Pasport" />
            <asp:BoundField DataField="Obrazovanie" HeaderText="Образование: " SortExpression="Obrazovanie" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KodSotrudnika" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Width="910px">
        <Columns>
            <asp:ButtonField DataTextField="KodSotrudnika" ButtonType="Button" CommandName="Select" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="KodSotrudnika" HeaderText="Код Сотрудника" ReadOnly="True" SortExpression="KodSotrudnika" />
            <asp:BoundField DataField="FIO" HeaderText="ФИО" SortExpression="FIO" />
            <asp:BoundField DataField="DataRozhdenia" HeaderText="Дата Рождения" SortExpression="DataRozhdenia" />
            <asp:BoundField DataField="Pol" HeaderText="Пол" SortExpression="Pol" />
            <asp:BoundField DataField="Adres" HeaderText="Адрес" SortExpression="Adres" />
            <asp:BoundField DataField="Telefon" HeaderText="Телефон" SortExpression="Telefon" />
            <asp:BoundField DataField="Pasport" HeaderText="Паспорт" SortExpression="Pasport" />
            <asp:BoundField DataField="Obrazovanie" HeaderText="Образование" SortExpression="Obrazovanie" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" DeleteCommand="DELETE FROM [Sotrudniki] WHERE [KodSotrudnika] = @KodSotrudnika" InsertCommand="INSERT INTO [Sotrudniki] ([FIO], [DataRozhdenia], [Pol], [Adres], [Telefon], [Pasport], [Obrazovanie]) VALUES (@FIO, @DataRozhdenia, @Pol, @Adres, @Telefon, @Pasport, @Obrazovanie)" ProviderName="<%$ ConnectionStrings:RestoranConnectionString1.ProviderName %>" SelectCommand="SELECT [KodSotrudnika], [FIO], [DataRozhdenia], [Pol], [Adres], [Telefon], [Pasport], [Obrazovanie] FROM [Sotrudniki]" UpdateCommand="UPDATE [Sotrudniki] SET [FIO] = @FIO, [DataRozhdenia] = @DataRozhdenia, [Pol] = @Pol, [Adres] = @Adres, [Telefon] = @Telefon, [Pasport] = @Pasport, [Obrazovanie] = @Obrazovanie WHERE [KodSotrudnika] = @KodSotrudnika">
        <DeleteParameters>
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FIO" Type="String" />
            <asp:Parameter Name="DataRozhdenia" Type="DateTime" />
            <asp:Parameter Name="Pol" Type="String" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Telefon" Type="Int32" />
            <asp:Parameter Name="Pasport" Type="String" />
            <asp:Parameter Name="Obrazovanie" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FIO" Type="String" />
            <asp:Parameter Name="DataRozhdenia" Type="DateTime" />
            <asp:Parameter Name="Pol" Type="String" />
            <asp:Parameter Name="Adres" Type="String" />
            <asp:Parameter Name="Telefon" Type="Int32" />
            <asp:Parameter Name="Pasport" Type="String" />
            <asp:Parameter Name="Obrazovanie" Type="String" />
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT * FROM [Sotrudniki] WHERE ([KodSotrudnika] = @KodSotrudnika)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="KodSotrudnika" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>