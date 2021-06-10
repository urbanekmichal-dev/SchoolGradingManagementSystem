<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Modyfikuj.aspx.cs" Inherits="Dziennik.Strona_Modyfikuj" %>

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
        <br />
    <asp:Label ID="Label7" runat="server" Text="Login" Width="100px"></asp:Label>
    <asp:TextBox ID="TextBox_Login" runat="server" OnTextChanged="TextBox_Login_TextChanged"></asp:TextBox>
        <asp:Label ID="Label8_wymagane_pole" runat="server" ForeColor="#CC3300" Text="*Wymagane pole" Visible="False"></asp:Label>
    <br />
    <br />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Imię" Width="100px"></asp:Label>
            <asp:TextBox ID="TextBox_imie" runat="server" OnTextChanged="TextBox_imie_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Drugie imię" Width="100px"></asp:Label>
    <asp:TextBox ID="TextBox_drugie_imie" runat="server" OnTextChanged="TextBox_drugie_imie_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nazwisko" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox_nazwisko" runat="server" OnTextChanged="TextBox_nazwisko_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Numer tel" Visible="False" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox_numer_tel" runat="server" Visible="False" OnTextChanged="TextBox_numer_tel_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Login ucznia" Visible="False" Width="100px"></asp:Label>
    <asp:TextBox ID="TextBox_LoginU" runat="server" OnTextChanged="TextBox_Login_TextChanged" Visible="False"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label_Nie" runat="server" Text="Nieprawidłowe dane" Visible="False"></asp:Label>
        <br />
     <asp:Label ID="Label_Tak" runat="server" Text="Modyfikacja powiodła się" Visible="False"></asp:Label>
     <br />
     <br />
        <asp:Button ID="Button_Modyfikuj" runat="server" OnClick="Button_stworz_Click" Text="Modyfikuj" Width="100px" />
   <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <br />
    <asp:Button ID="Button_Wstecz" runat="server" OnClick="Button_Wstecz_Click" Text="Wstecz" Width="100px" />
    <br />
  <br />
    <br />
  <br />
    <br />
  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
</asp:Content>