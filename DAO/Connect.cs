using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace DAO
{
    class Connect
    {
        public static string Strcon = @"Data Source=.;Initial Catalog=LTQL;Integrated Security=True";
        public static SqlConnection con;
        public static SqlCommand cmd;
        public static SqlDataAdapter da;
        public static void openConn()
        {
            con = new SqlConnection(Strcon);
            con.Open();

        }
        public static void closeConn()
        {
            con.Close();

        }
        // phuong thuc get
        public static DataTable gettable(string sql)
        {
            Connect.openConn();
            cmd = new SqlCommand(sql, con);
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public static bool executeNonQuery(string sql)
        {
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            return true;
        }
    }
}
