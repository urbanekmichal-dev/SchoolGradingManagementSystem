using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dziennik;
using System.Text;
using System.Web.Routing;
using Microsoft.Ajax.Utilities;

namespace Dziennik
{
    public class Administrator
    {
        public bool dodajUczenNauczycielDyrektor(string imie, string drugie_imie, string nazwisko, string login, string haslo, int plan_zajec, string klasa)
        {
            SqlConnectionStringBuilder builder = BD_Connector.MakeBuilder();
            string tabela = "";
            string sql = null;

            if (login[0] == 'U')
            {
                tabela = "Uczen";
                sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo,Plan_zajec_Id_planu,Klasa_Nr_klasy) " +
                    "values ('" + imie + "'," + "'" + nazwisko + "'," + "'" + drugie_imie + "','" + login + "','" + haslo + "','" + plan_zajec + "','" + klasa + "')";
            }
            else if (login[0] == 'N')
            {
                tabela = "Nauczyciel";
                sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo,Plan_zajec_Id_planu) " +
                    "values ('" + imie + "'," + "'" + nazwisko + "'," + "'" + drugie_imie + "','" + login + "','" + haslo + "','" + plan_zajec + "')";
            }

            else if (login[0] == 'D')
            {
                tabela = "Dyrektor";
                sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo) " +
                    "values ('" + imie + "'," + "'" + nazwisko + "'," + "'" + drugie_imie + "','" + login + "','" + haslo + "')";
            }
            else if (login[0] == 'A')
            {
                tabela = "Administrator";
                sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo) " +
                    "values ('" + imie + "'," + "'" + nazwisko + "'," + "'" + drugie_imie + "','" + login + "','" + haslo + "')";
            }

            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();

            //sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo,Plan_zajec_Id_planu,Klasa_Nr_klasy) values ('" + imie + "'," + "'" + drugie_imie + "'," + "'" + nazwisko + "','" + login + "','" + haslo + "','" + plan_zajec + "','" + klasa + "'

            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        int rowsAdded = cmd.ExecuteNonQuery();
                        return true;
                    }

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public bool Dodawanie_R(string imie, string drugie_imie, string nazwisko, string login, string haslo, string numer, string login_ucznia)
        {
            SqlConnectionStringBuilder builder = BD_Connector.MakeBuilder();
            string tabela = "Rodzic";
            string sql = null;

            sql = "INSERT INTO " + tabela + " (Imie,Nazwisko,Drugie_imie,Login,Haslo,Nr_tel,Uczen_Login,Uczen_Plan_zajec_Id_planu,Uczen_Klasa_Nr_klasy)" +
            " values ('" + imie + "'," + "'" + nazwisko + "'," + "'" + drugie_imie + "','" + login + "','" + haslo + "','" + numer + "','" + login_ucznia + "',0,'brak')";

            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();

            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        int rowsAdded = cmd.ExecuteNonQuery();
                        return true;
                    }

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public bool Usuwanie(string login)
        {
            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();
            string tabela = "";
            string sql = null;

            if (login[0] == 'U')
            {
                tabela = "Uczen";
            }
            else if (login[0] == 'N')
            {
                tabela = "Nauczyciel";
            }

            else if (login[0] == 'D')
            {
                tabela = "Dyrektor";
            }
            else if (login[0] == 'A')
            {
                tabela = "Administrator";
                return false;
            }
            else
            {
                tabela = "Rodzic";
            }

            sql = "DELETE FROM " + tabela + " WHERE Login= " + "'" + login + "'";

            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        int rowsAdded = cmd.ExecuteNonQuery();
                        if (rowsAdded == 0) return false;
                        else return true;
                    }

                }
                catch (Exception ex)
                {
                    return false;
                }
            }


        }

        public bool Modyfikuj(string imie, string drugie_imie, string nazwisko, string login, string tabela, string numer, string login_ucznia)
        {
            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();
            string sql = null;

            if (tabela == "Uczeń")
            {
                tabela = "Uczen";
            }

            sql = "UPDATE " + tabela + " SET";

            bool byl = false;



            if (imie != "")
            {
                sql += " Imie= " + "'" + imie + "'";
                byl = true;
            }

            if (drugie_imie != "")
            {
                if (byl == true)
                    sql += ", Drugie_imie= " + "'" + drugie_imie + "'";
                else
                {
                    sql += " Drugie_imie= " + "'" + drugie_imie + "'";
                    byl = true;
                }
            }

            if (nazwisko != "")
            {
                if (byl == true)
                    sql += ", Nazwisko= " + "'" + nazwisko + "'";
                else
                {
                    sql += " Nazwisko= " + "'" + nazwisko + "'";
                    byl = true;
                }
            }

            if (numer != "")
            {
                if (byl == true)
                    sql += ", Nr_tel= " + "'" + numer + "'";
                else
                {
                    sql += " Nr_tel= " + "'" + numer + "'";
                    byl = true;
                }
            }


            if (login_ucznia != "")
            {
                if (byl == true)
                    sql += ", Uczen_Login= " + "'" + login_ucznia + "'";
                else
                {
                    sql += " Uczen_Login= " + "'" + login_ucznia + "'";
                }
            }

            sql += " WHERE Login= " + "'" + login + "'";

            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        int rowsAdded = cmd.ExecuteNonQuery();
                        return true;
                    }

                }
                catch (Exception ex)
                {
                    return false;
                }
            }


        }

        //TODO(implementaja)
        public void wybierzKlase(string klasa)
        {

        }
        //TODO(implementaja)
        public void wybierzPlanLekcji()
        {

        }
        //TODO(implementaja)
        public void zmienDaneOsobowe()
        {

        }
    }
}