using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Przedmiot
    {
        private string nazwa_przedmiotu;
        private Nauczyciel nauczyciel=new Nauczyciel();

        public void set_nazwa(string nazwa)
        {
            this.nazwa_przedmiotu = nazwa;
        }

        public string get_nazwa()
        {
            return this.nazwa_przedmiotu;
        }

    }
}