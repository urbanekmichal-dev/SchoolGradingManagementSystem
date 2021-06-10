using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dziennik;
using System.Text;
using System.Web.Routing;
using System.Numerics;
using Microsoft.Ajax.Utilities;

namespace Dziennik
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_ZalogujSie_Click1(object sender, EventArgs e)
        {
            string log, has;
            log = TextBox_Login.Text;
            has = TextBox_Haslo.Text;
            if (BD_Connector.Logowanie(log, has) == false)
            {
                this.Label_Test.Text = "Niepoprawny login lub hasło";
            }
            else
            {
                //jesli uzytkownik nie jest zalogowany w bazie to go tam dodaj
                if (BD_Connector.SprawdzWBazieCzyZalogowany(log) == 0)
                {
                    Logowanie.ZalogujUzytkownika(log);
                }
                //jesli uzytkownik jest zalogowany w bazie to po prostu przekieruj go na wlasciwa strone
                else
                {
                    if (Logowanie.findByLogin(log) == false)
                        Logowanie.lista_zal.Add(new ZalogowanyUzytkownik(log, BD_Connector.SprawdzWBazieCzyZalogowany(log)));
                }
                if (log[0] == 'A')
                    //Bardzo wazne ze login musi byc caly czas przekazywany dalej az do wylogowania!
                    Response.Redirect("Strona_admin.aspx?log=" + log);
                else if (log[0] == 'U')
                    Response.Redirect("Strona_Uczen.aspx?log=" + log);//TaODO: Dodaj redirect dla strony ucznia
                else if (log[0] == 'R')
                    Response.Redirect("Strona_Rodzic.aspx?log=" + log);//TaODO: Dodaj redirect dla strony rodzica
                else if (log[0] == 'D')
                    Response.Redirect("Strona_Dyrektor.aspx?log=" + log);//TaODO: Dodaj redirect dla strony Dyrektora
                else if (log[0] == 'N') Response.Redirect("Strona_Nauczyciel.aspx?log=" + log);
            }
        }
    }
}



