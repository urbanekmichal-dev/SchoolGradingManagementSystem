<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Dodaj.aspx.cs" Inherits="Dziennik.Strona_Dodaj" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%--%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Strona_Dodaj.aspx.cs" Inherits="Dziennik.Strona_Dodaj" %>--%>


        <p>
            &nbsp;</p>
        <div>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Wybierz użytkownika"></asp:Label>
        </p>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 1px; margin-top: 3px; margin-bottom: 4px" Width="100px" AutoPostBack="True">
            <asp:ListItem>Uczeń</asp:ListItem>
            <asp:ListItem>Nauczyciel</asp:ListItem>
            <asp:ListItem>Rodzic</asp:ListItem>
            <asp:ListItem>Dyrektor</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Imię"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_imie" runat="server" OnTextChanged="TextBox_imie_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Drugie imię"></asp:Label>
&nbsp; <asp:TextBox ID="TextBox_drugie_imie" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nazwisko"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_nazwisko" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Numer tel" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_numer_tel" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Login ucznia" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox_Login" runat="server" OnTextChanged="TextBox_Login_TextChanged" Visible="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Nieprawidłowe dane" Visible="False"></asp:Label>
        <br />
     <asp:Label ID="Label8" runat="server" Text="Dodanie powiodło się" Visible="False"></asp:Label>
     <br />
     <br />
        <asp:Button ID="Button_stworz" runat="server" OnClick="Button_stworz_Click" Text="Dodaj" Width="100px" />
   <br />
  <br />
    <asp:Button ID="Button_Wstecz" runat="server" OnClick="Button_Wstecz_Click" Text="Wstecz" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</asp:Content>