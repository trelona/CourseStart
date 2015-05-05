<%@ Page Title="Map" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="course.Map" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:TreeView ID="TreeView1" runat="server">
        <Nodes>
            <asp:TreeNode NavigateUrl="~/Account/Manage.aspx" Text="Авторизация" Value="Авторизация">
                <asp:TreeNode NavigateUrl="~/Account/Register.aspx" Text="Регистрация" Value="Регистрация"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Account/Login.aspx" Text="Вход" Value="Вход"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Default.aspx" Text="Главная" Value="Главная">
                <asp:TreeNode Text="Информация о заказах" Value="Информация о заказах" NavigateUrl="~/AboutZakaz.aspx">
                    <asp:TreeNode NavigateUrl="~/AboutZakaz.aspx" Text="Заказ" Value="Заказ"></asp:TreeNode>
                    <asp:TreeNode Text="Заказчик" Value="Заказчик" NavigateUrl="~/AboutZakazchik.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Список заказа" Value="Список заказа" NavigateUrl="~/AboutSpisokZakaza.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Информация о блюдах" Value="Информация о блюдах" NavigateUrl="~/AboutMenu.aspx">
                    <asp:TreeNode NavigateUrl="~/AboutMenu.aspx" Text="Меню" Value="Меню"></asp:TreeNode>
                    <asp:TreeNode Text="Состав блюда" Value="Состав блюда" NavigateUrl="~/AboutSostavBluda.aspx"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/AboutIngridienty.aspx" Text="Ингредиенты" Value="Ингредиенты"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Информация о работниках" Value="Информация о работниках" NavigateUrl="~/AboutSotrudniki.aspx">
                    <asp:TreeNode Text="Сотрудники" Value="Сотрудники" NavigateUrl="~/AboutSotrudniki.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Послужной список" Value="Послужной список" NavigateUrl="~/AboutPoclSpisok.aspx"></asp:TreeNode>
                    <asp:TreeNode Text="Должности" Value="Должности" NavigateUrl="~/AboutDolzhnosti.aspx"></asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Map.aspx" Text="Карта сайта" Value="Карта сайта"></asp:TreeNode>
        </Nodes>
    </asp:TreeView>
    </asp:Content>