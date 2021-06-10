using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Rodzic: Uzytkownik
    {

        private string nr_telefonu;
        Uczen dziecko = new Uczen();

        public void przegladaj_harmonogram() { }

        public Nauczyciel wybierz_nauczyciela() 
        {
            Nauczyciel nauczyciel = new Nauczyciel();
            return nauczyciel;
        }

        public void przegladanie_wiadomosci_dziecka() { }


    }
}