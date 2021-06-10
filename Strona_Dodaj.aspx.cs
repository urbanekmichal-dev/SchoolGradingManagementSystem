using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Dziennik
{
    public partial class Strona_Dodaj : System.Web.UI.Page
    {
        string login;
        Administrator admin;
        protected void Page_Load(object sender, EventArgs e)
        {
            admin = new Administrator();
            var mp = this.Master as SiteMaster;
            mp.WyswietlWylogujSie();

            if (!string.IsNullOrEmpty(Request.QueryString["log"]))
            {
                login = Request.QueryString["log"];
            }
            //Czyli jesli uztkownik o podanym loginie nie jest zalogowany to go wyrzuc 
            if (Logowanie.findByLogin(login) == false)
            {
                Response.Redirect("Default.aspx");
            }
            //Jesli uzytkownik jest zalogowany ale nie jest adminem
            else if (login[0] == 'U' || login[0] == 'R' || login[0] == 'N')
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Contains("Rodzic"))
            {
                Label5.Visible = true;
                TextBox_numer_tel.Visible = true;

                Label6.Visible = true;
                TextBox_Login.Visible = true;
            }
            else
            {
                Label5.Visible = false;
                TextBox_numer_tel.Visible = false;

                Label6.Visible = false ;
                TextBox_Login.Visible = false;
            }
          
        }

        protected void Button_stworz_Click(object sender, EventArgs e)
        {
            Label8.Visible = false;
            Label7.Visible = false;

            if (DropDownList1.SelectedValue.Contains("Rodzic"))
            {
                if (TextBox_imie.Text != "" && TextBox_drugie_imie.Text != "" && TextBox_nazwisko.Text != "" && TextBox_numer_tel.Text != "" && TextBox_Login.Text != "")
                {
                    string login;
                    string haslo;
                    login = "R_" + TextBox_imie.Text[0] + TextBox_imie.Text[1] + TextBox_nazwisko.Text[0] + TextBox_nazwisko.Text[1];
                    haslo = "" + TextBox_imie.Text[1] + TextBox_imie.Text[0] + TextBox_nazwisko.Text[1] + TextBox_nazwisko.Text[0];

                    if (admin.Dodawanie_R(TextBox_imie.Text, TextBox_drugie_imie.Text, TextBox_nazwisko.Text, login, haslo,TextBox_numer_tel.Text,TextBox_Login.Text ) == false)
                    {
                        Label7.Visible = true;
                    }
                    else
                    {
                        Label8.Visible = true;
                        TextBox_imie.Text = "";
                        TextBox_drugie_imie.Text = "";
                        TextBox_nazwisko.Text = "";
                        TextBox_numer_tel.Text = "";
                        TextBox_Login.Text = "";
                    }
                }
                else
                {
                    Label7.Visible = true;
                }
            }
            else 
            {
                if (TextBox_imie.Text != "" && TextBox_drugie_imie.Text != "" && TextBox_nazwisko.Text != "")
                {
                    string login;
                    string haslo;
                    string klasa = "brak";
                    int plan = 0;

                   if(DropDownList1.Text=="Uczeń")
                    {
                        login = "U_" + TextBox_imie.Text[0] + TextBox_imie.Text[1] + TextBox_nazwisko.Text[0] + TextBox_nazwisko.Text[1];
                        haslo =""+ TextBox_imie.Text[1] + TextBox_imie.Text[0] + TextBox_nazwisko.Text[1] + TextBox_nazwisko.Text[0];
                    }
                   else if (DropDownList1.Text == "Nauczyciel")
                    {
                        login = "N_" + TextBox_imie.Text[0] + TextBox_imie.Text[1] + TextBox_nazwisko.Text[0] + TextBox_nazwisko.Text[1];
                        haslo = "" + TextBox_imie.Text[1] + TextBox_imie.Text[0] + TextBox_nazwisko.Text[1] + TextBox_nazwisko.Text[0];
                    }                   
                    else if (DropDownList1.Text == "Dyrektor")
                    {
                        login = "D_" + TextBox_imie.Text[0] + TextBox_imie.Text[1] + TextBox_nazwisko.Text[0] + TextBox_nazwisko.Text[1];
                        haslo = "" + TextBox_imie.Text[1] + TextBox_imie.Text[0] + TextBox_nazwisko.Text[1] + TextBox_nazwisko.Text[0];
                    }
                   else 
                    {
                        login = "A_" + TextBox_imie.Text[0] + TextBox_imie.Text[1] + TextBox_nazwisko.Text[0] + TextBox_nazwisko.Text[1];
                        haslo = "" + TextBox_imie.Text[1] + TextBox_imie.Text[0] + TextBox_nazwisko.Text[1] + TextBox_nazwisko.Text[0];
                    }


                    if (admin.dodajUczenNauczycielDyrektor(TextBox_imie.Text, TextBox_drugie_imie.Text, TextBox_nazwisko.Text, login, haslo, plan, klasa)==false)
                    {
                        Label7.Visible = true;
                    }
                    else
                    {
                        Label8.Visible = true;
                        TextBox_imie.Text = "";
                        TextBox_drugie_imie.Text = "";
                        TextBox_nazwisko.Text = "";
                    }

                }
                else
                {
                    Label7.Visible = true;
                }
            }
        }

        protected void TextBox_imie_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_Login_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Wstecz_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_admin.aspx?log=" + login);
        }
    }
}