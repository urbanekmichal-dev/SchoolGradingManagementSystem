using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dziennik
{
    public class Dyrektor : Uzytkownik
    {
        public void utworz_wydarzenie_w_harmonogramie() { }
        public Klasa wybierz_klase() { Klasa klasa = new Klasa(); return klasa; }
        public void generuj_raport_srednia_ocen_klasy() { }
        public Nauczyciel wybierz_nauczycielka() { Nauczyciel nauczyciel = new Nauczyciel(); return nauczyciel; }
        public Rodzic wybierz_rodzica() {
            Rodzic rodzic = new Rodzic(); 
            return rodzic; }
        public void przegladaj_komunikacje() { }
        public void przegladaj_plan_lekcji() { }
        public Uczen wybor_ucznia() { Uczen uczen = new Uczen(); return uczen; }
        public void przegladanie_uwag() { }
        public void generuj_frekwencje_ucznia() { }
        public void przegladanie_uwag_ucznia() { }
        public void przegladanie_obecnosci() { }
        public void przegladanie_ocen_ucznia() { }
        public void przegladanie_komunikacji() { }

    }
}