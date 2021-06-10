using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dziennik;
using System.Text;
using System.Web.Routing;
using Microsoft.Ajax.Utilities;

namespace Dziennik
{
    public static class BD_Connector
    {
        public static SqlConnectionStringBuilder MakeBuilder()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "dziennikdbserver.database.windows.net";
            builder.UserID = "Agri";
            builder.Password = "Lubieplacki12";
            builder.InitialCatalog = "Dziennik_db";
            return builder;
        }

        internal static void UsunZZalogowanych(string log)
        {
            string sql = null;
            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();
            sql = "DELETE FROM Zalogowani WHERE login='" + log + "';";

            // Create the connection (and be sure to dispose it at the end)
            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {   }
            }
        }

        //Trsue jesli udalo sie zalogowac, False jesli nastapilo niepowodzenie
        public static bool Logowanie(string login, string haslo)
        {
            try
            {
                SqlConnectionStringBuilder builder = MakeBuilder();
                SqlConnection cnt = new SqlConnection(builder.ConnectionString);
                StringBuilder sb = new StringBuilder();

                //********************wybor tabeli z ktore bedziemy czytac
                string tabela = "";

                if (login[0] == 'U')
                {
                    tabela = "Uczen";
                }
                else if (login[0] == 'N')
                {
                    tabela = "Nauczyciel";
                }
                else if (login[0] == 'R')
                {
                    tabela = "Rodzic";
                }
                else if (login[0] == 'D')
                {
                    tabela = "Dyrektor";
                }
                else if (login[0] == 'A')
                {
                    tabela = "Administrator";
                }
                //****************************SPRAWDZ CZY DANY UZYTKOWNIK ISTNIEJE**************

                sb.Append("SELECT haslo FROM " + tabela + " WHERE login='" + login + "'");
                //********************koniec wyboru tabeli

                String sql = sb.ToString();
                using (SqlCommand command = new SqlCommand(sql, cnt))
                {
                    cnt.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (haslo == reader.GetString(0))
                            {
                                return true;
                            }
                        }

                    }
                }
                return false;
            }
            catch (System.Exception)
            {
                return false;
            }
        }
        //Zwraca ID zalogowanego uzytkownika
        public static int DodajDoZalogowanych(string login)
        {
            //****************************JESLI ISTNIEJE TO DODAJ GO DO ZALOGOWANYCH UZYTKOWNIKOW*************************
            string sql = null;
            SqlConnectionStringBuilder bld = BD_Connector.MakeBuilder();
            sql = "INSERT INTO Zalogowani values('" + login + "'); ";

            // Create the connection (and be sure to dispose it at the end)
            using (SqlConnection cnn = new SqlConnection(bld.ToString()))
            {
                try
                {
                    cnn.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, cnn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    return 0;
                }
            }
            return SprawdzWBazieCzyZalogowany(login);
        }
        //Publiczna metoda wykorzystywana przez Metode dodaj do zalogowanych
        //Zwraca ID zalogowanego uzytkownika, zwraca 0 jesli uzytkownik nie jest zalogowany
        public static int SprawdzWBazieCzyZalogowany(string login)
        {
            //DODANO UZYTKOWNIKA, TERAZ POBIERZ JEGO ID
            SqlConnectionStringBuilder builder = MakeBuilder();
            SqlConnection cnt = new SqlConnection(builder.ConnectionString);
            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT login, ID FROM Zalogowani WHERE login='" + login + "'");
            //********************koniec wyboru tabeli
            try
            {
                String sql2 = sb.ToString();
                using (SqlCommand command = new SqlCommand(sql2, cnt))
                {
                    cnt.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (login == reader.GetString(0))
                            {
                                return reader.GetInt32(1);
                            }
                        }

                    }
                }
            }
            catch (Exception e)
            {
                return 0;
            }
            return 0;
        }
    }
}
