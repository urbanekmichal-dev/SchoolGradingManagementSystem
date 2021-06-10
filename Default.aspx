<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dziennik._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div aria-expanded="true" aria-orientation="horizontal" aria-sort="none" style="height: 450px; width: 1050px; text-align: center;">

        <br />
        <br />
        <br />
        <br />
        <br />
        Zaloguj się do systemu:<br />
        <br />
        <asp:Label ID="Label_Login" runat="server" Text="Login"></asp:Label>
        <asp:TextBox ID="TextBox_Login" runat="server" MaxLength="20" autocomplete="on"></asp:TextBox> <%--  auto-uzupełnianie off--%>
        <br />
        <br />
        <asp:Label ID="Label_Haslo" runat="server" Text="Hasło"></asp:Label>
        <asp:TextBox ID="TextBox_Haslo" runat="server" CausesValidation="True" MaxLength="20" autocomplete="on" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>  <%--Usuniete TextMode=Password dla ułatwienia--%>
        <br />
        <br />
        <asp:Button ID="Button_ZalogujSie" runat="server" Text="Zaloguj się" OnClick="Button_ZalogujSie_Click1" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label_Test" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>

</asp:Content>
