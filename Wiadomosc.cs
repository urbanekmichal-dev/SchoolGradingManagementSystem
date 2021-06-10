using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Wiadomosc
    {
        private string tresc;
        private DateTime data;

        public void set_tresc(string tekst)
        {
            this.tresc = tekst;
        }

        public string get_tresc()
        {
            return this.tresc;
        }

        public void set_data(DateTime data)
        {
            this.data = data;
        }

        public DateTime get_data()
        {
            return this.data;
        }
    }
}