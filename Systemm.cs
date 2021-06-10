using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dziennik
{
    public class Systemm
    {
        
            public List<Rodzic> rodzice;
            public List<Nauczyciel> nauczyciele;
            public List<Klasa> klasy;
            public List<Wydarzenie> wydarzenia;
            public Dyrektor dyrektor = new Dyrektor();
            public Administrator administrator = new Administrator();

            public void wyslij_notyfikacje() { }

            public int wylicz_srednia_wazona_ocen()
            {
                int srednia=0;
                return srednia;
            }

            public int licz_frekwencje()
            {
                int frekwencja=0;
                return frekwencja;
            }

            public bool klasyfikuj_ucznia()
            {
                bool klasyfikowany=true;
                return klasyfikowany;
            }

        
    }
}