using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Ocena:Przedmiot
    {
        private int wartosc_oceny;

        public void set_ocena(int ocena)
        {
            this.wartosc_oceny = ocena;
        }

        public int get_ocena()
        {
            return this.wartosc_oceny;
        }

    }
}