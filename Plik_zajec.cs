using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace Dziennik
{
    public class Plan_zajec
    {
        private string plik_planu;

        public void set(string plik)
        {
            plik_planu = plik;
        }

        public string get()
        {
            return this.plik_planu;
        }
    }
}