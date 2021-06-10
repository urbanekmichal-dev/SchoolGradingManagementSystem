using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class Strona_Usun : System.Web.UI.Page
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

        protected void Button_Usun_Click(object sender, EventArgs e)
        {
            Label_Zle.Visible = false;
            Label_Dobrze.Visible = false;
            

            if (TextBox_Login.Text!="")
            {

                    Label_pytanie.Visible = true;
                    Button_Nie.Visible = true;
                    Button_Tak.Visible = true;

            }
        }

        protected void Button_Nie_Click(object sender, EventArgs e)
        {
            Label_pytanie.Visible = false;
            Button_Nie.Visible = false;
            Button_Tak.Visible = false;
            TextBox_Login.Text = "";

        }

        protected void Button_Tak_Click(object sender, EventArgs e)
        {
            Label_pytanie.Visible = false;
            Button_Nie.Visible = false;
            Button_Tak.Visible = false;

            if(admin.Usuwanie(TextBox_Login.Text)==false)
            {
                Label_Zle.Visible = true;
                TextBox_Login.Text = "";
            }
            else
            {
                Label_Dobrze.Visible = true;
              
                TextBox_Login.Text = "";

            }

        }

        protected void Button_Wstecz_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_admin.aspx?log=" + login);
        }
    }









}