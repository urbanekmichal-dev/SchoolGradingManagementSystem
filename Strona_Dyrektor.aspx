<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Dyrektor.aspx.cs" Inherits="Dziennik.Strona_Dyrektor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Button ID="Button1" runat="server" Height="76px" Text="Modyfikuj harmonogram" Width="220px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="76px" OnClick="Button2_Click" Text="Generuj raport klasy" Width="220px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="76px" Text="Przeglądaj plany nauczycieli" Width="220px" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="76px" Text="Przeglądanie komunikacji rodzica" Width="220px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="76px" Text="Wybór ucznia" Width="220px" />
        <br />
        <br />
    </div>
</asp:Content>
