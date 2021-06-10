using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public partial class Strona_Wyswietl : System.Web.UI.Page
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
            else if (login[0] == 'U' || login[0] == 'R' || login[0] == 'N')
            {
                Response.Redirect("Default.aspx");
            }
            ListView_rodzic.Visible = false;
            ListView_uczen.Visible = true;
            ListView_administrator.Visible = false;
            ListView_dyrektor.Visible = false;
            ListView_nauczyciel.Visible = false;

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView_rodzic.Visible = false;
            ListView_uczen.Visible = false;
            ListView_administrator.Visible = false;
            ListView_dyrektor.Visible = false;
            ListView_nauczyciel.Visible = false;

            if (DropDownList1.SelectedValue.Contains("Rodzic"))
            {
                ListView_rodzic.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Contains("Uczeń"))
            {
                ListView_uczen.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Contains("Nauczyciel"))
            {
                ListView_nauczyciel.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Contains("Dyrektor"))
            {
                ListView_dyrektor.Visible = true;
            }
            else if (DropDownList1.SelectedValue.Contains("Administrator"))
            {
                ListView_administrator.Visible = true;
            }
        }

        protected void Button_powrot_Click(object sender, EventArgs e)
        {
            Response.Redirect("Strona_admin.aspx?log=" + login);
        }
    }
}