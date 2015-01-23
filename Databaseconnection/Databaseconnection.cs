using System;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using Oracle.DataAccess.Client;
using Oracle.DataAccess;

namespace Datalayer
{
    public class Databaseconnection
    {
        private OracleConnection conn;
        public Databaseconnection()
        {
            try
            {
                conn = new OracleConnection();
                string user = "System"; //dbi304910
                string pw = " system"; //zIt4LVVD9u
                //conn.ConnectionString = "User Id=" + user + ";Password=" + pw + ";Data Source=" + "//192.168.15.50:1521/fhictora" + ";";
                conn.ConnectionString = "User Id=" + user + ";Password=" + pw + ";Data Source=" + "localhost" + ";";
            }
            catch (OracleException exception)
            {
                Console.WriteLine(exception);
            }
            
        }

        public void CreateUser(string username, string password)
        {
            try
            {
                string result = string.Empty;
                Databaseconnection db = new Databaseconnection();
                OracleCommand cmd = new OracleCommand("createuser", db.conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("p_user", username);
                cmd.Parameters.Add("p_wachtwoord", password);
                db.conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (OracleException exception)
            {

            }
            finally
            {
                this.conn.Close();
            }

        }




        public bool Authenticate(string username,string password)
        {
            try
            { 
            OracleCommand cmd = this.conn.CreateCommand();
            cmd.CommandText = "SELECT EMAIL,WACHTWOORD From DB_ACCOUNT where EMAIL=:user and password=:pass";
            cmd.Parameters.Add(":user", username);
            cmd.Parameters.Add(":password", password);
            this.conn.Open();
            }
            catch (OracleException exception)
            {

            }
            finally
            {
                this.conn.Close();
            }

        }
    }
    
}
