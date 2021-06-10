using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class Strona_Uczen : System.Web.UI.Page
    {
        string login;
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
            else if (login[0] == 'A' || login[0] == 'R' || login[0] == 'N' || login[0] == 'D')
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("http://db.zmitac.aei.polsl.pl/");
        }
    }
}