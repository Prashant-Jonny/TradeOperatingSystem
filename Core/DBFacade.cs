using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


namespace Core
{
    public class DBFacade
    {
        private string _connstr;
        public DBFacade()
        {
            _connstr=(new Core.Properties.Settings()).ComputerFirmConnectionString;
        }

        public System.Data.DataTable GetInfo_table(string tablename)
        {
            System.Data.DataTable ds=new System.Data.DataTable();
            string queryString="SELECT * FROM dbo."+tablename;
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(queryString, conn);
                cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(ds,SchemaType.Source);
                adapter.Fill(ds);
                return ds;
            }
        }
    }
}
