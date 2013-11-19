using System;
using System.Windows.Forms;
using Core;
using System.Data;

namespace УПСиОП
{
    public partial class MainForm : Form
    {
        Form_view_table _form;
        private void Form_tabControl_Selecting(object sender, TabControlCancelEventArgs e)
        {

            if (Form_tabControl.SelectedTab.Name=="tabPage_data")
                данныеToolStripMenuItem.Visible=true;
            else
                данныеToolStripMenuItem.Visible=false;
        }

        #region tabpage_data
        private string _cur_table_name;
        public MainForm()
        {
            InitializeComponent();
            отключитьсяОтБазыToolStripMenuItem.Enabled=false;
        }
        private void подключитьсяКБазеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Program._DB=new DBFacade();
            подключитьсяКБазеToolStripMenuItem.Enabled=false;
            отключитьсяОтБазыToolStripMenuItem.Enabled=true;
        }
        private void отключитьсяОтБазыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Program._DB=null;
            отключитьсяОтБазыToolStripMenuItem.Enabled=false;
            подключитьсяКБазеToolStripMenuItem.Enabled=true;

        }
        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void добавитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string[] keyFieldNames=Program._DB.GetKeyFields(_cur_table_name);
            object[] keyFieldValues=new object[keyFieldNames.Length];

            DataTable table=Program._DB.GetRow(keyFieldNames, keyFieldValues, _cur_table_name);
            FormEdit frm=(new FormEdit(_cur_table_name));
            frm.Show();
        }
        private void изменитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count==1)
            {
                string[] keyFieldNames=Program._DB.GetKeyFields(_cur_table_name);
                object[] keyFieldValues=new object[keyFieldNames.Length];
                for (int i=0; i<keyFieldNames.Length; i++)
                {
                    keyFieldValues[i]=dataGridView1.SelectedRows[0].Cells[keyFieldNames[i]].Value;
                }
                DataTable table=Program._DB.GetRow(keyFieldNames, keyFieldValues, _cur_table_name);
                FormEdit frm=(new FormEdit(ref table, keyFieldNames, _cur_table_name));
                frm.Show();

            }
        }
        private void удалитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string[] keyFieldNames=Program._DB.GetKeyFields(_cur_table_name);
            object[] keyFieldValues=new object[keyFieldNames.Length];
            foreach (DataGridViewRow row in dataGridView1.SelectedRows)
            {
                for (int i=0; i<keyFieldNames.Length; i++)
                {
                    keyFieldValues[i]=row.Cells[keyFieldNames[i]].Value;
                }
                Program._DB.DeleteRow(keyFieldNames, keyFieldValues, _cur_table_name);
            }
        }
        private void btn_show_Click(object sender, EventArgs e)
        {
            if (Program._DB==null)
            {
                MessageBox.Show("Сначала нужно подключиться к базе");
                return;
            }
            string tablename=string.Empty;
            switch (Form_comboBox_tablename.SelectedIndex)
            {
                #region variants

                case 1:
                {
                    tablename="Гарантийный_журнал";
                }
                break;
                case 2:
                {
                    tablename="Гарантийный_талон";
                }
                break;
                case 3:
                {
                    tablename="Заказ_Товар_Поставщик";
                }
                break;
                case 4:
                {
                    tablename="Клиент";
                }
                break;
                case 5:
                {
                    tablename="Кредитный_договор";
                }
                break;
                case 6:
                {
                    tablename="Поставщик";
                }
                break;
                case 7:
                {
                    tablename="Продажа";
                }
                break;
                case 8:
                {
                    tablename="Сервисный_центр";
                }
                break;
                case 9:
                {
                    tablename="Сотрудник";
                }
                break;
                case 10:
                {
                    tablename="Товар";
                }
                break;
                default:
                {
                    MessageBox.Show("Выберите таблицу для отображения");
                    return;
                }
                #endregion
            }
            _cur_table_name=tablename;
            System.Data.DataTable ds=Program._DB.GetData_table(tablename);
            dataGridView1.DataSource=ds;
        }
        #endregion

        #region tabpage_usability

        #region panel_order
        private void btn_insert_talon_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormInsertTicket()).Show();
            /* 	@Серийный_номер_экземпляра nvarchar(50),
                 @ФИО_сотрудника nvarchar(50)*/
        }
        private void btn_insert_credit_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormInsertCredit()).Show();
           /*
             @Ежемесячная_выплата money,
            @Первоначальный_взнос money,
            @Срок_оплаты int,
            @ФИО_клиента nvarchar(50)	
             */
        }
        private void btn_insert_client_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormInsertClient()).Show();
            /*
             	@Номер_паспорта_клиента 	[nvarchar](20),
	            @ФИО_клиента 		[nvarchar](50),
	            @Дата_рождения			[nvarchar](30),
	            @Адрес_клиента 		[nvarchar](100),
	            @Телефон_домашний 		[nvarchar](15),
	            @Телефон_мобильный 		[nvarchar](20)
             */
        }
        private void btn_order_buing_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormOrder_buying()).Show(); 
            /*
                @Название_товара as nvarchar(50),
                @Количество as int,
                @Тип_оплаты nvarchar(30),
                @Серийный_номер_экземпляра nvarchar(20),
                @Код_договора int
             */
        }
        private void btn_good_preorder_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormPreorderGood()).Show();
            /*
             		@ФИО_клиента nvarchar(20),
	            	@Название_товара nvarchar(150),
	            	@Поставщик nvarchar(50),
	            	@Количество int
              
             * Оформить_заказ_товара
             */
        }
        private void btn_transfer_to_shop_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormTransferToShop()).Show();
            /*	
              @Название_товара nvarchar(150),
		      @Количество int
               
             * Отправить_в_магазин
             */
        }
        private void btn_Insert_goods_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormAddToWarehouse()).Show(); 
            /*
	            @Название_товара [nvarchar](150),
	            @Категория [nvarchar](75),
	            @Количество_Прибывшего_склад int,
	            @Цена money,
	            @Срок_гарантии int,
	            @Название_сервисного_центра [nvarchar](50)
             
                 Приёмка_Товара
             */
        }
        private void btn_good_exists_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormGoodExists()).Show(); 
            //  @Часть_Названия nvarchar(50)   Есть_ли_товар
        }
        #endregion

        #region panel_stat
        private void btn_show_nearest_preorders_Click(object sender, EventArgs e)
        {
            _form=new Form_view_table(Program._DB.GetData_select_storedProcedure("Показать_Ближайшие_Заказы"));
            _form.Show();
            _form=null;
        }
        private void btn_GetPriceList_Click(object sender, EventArgs e)
        {
            _form=new Form_view_table(Program._DB.GetData_select_storedProcedure("Сформировать_прайс"));
            _form.Show();
            _form=null;
        }
        private void btn_sells_for_year_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormSellsStat(1)).Show();
            //        @НомерГода int    Продажи_за_Год
            
        }
        private void btn_sells_for_Month_year_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormSellsStat(2)).Show();
            //        @НомерМесяца int,
            //        @НомерГода int
            //Продажи_за_Месяц_Года
        }
        #endregion

        #region panel_garancy
        private void btn_insert_in_Garancy_list_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormEnterGarancyList()).Show(); 
            //[Занести_запись_в_гарантийный_журнал]
            //@Код_гарантийного_талона nvarchar(10),
            //@Статус_обслуживания nvarchar(20),
            //@Примечание ntext,
            //@Причина_направления_на_замену text
        }
        private void btn_garancy_change_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormGarancyChange()).Show();
            //@Название_товара nvarchar(150),
            //@Код_гарантийного_талона int
        }
        private void btn_insert_repair_results_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormRepairResultsInsertion()).Show();
            // [Зафиксировать_результаты_ремонта]
            //@Код_гарантийного_талона int,
            //@Статус_обслуживания nvarchar(20)
        }
        private void btn_num_for_repair_Click(object sender, EventArgs e)
        {
            _form=new Form_view_table(Program._DB.GetData_select_storedProcedure("Количество_гарантийного_ремонта_по_категории"));
            _form.Show();
            _form=null;
        }
        #endregion

        #endregion

        #region views
        
        private void btn_absent_goods_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Количество_видов_отсутствующих_на_складе_товаров")
                ).Show();
        }
        private void btn_least_count_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Детали_наименьшего_количества")
                ).Show();
        }
        private void btn_balance_price_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Прайс")
                ).Show();
        }
        private void btn_50_nearest_orders_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Показать_50_Ближайших_Заказов")
                ).Show();
        }
        private void btn_max_price_category_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Max_Цены_по_категориям")
                ).Show();
        }
        private void btn_AVG_prices_category_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Средняя_Цена_по_категории")
                ).Show();
        }
        private void btn_credit_part_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Доля_покупок_по_кредитному_договору")
                ).Show();
        }
        private void btn_client_info_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Информация_о_Клиенте")
                ).Show();
        }
        private void btn_employer_info_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Информация_о_Сотруднике")
                ).Show();
        }
        private void btn_clients_by_age_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Клиенты_по_возрасту")
                ).Show();
        }
        private void btn_money_per_this_month_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Продажи_за_текущий_месяц")
                ).Show();
        }
        private void btn_often_repairs_list_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Товары_с_частой_поломкой")
                ).Show();
        }
        private void btn_list_garancy_safe_Click(object sender, EventArgs e)
        {
            new Form_view_table(
                Program._DB.GetData_table("Список_вещей_на_гарантийной_замене")
                ).Show();
        }
        #endregion
    }
}
