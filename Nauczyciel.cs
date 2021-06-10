using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Dziennik
{
    public class Nauczyciel : Uzytkownik
    {
        List<Przedmiot> przedmioty; //zmienić na klasę przedmioty 
        Plan_zajec plan;

        public void przegladaj_watki() { }
        public void przegladaj_harmonogram() { }
        public void przegladaj_plan_zajec() { }
        public void wpisz_uwage() { }
        public Uczen wybierz_ucznia() { Uczen uczen = new Uczen(); return uczen; }
        public Rodzic wybierz_rodzica() { Rodzic rodzic = new Rodzic(); return rodzic; }
        public Przedmiot wybierz_przedmiot() { Przedmiot przedmiot = new Przedmiot(); return przedmiot; }
        public void wpisywanie_obecnosc() { }
        public void wystaw_ocene_koncowa() { }
        public void wpisz_ocene() { }

    }
}