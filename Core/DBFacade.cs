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

        public DataTable GetData_table(string tablename)
        {
            System.Data.DataTable dt=new System.Data.DataTable();
            string queryString="SELECT * FROM dbo."+tablename;
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(queryString, conn);
                cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(dt,SchemaType.Source);
                adapter.Fill(dt);
                return dt;
            }
        }

        public void DeleteRow(string[] keyFieldNames, object[] keyFieldValues, string tableName )
        {
            string queryString=string.Empty;
            switch (keyFieldNames.Length)
            {
                case 1:
                {
                    queryString=string.Format( "DELETE  FROM dbo.{0} WHERE ({1}= '{2}') ",tableName,keyFieldNames[0],keyFieldValues[0]);
                }
                break;
                case 2:
                {
                    queryString=string.Format( "DELETE FROM dbo.{0} WHERE ({1}= '{2}' AND {3}= '{4}')",tableName,keyFieldNames[0],keyFieldValues[0],keyFieldNames[1],keyFieldValues[1]);
                }
                break;
            }
                using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(queryString, conn);
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
            }
            
        }
        public string[] GetKeyFields(string tablename)
        {
            string[] keyFieldNames={};
            #region keys
            switch (tablename)
            {
                case "Гарантийный_журнал":
                {
                    keyFieldNames=new string[]{"Дата_время","Код_гарантийного_талона"};
                } break;
                case "Гарантийный_талон":
                {
                    keyFieldNames=new string[] { "Код_гарантийного_талона" };
                }
                break;
                case "Заказ_Товар_Поставщик":
                {
                    keyFieldNames=new string[]{"ID_Заказа"};
                }
                break;
                case "Клиент":
                {
                    keyFieldNames=new string[] {"Номер_паспорта_клиента" };
                }
                break;
                case "Кредитный_договор":
                {
                    keyFieldNames=new string[] { "Код_договора" };
                }
                break;
                case "Поставщик":
                {
                    keyFieldNames=new string[]{"Код_поставщика"};
                }
                break;
                case "Продажа":
                {
                    keyFieldNames= new string[]{"ID_товара","Код_гарантийного_талона"};
                }
                break;
                case "Сервисный_центр":
                {
                    keyFieldNames=new string[] { "Код_сервисного_центра" };
                }
                break;
                case "Сотрудник":
                {
                    keyFieldNames=new string[]{"Номер_паспорта_сотрудника"};
                }
                break;
                case "Товар":
                {
                    keyFieldNames=new string[] { "ID_товара" };
                }
                break;
            }
#endregion
            return keyFieldNames;
        }        
    }
}
