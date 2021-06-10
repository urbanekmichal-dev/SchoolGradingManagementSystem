using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Uczen: Uzytkownik
    {

        private string nr_klasy;
        Rodzic rodzic = new Rodzic();
        List<Ocena> oceny;
        List<Uwaga> uwagi;
        List<Obecnosc> obecnosci;
        Plan_zajec plan = new Plan_zajec();

        public void przegladanie_planu_zajec() { }

        public Nauczyciel wybierz_nauczyciela() {
            Nauczyciel nauczyciel=new Nauczyciel();
            return nauczyciel;
                }

        public Przedmiot wybierz_przedmiot() { Przedmiot przedmiot = new Przedmiot(); return przedmiot; }

        public void przegladanie_uwag() { }

        public void przegladanie_ocen() { }

        public void przegladanie_obecnosci() { }


    }
}