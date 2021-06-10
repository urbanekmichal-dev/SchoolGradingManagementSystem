using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class Strona_Modyfikuj : System.Web.UI.Page
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

            Label_Nie.Visible = false;
            Label_Tak.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.Contains("Rodzic"))
            {
                Label5.Visible = true;
                TextBox_numer_tel.Visible = true;

                Label6.Visible = true;
                TextBox_LoginU.Visible = true;
            }
            else
            {
                Label5.Visible = false;
                TextBox_numer_tel.Visible = false;

                Label6.Visible = false;
                TextBox_LoginU.Visible = false;
            }
        }

        protected void Button_stworz_Click(object sender, EventArgs e)
        {
            Label_Nie.Visible = false;
            Label_Tak.Visible = false;
            Label8_wymagane_pole.Visible = false;

            if (TextBox_imie.Text == "" && TextBox_drugie_imie.Text == "" && TextBox_nazwisko.Text == "" && TextBox_numer_tel.Text == "" && TextBox_LoginU.Text == "")
            {
                if (TextBox_Login.Text == "") Label8_wymagane_pole.Visible = true;
                return;
            }

            if (DropDownList1.SelectedValue.Contains("Rodzic"))
            {
                if (TextBox_Login.Text != "")
                {
                    if (admin.Modyfikuj(TextBox_imie.Text, TextBox_drugie_imie.Text, TextBox_nazwisko.Text, TextBox_Login.Text, DropDownList1.SelectedValue,TextBox_numer_tel.Text, TextBox_LoginU.Text) == false)
                    {
                        Label_Nie.Visible = true;
                    }
                    else
                    {
                        Label_Tak.Visible = true;
                        TextBox_imie.Text = "";
                        TextBox_drugie_imie.Text = "";
                        TextBox_nazwisko.Text = "";
                        TextBox_numer_tel.Text = "";
                        TextBox_LoginU.Text = "";
                        TextBox_Login.Text = "";
                    }

                }
                else
                {
                    Label8_wymagane_pole.Visible = true;
                    //Label_Nie.Visible = true;

                }

            }
            else
            {
                if (TextBox_Login.Text!="")
                {
                    if (admin.Modyfikuj(TextBox_imie.Text, TextBox_drugie_imie.Text, TextBox_nazwisko.Text, TextBox_Login.Text, DropDownList1.SelectedValue, TextBox_numer_tel.Text, TextBox_LoginU.Text) == false)
                    {
                        Label_Nie.Visible = true;

                    }
                    else
                    {
                        Label_Tak.Visible = true;
                        TextBox_imie.Text = "";
                        TextBox_drugie_imie.Text = "";
                        TextBox_nazwisko.Text = "";
                        TextBox_Login.Text = "";
                    }

                }
                else
                {
                    Label8_wymagane_pole.Visible = true;
                    //Label_Nie.Visible = true;

                }

            }
        }
        protected void Button_Wstecz_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_admin.aspx?log=" + login);
        }

        protected void TextBox_imie_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_drugie_imie_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_nazwisko_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_Login_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_numer_tel_TextChanged(object sender, EventArgs e)
        {

        }
    }

        
    
}