<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strona_Wyswietl.aspx.cs" Inherits="Dziennik.Strona_Wyswietl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <asp:Button ID="Button_powrot" runat="server" OnClick="Button_powrot_Click" Text="Wstecz" />
        <br />
        <br />
<asp:ListView ID="ListView_uczen" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Ucz">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
            </td>
            <td>
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
            </td>
            <td>
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
            </td>
            <td>
                <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
            </td>
            <td>
                <asp:Label ID="Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Klasa_Nr_klasy") %>' />
            </td>
            <td>
                <asp:Label ID="ID_UczLabel" runat="server" Text='<%# Eval("ID_Ucz") %>' />
            </td>
            <td>
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
            </td>
            <td>
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
            </td>
            <td>
                <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
            </td>
            <td>
                <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
            </td>
            <td>
                <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            </td>
            <td>
                <asp:TextBox ID="Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Plan_zajec_Id_planu") %>' />
            </td>
            <td>
                <asp:TextBox ID="Klasa_Nr_klasyTextBox" runat="server" Text='<%# Bind("Klasa_Nr_klasy") %>' />
            </td>
            <td>
                <asp:Label ID="ID_UczLabel1" runat="server" Text='<%# Eval("ID_Ucz") %>' />
            </td>
            <td>
                <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
            </td>
            <td>
                <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>Nie zostały zwrócone żadne dane.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
            </td>
            <td>
                <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
            </td>
            <td>
                <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
            </td>
            <td>
                <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            </td>
            <td>
                <asp:TextBox ID="Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Plan_zajec_Id_planu") %>' />
            </td>
            <td>
                <asp:TextBox ID="Klasa_Nr_klasyTextBox" runat="server" Text='<%# Bind("Klasa_Nr_klasy") %>' />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
            </td>
            <td>
                <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
            </td>
            <td>
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
            </td>
            <td>
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
            </td>
            <td>
                <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
            </td>
            <td>
                <asp:Label ID="Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Klasa_Nr_klasy") %>' />
            </td>
            <td>
                <asp:Label ID="ID_UczLabel" runat="server" Text='<%# Eval("ID_Ucz") %>' />
            </td>
            <td>
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
            </td>
            <td>
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">Imie</th>
                            <th runat="server">Nazwisko</th>
                            <th runat="server">Login</th>
                            <th runat="server">Plan_zajec_Id_planu</th>
                            <th runat="server">Klasa_Nr_klasy</th>
                            <th runat="server">ID_Ucz</th>
                            <th runat="server">Drugie_imie</th>
                            <th runat="server">Haslo</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
            </td>
            <td>
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
            </td>
            <td>
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
            </td>
            <td>
                <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
            </td>
            <td>
                <asp:Label ID="Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Klasa_Nr_klasy") %>' />
            </td>
            <td>
                <asp:Label ID="ID_UczLabel" runat="server" Text='<%# Eval("ID_Ucz") %>' />
            </td>
            <td>
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
            </td>
            <td>
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
        <asp:ListView ID="ListView_rodzic" runat="server" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nr_telLabel" runat="server" Text='<%# Eval("Nr_tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_LoginLabel" runat="server" Text='<%# Eval("Uczen_Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Uczen_Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Uczen_Klasa_Nr_klasy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nr_telTextBox" runat="server" Text='<%# Bind("Nr_tel") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_LoginTextBox" runat="server" Text='<%# Bind("Uczen_Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Uczen_Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_Klasa_Nr_klasyTextBox" runat="server" Text='<%# Bind("Uczen_Klasa_Nr_klasy") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nie zostały zwrócone żadne dane.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Nr_telTextBox" runat="server" Text='<%# Bind("Nr_tel") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_LoginTextBox" runat="server" Text='<%# Bind("Uczen_Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Uczen_Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Uczen_Klasa_Nr_klasyTextBox" runat="server" Text='<%# Bind("Uczen_Klasa_Nr_klasy") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nr_telLabel" runat="server" Text='<%# Eval("Nr_tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_LoginLabel" runat="server" Text='<%# Eval("Uczen_Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Uczen_Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Uczen_Klasa_Nr_klasy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Imie</th>
                                    <th runat="server">Nazwisko</th>
                                    <th runat="server">Login</th>
                                    <th runat="server">Nr_tel</th>
                                    <th runat="server">Uczen_Login</th>
                                    <th runat="server">Uczen_Plan_zajec_Id_planu</th>
                                    <th runat="server">Uczen_Klasa_Nr_klasy</th>
                                    <th runat="server">Drugie_imie</th>
                                    <th runat="server">Haslo</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Nr_telLabel" runat="server" Text='<%# Eval("Nr_tel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_LoginLabel" runat="server" Text='<%# Eval("Uczen_Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Uczen_Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Uczen_Klasa_Nr_klasyLabel" runat="server" Text='<%# Eval("Uczen_Klasa_Nr_klasy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ListView ID="ListView_nauczyciel" runat="server" DataKeyNames="ID_Nauczyciel" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NauczycielLabel" runat="server" Text='<%# Eval("ID_Nauczyciel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NauczycielLabel1" runat="server" Text='<%# Eval("ID_Nauczyciel") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nie zostały zwrócone żadne dane.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Plan_zajec_Id_planuTextBox" runat="server" Text='<%# Bind("Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NauczycielLabel" runat="server" Text='<%# Eval("ID_Nauczyciel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Imie</th>
                                    <th runat="server">Nazwisko</th>
                                    <th runat="server">Login</th>
                                    <th runat="server">Haslo</th>
                                    <th runat="server">Plan_zajec_Id_planu</th>
                                    <th runat="server">ID_Nauczyciel</th>
                                    <th runat="server">Drugie_imie</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Plan_zajec_Id_planuLabel" runat="server" Text='<%# Eval("Plan_zajec_Id_planu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NauczycielLabel" runat="server" Text='<%# Eval("ID_Nauczyciel") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ListView ID="ListView_dyrektor" runat="server" DataSourceID="SqlDataSource4">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">Imie:
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                <br />
                Nazwisko:
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                <br />
                Drugie_imie:
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                <br />
                Login:
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                <br />
                Haslo:
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
<br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">Imie:
                <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                <br />
                Nazwisko:
                <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                <br />
                Drugie_imie:
                <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                <br />
                Login:
                <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                <br />
                Haslo:
                <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>Nie zostały zwrócone żadne dane.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Imie:
                <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                <br />Nazwisko:
                <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                <br />Drugie_imie:
                <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                <br />Login:
                <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                <br />Haslo:
                <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">Imie:
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                <br />
                Nazwisko:
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                <br />
                Drugie_imie:
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                <br />
                Login:
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                <br />
                Haslo:
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
<br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Imie:
                <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                <br />
                Nazwisko:
                <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                <br />
                Drugie_imie:
                <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                <br />
                Login:
                <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                <br />
                Haslo:
                <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
<br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ListView ID="ListView_administrator" runat="server" DataSourceID="SqlDataSource5">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aktualizuj" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Anuluj" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nie zostały zwrócone żadne dane.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Wstaw" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Wyczyść" />
                    </td>
                    <td>
                        <asp:TextBox ID="ImieTextBox" runat="server" Text='<%# Bind("Imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NazwiskoTextBox" runat="server" Text='<%# Bind("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Drugie_imieTextBox" runat="server" Text='<%# Bind("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HasloTextBox" runat="server" Text='<%# Bind("Haslo") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Imie</th>
                                    <th runat="server">Nazwisko</th>
                                    <th runat="server">Drugie_imie</th>
                                    <th runat="server">Login</th>
                                    <th runat="server">Haslo</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ImieLabel" runat="server" Text='<%# Eval("Imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NazwiskoLabel" runat="server" Text='<%# Eval("Nazwisko") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Drugie_imieLabel" runat="server" Text='<%# Eval("Drugie_imie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HasloLabel" runat="server" Text='<%# Eval("Haslo") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Dziennik_dbConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Drugie_imie], [Login], [Haslo] FROM [Administrator]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dziennik_dbConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Login], [Plan_zajec_Id_planu], [Klasa_Nr_klasy], [ID_Ucz], [Drugie_imie], [Haslo] FROM [Uczen] ORDER BY [Klasa_Nr_klasy], [Nazwisko], [Imie]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Dziennik_dbConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Login], [Nr_tel], [Uczen_Login], [Uczen_Plan_zajec_Id_planu], [Uczen_Klasa_Nr_klasy], [Drugie_imie], [Haslo] FROM [Rodzic] ORDER BY [Nazwisko], [Imie], [Login]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Dziennik_dbConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Login], [Haslo], [Plan_zajec_Id_planu], [ID_Nauczyciel], [Drugie_imie] FROM [Nauczyciel] ORDER BY [Nazwisko], [Imie], [ID_Nauczyciel]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Dziennik_dbConnectionString %>" SelectCommand="SELECT [Imie], [Nazwisko], [Drugie_imie], [Login], [Haslo] FROM [Dyrektor] ORDER BY [Nazwisko], [Imie], [Drugie_imie]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 1px; margin-top: 3px; margin-bottom: 4px" Width="130px" AutoPostBack="True">
            <asp:ListItem>Uczeń</asp:ListItem>
            <asp:ListItem>Nauczyciel</asp:ListItem>
            <asp:ListItem>Rodzic</asp:ListItem>
            <asp:ListItem>Dyrektor</asp:ListItem>
            <asp:ListItem>Administrator</asp:ListItem>
        </asp:DropDownList>
    </div>
</asp:Content>