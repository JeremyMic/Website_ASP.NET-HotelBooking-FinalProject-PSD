using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplicationTest.Util
{
    public class DbManager
    {
        static SqlConnection connection = null;

        private DbManager()
        {

        }
        public static SqlConnection GetInstance()
        {
            if (DbManager.connection == null)
            {
                string attachDbFileName = @"'C:\Users\grasi\source\repos\WebApplicationTest\WebApplicationTest\App_Data\HotelReservation.mdf'";
                DbManager.connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + attachDbFileName + ";Integrated Security=True");
            }

            return DbManager.connection;
        }

        public static DataTable Get(string query)
        {
            
            DataTable dt = new DataTable();
            SqlConnection connection = GetInstance();
 
            if(connection.State == ConnectionState.Open)
            {
                    connection.Close();
            }

            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataReader rd = cmd.ExecuteReader();
            dt.Load(rd);
            connection.Close();
            

            return dt;
        }

        public static void Execute(string query)
        {
            using (SqlConnection connection = GetInstance())
            {
                if(connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }

                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}