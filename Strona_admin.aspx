<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_admin.aspx.cs" Inherits="Dziennik.Strona_admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <div>
            <br />
        </div>
        <asp:Button ID="Button_C" runat="server" Height="76px" OnClick="Button1_Click" Text="Dodaj użytkownika" Width="200px" />
        <br />
        <br />
        <p>
            <asp:Button ID="Button_D" runat="server" Height="76px" OnClick="Button1_Click1" Text="Usuń użytkownika" Width="200px" />
        </p>
        <br />
        <asp:Button ID="Button_U" runat="server" Height="76px" OnClick="Button_U_Click" Text="Modyfikuj użytkownika" Width="200px" />
        <br />
        <br />
        <p>
            <asp:Button ID="Button_R" runat="server" Height="76px" OnClick="Button_R_Click" Text="Wyświetl liste użytkowników" Width="200px" />
        </p>
        <br />
        <br />
    </asp:Content>
