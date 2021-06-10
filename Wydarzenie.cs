using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dziennik
{
    public class Wydarzenie
    {
        private DateTime data;
        private string tresc;
        private string nazwa;

        public DateTime get_data()
        {
            return this.data;
        }
        public void set_data(DateTime _data)
        {
            this.data = _data;
        }
        public string get_tresc()
        {
            return this.tresc;
        }
        public void set_tresc(string _tresc)
        {
            this.tresc = _tresc;
        }
        public string get_nazwa()
        {
            return this.nazwa;
        }
        public void set_nazwa(string _nazwa)
        {
            this.nazwa = _nazwa;
        }
    }
 
}