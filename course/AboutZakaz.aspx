<%@ Page Title="AboutZakaz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutZakaz.aspx.cs" Inherits="course.AboutZakaz" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Image ID="ImageZakaz" runat="server" BorderStyle="Double" EnableTheming="True" ForeColor="Black" Height="200px" ImageUrl="http://www.fortex-rostov.ru/sites/default/files/styles/product_1000/public/1.jpg?itok=bFJc8qKN" Width="200px" />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Информация о заказах, сделанных в ресторане."></asp:Label>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="KodZakaza" DataSourceID="SqlDataSource2" Height="50px" Width="431px">
        <Fields>
            <asp:BoundField DataField="KodZakaza" HeaderText="Код заказа: " InsertVisible="False" ReadOnly="True" SortExpression="KodZakaza" />
            <asp:BoundField DataField="KodSotrudnika" HeaderText="Код сотрудника: " SortExpression="KodSotrudnika" />
            <asp:BoundField DataField="KodZakazchika" HeaderText="Код заказчика: " SortExpression="KodZakazchika" />
            <asp:BoundField DataField="DataZ" HeaderText="Дата заказа: " SortExpression="DataZ" />
            <asp:BoundField DataField="VremyaZ" HeaderText="Время заказа: " SortExpression="VremyaZ" />
            <asp:BoundField DataField="StoimostZ" HeaderText="Стоимость заказа: " SortExpression="StoimostZ" />
            <asp:BoundField DataField="CposobOplaty" HeaderText="Способ оплаты: " SortExpression="CposobOplaty" />
            <asp:BoundField DataField="Otmetka" HeaderText="Отметка о выполнении: " SortExpression="Otmetka" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KodZakaza" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Width="1272px" BackColor="#CCCCFF" Height="278px">
        <Columns>
            <asp:ButtonField DataTextField="KodZakaza" ButtonType="Button" CommandName="Select" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="KodZakaza" HeaderText="Код Заказа" ReadOnly="True" SortExpression="KodZakaza" />
            <asp:TemplateField HeaderText="Код Сотрудника" SortExpression="KodSotrudnika">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("KodSotrudnika") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="FIO" DataValueField="KodSotrudnika" Enabled="False" SelectedValue='<%# Bind("KodSotrudnika") %>' Width="100px">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Код Заказчика" SortExpression="KodZakazchika">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("KodZakazchika") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="FIOZ" DataValueField="KodZakazchika" Enabled="False" Width="100px" SelectedValue='<%# Bind("KodZakazchika") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="DataZ" HeaderText="Дата Заказа" SortExpression="DataZ" />
            <asp:BoundField DataField="VremyaZ" HeaderText="Время Заказа" SortExpression="VremyaZ" />
            <asp:BoundField DataField="StoimostZ" HeaderText="Стоимость Заказа" SortExpression="StoimostZ" />
            <asp:BoundField DataField="CposobOplaty" HeaderText="Способ Оплаты" SortExpression="CposobOplaty" />
            <asp:BoundField DataField="Otmetka" HeaderText="Отметка о Выполнении" SortExpression="Otmetka" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" DeleteCommand="DELETE FROM [Zakaz] WHERE [KodZakaza] = @KodZakaza" InsertCommand="INSERT INTO [Zakaz] ([KodSotrudnika], [KodZakazchika], [DataZ], [VremyaZ], [StoimostZ], [CposobOplaty], [Otmetka]) VALUES (@KodSotrudnika, @KodZakazchika, @DataZ, @VremyaZ, @StoimostZ, @CposobOplaty, @Otmetka)" ProviderName="<%$ ConnectionStrings:RestoranConnectionString1.ProviderName %>" SelectCommand="SELECT [KodZakaza], [KodSotrudnika], [KodZakazchika], [DataZ], [VremyaZ], [StoimostZ], [CposobOplaty], [Otmetka] FROM [Zakaz]" UpdateCommand="UPDATE [Zakaz] SET [KodSotrudnika] = @KodSotrudnika, [KodZakazchika] = @KodZakazchika, [DataZ] = @DataZ, [VremyaZ] = @VremyaZ, [StoimostZ] = @StoimostZ, [CposobOplaty] = @CposobOplaty, [Otmetka] = @Otmetka WHERE [KodZakaza] = @KodZakaza">
        <DeleteParameters>
            <asp:Parameter Name="KodZakaza" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
            <asp:Parameter Name="KodZakazchika" Type="Int32" />
            <asp:Parameter Name="DataZ" Type="DateTime" />
            <asp:Parameter Name="VremyaZ" Type="DateTime" />
            <asp:Parameter Name="StoimostZ" Type="Decimal" />
            <asp:Parameter Name="CposobOplaty" Type="String" />
            <asp:Parameter Name="Otmetka" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
            <asp:Parameter Name="KodZakazchika" Type="Int32" />
            <asp:Parameter Name="DataZ" Type="DateTime" />
            <asp:Parameter Name="VremyaZ" Type="DateTime" />
            <asp:Parameter Name="StoimostZ" Type="Decimal" />
            <asp:Parameter Name="CposobOplaty" Type="String" />
            <asp:Parameter Name="Otmetka" Type="String" />
            <asp:Parameter Name="KodZakaza" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT * FROM [Zakaz] WHERE ([KodZakaza] = @KodZakaza)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="KodZakaza" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT [KodSotrudnika], [FIO] FROM [Sotrudniki]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT [KodZakazchika], [FIOZ] FROM [Zakazchik]"></asp:SqlDataSource>
    </asp:Content>