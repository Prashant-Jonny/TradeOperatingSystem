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

        public DataTable GetData_table(string tablename)             //used in views and tables
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
                adapter.Fill(dt);
                return dt;
            }
        }
        public DataTable GetData_select_storedProcedure(string procedurename)
        {
            System.Data.DataTable dt=new System.Data.DataTable();
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(procedurename, conn);
                cmd.CommandType=CommandType.StoredProcedure;
                cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(dt, SchemaType.Source);
                adapter.Fill(dt);
                return dt;
            }
        }
        public DataTable GetData_select_storedProcedure(string procedurename,SqlParameter[] parameters)
        {
            System.Data.DataTable dt=new System.Data.DataTable();
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd=new SqlCommand(procedurename, conn);
                cmd.Parameters.AddRange(parameters);
                cmd.CommandType=CommandType.StoredProcedure;
                cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(dt, SchemaType.Source);
                adapter.Fill(dt);
                return dt;
            }
        }

        public void InsertRow(string tableName, DataTable table)
        {
            string queryString=string.Empty;
            switch (tableName)
            {
                #region vars
                case "Гарантийный_журнал":
                {
                    queryString=String.Format("Insert Into {0} (Статус_обслуживания,Примечание,Причина_направления_на_замену,Дата_время,Код_гарантийного_талона) Values('{1}','{2}','{3}','{4}','{5}')",
                                 tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4]);
                }
                break;
                case "Гарантийный_талон":
                {
                    queryString=String.Format("Insert Into {0} (Дата_время,Номер_паспорта_сотрудника,Серийный_номер_экземпляра,Код_гарантийного_талона) VALUES ('{1}','{2}','{3}','{4}')",
                                              tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[2]);
                }
                break;
                case "Заказ_Товар_Поставщик":
                {
                    queryString=String.Format("Insert Into {0} (Код_поставщика,Количество_заказано,ID_товара,Дата_заказа,Номер_паспорта_клиента,ID_Заказа) Values ('{1}','{2}','{3}','{4}','{5}','{6}')",
                                            tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[3]);
                }
                break;
                case "Клиент":
                {
                    queryString=String.Format("Insert Into {0} (ФИО_клиента, Дата_рождения, Адрес_клиента, Телефон_домашний, Телефон_мобильный, Номер_паспорта_клиента) VALUES('{1}','{2}','{3}','{4}','{5}','{6}')",
                         tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5]);
                }
                break;
                case "Кредитный_договор":
                {
                    queryString=String.Format("Insert Into {0} ( Ежемесячная_выплата, Первоначальный_взнос,Срок_оплаты,Номер_паспорта_клиента,Код_договора) Values ('{1}','{2}','{3}','{4}','{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Поставщик":
                {
                    queryString=String.Format("Insert Into {0} (Название_поставщика,Адрес_поставщика,Телефон_поставщика,Описание,Код_поставщика) Values ('{1}','{2}','{3}','{4}','{5}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[0]);

                }
                break;
                case "Продажа":
                {
                    queryString=String.Format("Insert Into {0} (Цена,Количество,Код_договора,Тип_оплаты,ID_товара, Код_гарантийного_талона) Values ('{1}','{2}','{3}','{4}','{5}','{6}')",
                          tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[5]);
                }
                break;
                case "Сервисный_центр":
                {
                    queryString=String.Format("Insert Into {0} (Название_сервисного_центра,Адрес,Телефон) VALUES ('{1}','{2}','{3}')",
                         tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3]);
                }
                break;
                case "Сотрудник":
                {
                    queryString=String.Format("Insert Into {0} (ФИО_сотрудника,Дата_рождения,Адрес_сотрудника,Телефон_домашний,Телефон_мобильный,Должность,Номер_паспорта_сотрудника) Values ('{1}','{2}','{3}','{4}','{5}','{6}','{7}')",
                        tableName, table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[5], table.Rows[0].ItemArray[6], table.Rows[0].ItemArray[0]);
                }
                break;
                case "Товар":
                {
                    queryString=String.Format("Insert Into {0} ( Название_товара,Категория,Количество_склад,Цена,Количество_магазин,Срок_гарантии, Код_сервисного_центра,ID_товара) Values ('{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')",
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
        public void DeleteRow(string[] keyFieldNames, object[] keyFieldValues, string tableName)
        {
            string queryString=string.Empty;
            switch (keyFieldNames.Length)
            {
                case 1:
                {
                    queryString=string.Format("DELETE  FROM dbo.{0} WHERE ({1}= '{2}') ", tableName, keyFieldNames[0], keyFieldValues[0]);
                }
                break;
                case 2:
                {
                    queryString=string.Format("DELETE FROM dbo.{0} WHERE ({1}= '{2}' AND {3}= '{4}')", tableName, keyFieldNames[0], keyFieldValues[0], keyFieldNames[1], keyFieldValues[1]);
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
        public void UpdateRow(string tableName, DataTable table)
        {
            string queryString=string.Empty;
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
                         tableName, table.Rows[0].ItemArray[0], table.Rows[0].ItemArray[1], table.Rows[0].ItemArray[3], table.Rows[0].ItemArray[4], table.Rows[0].ItemArray[2], table.Rows[0].ItemArray[5]);
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
        public string[] GetKeyFields(string tablename)
        {
            string[] keyFieldNames= { };
            #region keys
            switch (tablename)
            {
                case "Гарантийный_журнал":
                {
                    keyFieldNames=new string[] { "Дата_время", "Код_гарантийного_талона" };
                }
                break;
                case "Гарантийный_талон":
                {
                    keyFieldNames=new string[] { "Код_гарантийного_талона" };
                }
                break;
                case "Заказ_Товар_Поставщик":
                {
                    keyFieldNames=new string[] { "ID_Заказа" };
                }
                break;
                case "Клиент":
                {
                    keyFieldNames=new string[] { "Номер_паспорта_клиента" };
                }
                break;
                case "Кредитный_договор":
                {
                    keyFieldNames=new string[] { "Код_договора" };
                }
                break;
                case "Поставщик":
                {
                    keyFieldNames=new string[] { "Код_поставщика" };
                }
                break;
                case "Продажа":
                {
                    keyFieldNames=new string[] { "ID_товара", "Код_гарантийного_талона" };
                }
                break;
                case "Сервисный_центр":
                {
                    keyFieldNames=new string[] { "Код_сервисного_центра" };
                }
                break;
                case "Сотрудник":
                {
                    keyFieldNames=new string[] { "Номер_паспорта_сотрудника" };
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
            DataTable dt=new DataTable();
            string queryString=string.Empty;
            switch (keyFieldNames.Length)
            {
                case 1:
                {
                    queryString=string.Format("Select * FROM dbo.{0} WHERE ({1}= '{2}') ", tableName, keyFieldNames[0], keyFieldValues[0]);
                }
                break;
                case 2:
                {
                    queryString=string.Format("Select FROM dbo.{0} WHERE ({1}= '{2}' AND {3}= '{4}')", tableName, keyFieldNames[0], keyFieldValues[0], keyFieldNames[1], keyFieldValues[1]);
                }
                break;
            }
            using (SqlConnection conn=new SqlConnection(_connstr))
            {
                SqlCommand cmd;
                using (cmd=new SqlCommand(queryString, conn))
                    cmd.Connection.Open();
                SqlDataAdapter adapter=new SqlDataAdapter();
                adapter.SelectCommand=cmd;
                adapter.FillSchema(dt, SchemaType.Source);
                adapter.Fill(dt);
                return dt;
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

        private bool NonQuery_template(string procName, SqlParameter[] parameters)
        {
            SqlCommand cmd=new SqlCommand(procName, new SqlConnection(_connstr));
            cmd.Parameters.AddRange(parameters);
            cmd.CommandType=CommandType.StoredProcedure;
            int n_affected=0;
            using (cmd)
            {
                cmd.Connection.Open();
                n_affected=cmd.ExecuteNonQuery();
            }
            return n_affected==1;
        }

        public bool Вставить_Талон(string Серийный_номер_экземпляра, string ФИО_сотрудника)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Серийный_номер_экземпляра", Серийный_номер_экземпляра), 
                    new SqlParameter("@ФИО_сотрудника", ФИО_сотрудника) 
                                 };
            return this.NonQuery_template("Выписать_гарантийный_талон", pars);
        }
        public bool Вставить_кредитный_договор(double Ежемесячная_выплата, double Первоначальный_взнос, int Срок_оплаты, string ФИО_клиента)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Ежемесячная_выплата", Ежемесячная_выплата), 
                    new SqlParameter("@Первоначальный_взнос", Первоначальный_взнос), 
                    new SqlParameter("@Срок_оплаты", Срок_оплаты), 
                    new SqlParameter("@ФИО_клиента", ФИО_клиента) 
                                 };
            return this.NonQuery_template("Заключить_кредитный_договор", pars);
            //Заключить_кредитный_договор

        }
        public bool Вставить_клиента(string Номер_паспорта_клиента, string ФИО_клиента, string Дата_рождения, string Адрес_клиента, string Телефон_домашний, string Телефон_мобильный)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Номер_паспорта_клиента", Номер_паспорта_клиента), 
                    new SqlParameter("@ФИО_клиента", ФИО_клиента), 
                    new SqlParameter("@Дата_рождения", Дата_рождения), 
                    new SqlParameter("@Адрес_клиента", Адрес_клиента), 
                    new SqlParameter("@Телефон_домашний", Телефон_домашний), 
                    new SqlParameter("@Телефон_мобильный", Телефон_мобильный) 
                                 };
            return this.NonQuery_template("Зарегистрировать_Клиента", pars);
            //Зарегистрировать_Клиента
        }
        public bool Вставить_покупку(string Название_товара, string Тип_оплаты, string Серийный_номер_экземпляра, int Код_договора, int Количество)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Название_товара", Название_товара), 
                    new SqlParameter("@Тип_оплаты", Тип_оплаты), 
                    new SqlParameter("@Серийный_номер_экземпляра", Серийный_номер_экземпляра), 
                    new SqlParameter("@Код_договора", Код_договора), 
                    new SqlParameter("@Количество", Количество) 
                                 };
            return this.NonQuery_template("Зарегистрировать_покупку", pars);
            //Зарегистрировать_покупку
        }
        public bool Вставить_заказ(string Название_товара, string ФИО_клиента/*, string Поставщик*/, int Количество)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Название_товара", Название_товара), 
                    new SqlParameter("@ФИО_клиента", ФИО_клиента),  
                   // new SqlParameter("@Поставщик", Поставщик), 
                    new SqlParameter("@Количество", Количество) 
                                 };
            return this.NonQuery_template("Оформить_заказ_товара", pars);
        }
        public bool Отправка_товара_в_магазин(string Название_товара, int Количество)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Название_товара", Название_товара), 
                    new SqlParameter("@Количество", Количество) 
                                 };
            return this.NonQuery_template("Отправить_в_магазин", pars);
        }
        public bool Вставить_Товар(string Название_товара, string Категория, int Количество_Прибывшего_склад, double Цена, int Срок_гарантии, string Название_сервисного_центра)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Название_товара", Название_товара), 
                    new SqlParameter("@Категория", Категория), 
                    new SqlParameter("@Количество_Прибывшего_склад", Количество_Прибывшего_склад), 
                    new SqlParameter("@Цена", Цена), 
                    new SqlParameter("@Срок_гарантии", Срок_гарантии) , 
                    new SqlParameter("@Название_сервисного_центра", Название_сервисного_центра)
                                 };
            return this.NonQuery_template("Приёмка_Товара", pars);
        }
        public DataTable Товар_существует(string Часть_Названия)
        {
                SqlParameter[] pars= { 
                    new SqlParameter("@Часть_Названия", Часть_Названия)
                                 };
            return  GetData_select_storedProcedure("Есть_ли_товар", pars);
        }
        public decimal Показать_продажи_за_год(int НомерГода)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@НомерГода", НомерГода), 
                                 };
            return (Decimal)GetData_select_storedProcedure("Продажи_за_Год", pars).Rows[0]["Выручка"];

        }
        public decimal Показать_продажи_за_месяц_года(int НомерМесяца, int НомерГода)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@НомерМесяца", НомерМесяца), 
                    new SqlParameter("@НомерГода", НомерГода)
                                 };
            return (Decimal)GetData_select_storedProcedure("Продажи_за_Месяц_Года", pars).Rows[0]["Выручка"];
        }
        public bool Вставить_в_гарантийный_журнал(string Код_гарантийного_талона, string Статус_обслуживания, string Примечание, string Причина_направления_на_замену)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Код_гарантийного_талона", Код_гарантийного_талона), 
                    new SqlParameter("@Статус_обслуживания", Статус_обслуживания),  
                    new SqlParameter("@Примечание", Примечание), 
                    new SqlParameter("@Причина_направления_на_замену", Причина_направления_на_замену) 
                                 };
            return this.NonQuery_template("Занести_запись_в_гарантийный_журнал", pars);
        }
        public bool Обновить_на_гарантийную_замену(string Название_товара, int Код_гарантийного_талона)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Название_товара", Название_товара),  
                    new SqlParameter("@Код_гарантийного_талона", Код_гарантийного_талона)
                                 };
            return this.NonQuery_template("Занести_запись_в_гарантийный_журнал", pars);
        }
        public bool Обновить_Результаты_ремонта(int Код_гарантийного_талона, string Статус_обслуживания)
        {
            SqlParameter[] pars= { 
                    new SqlParameter("@Код_гарантийного_талона", Код_гарантийного_талона), 
                    new SqlParameter("@Статус_обслуживания", Статус_обслуживания)
                                 };
            return this.NonQuery_template("Занести_запись_в_гарантийный_журнал", pars);
        }

        public object[] GetAllEmployers()
        {
            List<object> list=new List<object>();
            {
                string queryString="SELECT ФИО_сотрудника FROM dbo.Сотрудник";
                using (SqlConnection conn=new SqlConnection(_connstr))
                {
                   SqlCommand cmd=new SqlCommand(queryString, conn);
                   cmd.Connection.Open();
                   SqlDataReader reader = cmd.ExecuteReader();
                   if(reader.HasRows)
                     while( reader.Read())
                     {
                       list.Add(reader.GetValue(0));
                     }
                   return list.ToArray(); 
                }

            }
        }
        public object[] GetAllClients()
        {
                List<object> list=new List<object>();
                {
                    string queryString="SELECT ФИО_клиента,Номер_паспорта_клиента FROM dbo.Клиент";
                    using (SqlConnection conn=new SqlConnection(_connstr))
                    {
                        SqlCommand cmd=new SqlCommand(queryString, conn);
                        cmd.Connection.Open();
                        SqlDataReader reader=cmd.ExecuteReader();
                        if (reader.HasRows)
                            while (reader.Read())
                            {
                                list.Add(string.Concat(reader.GetValue(0)," ",reader.GetValue(1)));
                            }
                        return list.ToArray();
                    }
                }
        }
        public object[] GetGoodNames()
        {
            List<object> list=new List<object>();
            {
                string queryString="SELECT Название_товара,Цена FROM dbo.Товар";
                using (SqlConnection conn=new SqlConnection(_connstr))
                {
                    SqlCommand cmd=new SqlCommand(queryString, conn);
                    cmd.Connection.Open();
                    SqlDataReader reader=cmd.ExecuteReader();
                    if (reader.HasRows)
                        while (reader.Read())
                        {
                            list.Add(string.Concat(reader.GetValue(0), " ", reader.GetValue(1)));
                        }
                    return list.ToArray();
                }
            }
        }

        public object[] GetCategories()
        {
            List<object> list=new List<object>();
            {
                string queryString="SELECT Distinct Категория FROM dbo.Товар";
                using (SqlConnection conn=new SqlConnection(_connstr))
                {
                    SqlCommand cmd=new SqlCommand(queryString, conn);
                    cmd.Connection.Open();
                    SqlDataReader reader=cmd.ExecuteReader();
                    if (reader.HasRows)
                        while (reader.Read())
                        {
                            list.Add(reader.GetValue(0));
                        }
                    return list.ToArray();
                }
            }
        }

        public object[] GetServiceCenterNames()
        {
            List<object> list=new List<object>();
            {
                string queryString="SELECT Название_сервисного_центра  FROM dbo.Сервисный_центр";
                using (SqlConnection conn=new SqlConnection(_connstr))
                {
                    SqlCommand cmd=new SqlCommand(queryString, conn);
                    cmd.Connection.Open();
                    SqlDataReader reader=cmd.ExecuteReader();
                    if (reader.HasRows)
                        while (reader.Read())
                        {
                            list.Add(reader.GetValue(0));
                        }
                    return list.ToArray();
                }
            }
        }
    }
}

