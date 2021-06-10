using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class Strona_admin : System.Web.UI.Page
    {
        string login;
        //
        //protected override void OnUnload(EventArgs e)
        //{
        //    base.OnUnload(e);
        //    var mp = this.Master as SiteMaster;
        //    mp.SchowajWylogujSie();
        //    Logowanie.WylogujUzytkownika(login);
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
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
            else if (login[0] == 'R' || login[0] == 'U' || login[0] == 'N' || login[0] == 'D')
            {
                Response.Redirect("Default.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_Dodaj.aspx?log=" + login);

        }
        //TODO: Zmienic nazwy przycsikow zeby nazwa odzwierciedlala to co robia
        protected void Button1_Click1(object sender, EventArgs e)//usuwanie użytkownika
        {
            Response.Redirect("Strona_Usun.aspx?log=" + login);
        }

        protected void Button_R_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_Wyswietl.aspx?log=" + login);

        }

        protected void Button_U_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_Modyfikuj.aspx?log=" + login);
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

        }
    }
}