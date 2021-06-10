<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Rodzic.aspx.cs" Inherits="Dziennik.Strona_Rodzic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Button ID="Button1" runat="server" Height="76px" Text="Przeglądanie ocen" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="76px" OnClick="Button2_Click" Text="Przeglądanie uwag" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="76px" Text="Przeglądanie obecności" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="76px" Text="Plan zajęć" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="76px" Text="Harmonogram" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" Height="76px" Text="Wyślij wiadomość" Width="205px" />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" Height="76px" OnClick="Button7_Click" Text="Przeglądaj wiadomości dziecka" Width="205px" />
        <br />
        <br />
    </div>
</asp:Content>
