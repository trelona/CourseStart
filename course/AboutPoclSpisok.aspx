<%@ Page Title="AboutPoclSpisok" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutPoclSpisok.aspx.cs" Inherits="course.AboutPoclSpisok" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Image ID="ImagePoclSpisok" runat="server" BorderStyle="Double" EnableTheming="True" ForeColor="Black" Height="200px" ImageUrl="http://dubldoc.com/wp-content/uploads/2014/04/trudovaya.jpg" Width="200px" />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Послужной список каждого работника, работающего в ресторане."></asp:Label>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="KodPoslSpiska" DataSourceID="SqlDataSource3" Height="50px" Width="356px">
        <Fields>
            <asp:TemplateField HeaderText="Код послужного списка: " InsertVisible="False" SortExpression="KodPoslSpiska">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("KodPoslSpiska") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("KodPoslSpiska") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="KodSotrudnika" HeaderText="Код сотрудника: " SortExpression="KodSotrudnika" />
            <asp:BoundField DataField="KodDolzhnosti" HeaderText="Код должности: " SortExpression="KodDolzhnosti" />
            <asp:BoundField DataField="DataPriema" HeaderText="Дата приема: " SortExpression="DataPriema" />
            <asp:BoundField DataField="DataOsvobozhdenia" HeaderText="Дата освобождения: " SortExpression="DataOsvobozhdenia" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KodPoslSpiska" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Width="910px">
        <Columns>
            <asp:ButtonField DataTextField="KodPoslSpiska" ButtonType="Button" CommandName="Select" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="KodPoslSpiska" HeaderText="Код Списка" ReadOnly="True" SortExpression="KodPoslSpiska" />
            <asp:TemplateField HeaderText="Код Сотрудника" SortExpression="KodSotrudnika">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("KodSotrudnika") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="FIO" DataValueField="KodSotrudnika" Enabled="False" SelectedValue='<%# Bind("KodSotrudnika") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Код Должности" SortExpression="KodDolzhnosti">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Naimenovanie" DataValueField="KodDolzhnosti" SelectedValue='<%# Bind("KodDolzhnosti") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Naimenovanie" DataValueField="KodDolzhnosti" Enabled="False" SelectedValue='<%# Bind("KodDolzhnosti") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="DataPriema" HeaderText="Дата Приема" SortExpression="DataPriema" />
            <asp:BoundField DataField="DataOsvobozhdenia" HeaderText="Дата Освобождения" SortExpression="DataOsvobozhdenia" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT [KodDolzhnosti], [Naimenovanie] FROM [Dolzhnosti]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" DeleteCommand="DELETE FROM [PoclSpisok] WHERE [KodPoslSpiska] = @KodPoslSpiska" InsertCommand="INSERT INTO [PoclSpisok] ([KodSotrudnika], [KodDolzhnosti], [DataPriema], [DataOsvobozhdenia]) VALUES (@KodSotrudnika, @KodDolzhnosti, @DataPriema, @DataOsvobozhdenia)" ProviderName="<%$ ConnectionStrings:RestoranConnectionString1.ProviderName %>" SelectCommand="SELECT [KodPoslSpiska], [KodSotrudnika], [KodDolzhnosti], [DataPriema], [DataOsvobozhdenia] FROM [PoclSpisok]" UpdateCommand="UPDATE [PoclSpisok] SET [KodSotrudnika] = @KodSotrudnika, [KodDolzhnosti] = @KodDolzhnosti, [DataPriema] = @DataPriema, [DataOsvobozhdenia] = @DataOsvobozhdenia WHERE [KodPoslSpiska] = @KodPoslSpiska">
        <DeleteParameters>
            <asp:Parameter Name="KodPoslSpiska" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
            <asp:Parameter Name="KodDolzhnosti" Type="Int32" />
            <asp:Parameter Name="DataPriema" Type="DateTime" />
            <asp:Parameter Name="DataOsvobozhdenia" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KodSotrudnika" Type="Int32" />
            <asp:Parameter Name="KodDolzhnosti" Type="Int32" />
            <asp:Parameter Name="DataPriema" Type="DateTime" />
            <asp:Parameter Name="DataOsvobozhdenia" Type="DateTime" />
            <asp:Parameter Name="KodPoslSpiska" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT * FROM [PoclSpisok] WHERE ([KodPoslSpiska] = @KodPoslSpiska)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="KodPoslSpiska" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RestoranConnectionString1 %>" SelectCommand="SELECT [KodSotrudnika], [FIO] FROM [Sotrudniki]"></asp:SqlDataSource>
    </asp:Content>