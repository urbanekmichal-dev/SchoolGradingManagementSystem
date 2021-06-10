using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class SiteMaster : MasterPage
    {
        protected string login;
        protected string loginLabel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["log"]))
            {
                login = Request.QueryString["log"];
                loginLabel = "Zalogowano jako: " + login;
            }
        }
        public void WyswietlWylogujSie()
        {
             this.Button_wyloguj.Visible = true;
        }
        public void SchowajWylogujSie()
        {
            this.Button_wyloguj.Visible = false;
        }
        public void WylogujSie(object sender, EventArgs e)
        {
            Logowanie.WylogujUzytkownika(login);
            this.WyswietlWylogujSie();
            Response.Redirect("default.aspx");
        }

    }
}