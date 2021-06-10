using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Dziennik
{
    public static class Logowanie
    {
        public static List<ZalogowanyUzytkownik> lista_zal = new List<ZalogowanyUzytkownik>();

        public static void ZalogujUzytkownika(string log)
        {
            Logowanie.lista_zal.Add(new ZalogowanyUzytkownik(log, BD_Connector.DodajDoZalogowanych(log)));
        }

        public static void WylogujUzytkownika(string log)
        {
            int ID = BD_Connector.SprawdzWBazieCzyZalogowany(log);
            if (ID != 0)
            {
                Logowanie.lista_zal.Remove(new ZalogowanyUzytkownik(log, ID));
                BD_Connector.UsunZZalogowanych(log);
            }
        }

        public static bool findByID(int id)
        {
            foreach (var item in lista_zal)
            {
                if (item.ID == id)
                    return true;
            }
            return false;
        }
        public static bool findByLogin(string login)
        {
            foreach (var item in lista_zal)
            {
                if (item.login == login)
                    return true;
            }
            return false;
        }
    }
    public class ZalogowanyUzytkownik
    {
        readonly public string login;
        readonly public int ID;

        public ZalogowanyUzytkownik(string l, int id)
        {
            login = l;
            ID = id;
        }
    }
}