using System;
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
        public DataTable GetRow(string[] keyFieldNames, object[] keyFieldValues, string tableName)
        {
            DataTable dt = new DataTable();
            string queryString=string.Empty;
            switch (keyFieldNames.Length)
            {
                case 1:
                {
                    queryString=string.Format( "Select * FROM dbo.{0} WHERE ({1}= '{2}') ",tableName,keyFieldNames[0],keyFieldValues[0]);
                }
                break;
                case 2:
                {
                    queryString=string.Format( "Select FROM dbo.{0} WHERE ({1}= '{2}' AND {3}= '{4}')",tableName,keyFieldNames[0],keyFieldValues[0],keyFieldNames[1],keyFieldValues[1]);
                }
                break;
            }
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd;   
                using ( cmd=new SqlCommand(queryString, conn))
                    cmd.Connection.Open();
                    SqlDataAdapter adapter=new SqlDataAdapter();
                    adapter.SelectCommand=cmd;
                    adapter.FillSchema(dt, SchemaType.Source);
                    adapter.Fill(dt);
                    return dt;
            }

        }
        public void UpdateRow(string tableName, DataTable table) 
        {
            string queryString = string.Empty;
            switch (tableName)
            {
                #region vars
                case "Гарантийный_журнал":
                {
                    queryString=String.Format("UPDATE {0} SET  Статус_обслуживания='{1}',Примечание='{2}',Причина_направления_на_замену='{3}' Where (Дата_время='{4}' AND Код_гарантийного_талона={5})",
                                                 tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4]);
                }
                break;
                case "Гарантийный_талон":
                {
                    queryString=String.Format("UPDATE {0} SET Дата_время='{1}',Номер_паспорта_сотрудника='{2}',Серийный_номер_экземпляра='{3}' Where(Код_гарантийного_талона='{4}')",
                                              tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[2]);
                }
                break;
                case "Заказ_Товар_Поставщик":
                {
                    queryString=String.Format("UPDATE {0} SET Код_поставщика='{1}',Количество_заказано='{2}',ID_товара='{3}',Дата_заказа='{4}',Номер_паспорта_клиента='{5}' Where (ID_Заказа='{6}')",
                                            tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[3]);
                }
                break;
                case "Клиент":
                {
                    queryString=String.Format("UPDATE {0} SET ФИО_клиента='{1}',Дата_рождения='{2}',Адрес_клиента='{3}',Телефон_домашний='{4}',Телефон_мобильный='{5}' Where (Номер_паспорта_клиента = '{6}')",
                         tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5]);
                }
                break;
                case "Кредитный_договор":
                {
                    queryString=String.Format("UPDATE {0} SET Ежемесячная_выплата='{1}', Первоначальный_взнос='{2}',Срок_оплаты='{3}',Номер_паспорта_клиента='{4}' Where (Код_договора='{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Поставщик":
                {
                    queryString=String.Format("UPDATE {0} SET Название_поставщика='{1}',Адрес_поставщика='{2}',Телефон_поставщика='{3}',Описание='{4}' WHERE (Код_поставщика='{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);
                
                }
                break;
                case "Продажа":
                {
                     queryString=String.Format("UPDATE {0} SET Цена='{1}',Количество='{2}',Код_договора='{3}',Тип_оплаты='{4}' Where (ID_товара='{5}' AND Код_гарантийного_талона='{6}')",
                          tableName, table.Rows[0].ItemArray[0],table.Rows[0].ItemArray[1],table.Rows[0].ItemArray[3],table.Rows[0].ItemArray[4],table.Rows[0].ItemArray[2],table.Rows[0].ItemArray[5]);
                }
                break;
                case "Сервисный_центр":
                {
                    queryString=String.Format("UPDATE {0} SET Код_сервисного_центра='{1},Название_сервисного_центра='{2}',Адрес='{3}',Телефон='{4}'",
                         tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Сотрудник":
                {
                    queryString=String.Format("UPDATE {0} SET ФИО_сотрудника='{1}',Дата_рождения='{2}',Адрес_сотрудника='{3}',Телефон_домашний='{4}',Телефон_мобильный='{5}',Должность='{6}' WHERE (Номер_паспорта_сотрудника='{7}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[6], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Товар":
                {
                    queryString=String.Format("UPDATE {0} SET Название_товара='{1}',Категория='{2}',Количество_склад='{3}',Цена='{4}',Количество_магазин='{5}',Срок_гарантии='{6}', Код_сервисного_центра='{7}' WHERE (ID_товара='{8}')",
                    tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[6], table.Rows[0].ItemArray[7], table.Rows[0].ItemArray[0]);
                }
                break;
                #endregion
            }

                   using (SqlConnection conn=new SqlConnection(_connstr))
                 {
                   SqlCommand cmd=new SqlCommand(queryString, conn);
                   cmd.Connection.Open();
                   cmd.ExecuteNonQuery();
                 }
        }
        public DataTable GetTableScheme(string tablename)
        {
            System.Data.DataTable dt=new System.Data.DataTable();
            string queryString="SELECT * FROM dbo."+tablename;
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(queryString, conn);
                cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(dt, SchemaType.Source);
                return dt;
            }
        }        
        public void InsertRow(string tableName,DataTable table)         //!!!!!!!!!!!!!!!!!!!
        {
        	string queryString = string.Empty;
            switch (tableName)
            {
                #region vars
                case "Гарантийный_журнал":
                {
                   queryString =String.Format("Insert Into {0}.(Статус_обслуживания,Примечание,Причина_направления_на_замену,Дата_время,Код_гарантийного_талона) Values('{0}','{1}','{2}','{3}','{4}','{5}')",
                                tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4]);
                }
                break;
                case "Гарантийный_талон":
                {
                    queryString=String.Format("Insert Into {0}.(Дата_время,Номер_паспорта_сотрудника,Серийный_номер_экземпляра,Код_гарантийного_талона) VALUES ('{0}','{1}','{2}','{3}','{4}')",
                                              tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[2]);
                }
                break;
                case "Заказ_Товар_Поставщик":
                {
                    queryString=String.Format("Insert Into {0}.(Код_поставщика,Количество_заказано,ID_товара,Дата_заказа,Номер_паспорта_клиента,ID_Заказа) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                                            tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[3]);
                }
                break;
                case "Клиент":
                {
                    queryString=String.Format("Insert Into {0}.(ФИО_клиента,Дата_рождения,Адрес_клиента,Телефон_домашний,Телефон_мобильный,Номер_паспорта_клиента) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                         tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5]);
                }
                break;
                case "Кредитный_договор":
                {
                    queryString=String.Format("Insert Into {0}.( Ежемесячная_выплата, Первоначальный_взнос,Срок_оплаты,Номер_паспорта_клиента,Код_договора) Values ('{0}','{1}','{2}','{3}','{4}','{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Поставщик":
                {
                    queryString=String.Format("Insert Into {0}.(Название_поставщика,Адрес_поставщика,Телефон_поставщика,Описание,Код_поставщика) Values ('{0}','{1}','{2}','{3}','{4}','{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);
                
                }
                break;
                case "Продажа":
                {
                    queryString=String.Format("Insert Into {0}.(Цена,Количество,Код_договора,Тип_оплаты,ID_товара, Код_гарантийного_талона) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                          tableName, table.Rows[0].ItemArray[0],table.Rows[0].ItemArray[1],table.Rows[0].ItemArray[3],table.Rows[0].ItemArray[4],table.Rows[0].ItemArray[2],table.Rows[0].ItemArray[5]);
                }
                break;
                case "Сервисный_центр":
                {
                    queryString=String.Format("Insert Into {0}.(Код_сервисного_центра,Название_сервисного_центра,Адрес,Телефон) VALUES ('{0}','{1}','{2}','{3}','{4}')",
                         tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Сотрудник":
                {
                    queryString=String.Format("Insert Into {0}.(ФИО_сотрудника,Дата_рождения,Адрес_сотрудника,Телефон_домашний,Телефон_мобильный,Должность,Номер_паспорта_сотрудника) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[6], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Товар":
                {
                    queryString=String.Format("Insert Into {0}.( Название_товара,Категория,Количество_склад,Цена,Количество_магазин,Срок_гарантии, Код_сервисного_центра,ID_товара) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')",
                    tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[6], table.Rows[0].ItemArray[7], table.Rows[0].ItemArray[0]);
                }
                break;
                #endregion
            }

                   using (SqlConnection conn=new SqlConnection(_connstr))
                 {
                   SqlCommand cmd=new SqlCommand(queryString, conn);
                   cmd.Connection.Open();
                   cmd.ExecuteNonQuery();
                 }
        }   
    }
}

