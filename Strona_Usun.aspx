
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Usun.aspx.cs" Inherits="Dziennik.Strona_Usun" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<%--%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Strona_Dodaj.aspx.cs" Inherits="Dziennik.Strona_Dodaj" %>--%>


        <p>
            &nbsp;</p>
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_Nazw" runat="server" Text="Login użytkownika"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    <p>
        <asp:TextBox ID="TextBox_Login" runat="server"></asp:TextBox>
            </p>
&nbsp; 
        <br />
        <asp:Button ID="Button_Usun" runat="server" OnClick="Button_Usun_Click" Text="Usuń" />
    <br />
    <br />
&nbsp;<asp:Label ID="Label_pytanie" runat="server" Text="Jesteś pewien?" Visible="False"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button_Tak" runat="server" OnClick="Button_Tak_Click" Text="TAK" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button_Nie" runat="server" OnClick="Button_Nie_Click" Text=" NIE " Visible="False" />
        <br />
        <br />
    <asp:Button ID="Button_Wstecz" runat="server" OnClick="Button_Wstecz_Click" Text="Wstecz" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label_Dobrze" runat="server" Text="Usuwanie powiodło się" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label_Zle" runat="server" Text="Nie znaleziono użytkownika" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
     <br />
     <br />
   <br />
  <br />
    <br />
</asp:Content>