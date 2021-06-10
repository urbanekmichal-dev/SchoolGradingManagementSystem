using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Obecnosc:Przedmiot
    {
        private DateTime data;
        private bool jest_czy_nie_jest;

        public void set_data(DateTime data)
        {
            this.data = data;
        }

        public DateTime get_data()
        {
            return this.data;
        }

        public void set_obecny(bool obecny)
        {
            this.jest_czy_nie_jest = obecny;
        }

        public bool get_obecny()
        {
            return this.jest_czy_nie_jest;
        }

    }
}