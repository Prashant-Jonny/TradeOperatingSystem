using System;
using System.Windows.Forms;
using System.Data;
namespace УПСиОП
{
    public partial class MainForm : Form
    {
        Form_view_table _form;
        private void Form_tabControl_Selecting(object sender, TabControlCancelEventArgs e)
        {
            if (_tabControl.SelectedTab.Name=="tabPage_data")
                данныеToolStripMenuItem.Visible=true;
            else
                данныеToolStripMenuItem.Visible=false;
        }

        #region tabpage_data
        private string _cur_table_name;
        public MainForm(string usergroup)
        {
            InitializeComponent();
            if (usergroup!="admin")
                this._tabControl.TabPages.RemoveAt(0);
            подключитьсяКБазеToolStripMenuItem.Enabled=false;
            отключитьсяОтБазыToolStripMenuItem.Enabled=true;
        }
        private void подключитьсяКБазеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Program.ConnectToBase();
            подключитьсяКБазеToolStripMenuItem.Enabled=false;
            отключитьсяОтБазыToolStripMenuItem.Enabled=true;
        }
        private void отключитьсяОтБазыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Program.DisconnectBase();
            отключитьсяОтБазыToolStripMenuItem.Enabled=false;
            подключитьсяКБазеToolStripMenuItem.Enabled=true;

        }
        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Program.DisconnectBase();
            this.Close();
        }

        private void добавитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string[] keyFieldNames=Program.DB.GetKeyFields(_cur_table_name);
            object[] keyFieldValues=new object[keyFieldNames.Length];

            DataTable table=Program.DB.GetRow(keyFieldNames, keyFieldValues, _cur_table_name);
            FormEdit frm=(new FormEdit(_cur_table_name));
            frm.Show();
        }
        private void изменитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count==1)
            {
                string[] keyFieldNames=Program.DB.GetKeyFields(_cur_table_name);
                object[] keyFieldValues=new object[keyFieldNames.Length];
                for (int i=0; i<keyFieldNames.Length; i++)
                {
                    keyFieldValues[i]=dataGridView1.SelectedRows[0].Cells[keyFieldNames[i]].Value;
                }
                DataTable table=Program.DB.GetRow(keyFieldNames, keyFieldValues, _cur_table_name);
                FormEdit frm=(new FormEdit(ref table, keyFieldNames, _cur_table_name));
                frm.Show();

            }
        }
        private void удалитьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string[] keyFieldNames=Program.DB.GetKeyFields(_cur_table_name);
            object[] keyFieldValues=new object[keyFieldNames.Length];
            foreach (DataGridViewRow row in dataGridView1.SelectedRows)
            {
                for (int i=0; i<keyFieldNames.Length; i++)
                    keyFieldValues[i]=row.Cells[keyFieldNames[i]].Value;

                try
                {
                    Program.DB.DeleteRow(keyFieldNames, keyFieldValues, _cur_table_name);
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                    return;
                }
            }
        }
        private void btn_show_Click(object sender, EventArgs e)
        {
            if (Program.DB==null)
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
            System.Data.DataTable ds=Program.DB.GetData_table(tablename);
            dataGridView1.DataSource=ds;
        }
        #endregion

        #region tabpage_usability

        #region Оформление документов
        private void выписатьГарантийныйТалонToolStripMenuItem_Click(object sender, EventArgs e)
        {

            new UserInsertForms.FormInsertTicket().Show();
                    /* 	@Серийный_номер_экземпляра nvarchar(50),
                      @ФИО_сотрудника nvarchar(50)*/
        }
        private void заключитьКредитныйДоговорToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
                (new UserInsertForms.FormInsertCredit()).Show();
                /*
                  @Ежемесячная_выплата money,
                 @Первоначальный_взнос money,
                 @Срок_оплаты int,
                 @ФИО_клиента nvarchar(50)	
                  */
            
        }
        private void зарегистрироватьКлиентаToolStripMenuItem_Click(object sender, EventArgs e)
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
        private void оформитьПокупкуToolStripMenuItem_Click(object sender, EventArgs e)
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
        private void оформитьЗаказТовараToolStripMenuItem_Click(object sender, EventArgs e)
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
        private void заказТовараToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormPreorderGood()).Show();
        }
        private void приёмкаТовараToolStripMenuItem_Click(object sender, EventArgs e)
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
        private void удалитьТоварToolStripMenuItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
        private void отправитьТоварВМагазинToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormTransferToShop()).Show();
            /*	
              @Название_товара nvarchar(150),
		      @Количество int
               
             * Отправить_в_магазин
             */
        }
        #endregion

        #region Отчёты
        private void прайсФирмыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            _form=new Form_view_table(Program.DB.GetData_select_storedProcedure("Сформировать_прайс"));
            _form.Show();
            _form=null;
        }
        private void балансовыйПрайсToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                Program.DB.GetData_select_storedProcedure("CURSOR_Сформировать_Балансовый_отчёт")
                ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void maxЦеныПоКатегориямToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_select_storedProcedure("Max_Цены_по_категориям")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void деталиНаименьшегоКоличестваToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                Program.DB.GetData_table("Детали_наименьшего_количества")
                ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void клиентыПоВозрастуToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_table("Клиенты_по_возрасту")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void количествоВидовОтсутствующихНаСкладеТоваровToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(Program.DB.GetData_table("Количество_видов_отсутствующих_на_складе_товаров"))
                    .Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void показать50БлижайшихЗаказовToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {

                new Form_view_table(
                    Program.DB.GetData_select_storedProcedure("CURSOR_Показать_Ближайшие_Заказы")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void продажиЗаТекущийМесяцToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {

                new Form_view_table(
                    Program.DB.GetData_table("Продажи_за_текущий_месяц")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void продажиЗаМесяцToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormSellsStat(2)).Show();
            //        @НомерМесяца int,
            //        @НомерГода int
            //Продажи_за_Месяц_Года
        }
        private void продажиЗаТекущийГодToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_select_storedProcedure("Продажи_за_текущий_год")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void продажиЗаГодToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormSellsStat(1)).Show();
            //        @НомерГода int    Продажи_за_Год
        }
        private void прибыльПоСотрудникамToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {

                new Form_view_table(
                    Program.DB.GetData_table("Сотрудник_Прибыль")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void средняяЦенаПоКатегорииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {

                new Form_view_table(
                    Program.DB.GetData_table("Средняя_Цена_по_категории")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void товарыСЧастойПоломкойToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_select_storedProcedure("Товары_с_частой_поломкой")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void товарыБезГарантииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_select_storedProcedure("Товары_без_гарантии")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
#endregion

        #region Информация
        private void информацияОКлиентеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_table("Информация_о_Клиенте")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void информацияОСотрудникеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                new Form_view_table(
                    Program.DB.GetData_table("Информация_о_Сотруднике")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void информацияОЗаемщикахToolStripMenuItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
        private void обновитьПараметрыТоваровToolStripMenuItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
        private void поискНазванияТовараToolStripMenuItem_Click(object sender, EventArgs e)
        {
                    (new UserInsertForms.FormGoodExists()).Show();
            //  @Часть_Названия nvarchar(50)   Есть_ли_товар
        }
        #endregion

        #region Гарантийная деятельность
        private void зафиксироватьРезультатыРемонтаToolStripMenuItem_Click(object sender, EventArgs e)
        {
         (new UserInsertForms.FormRepairResultsInsertion()).Show();
            // [Зафиксировать_результаты_ремонта]
            //@Код_гарантийного_талона int,
            //@Статус_обслуживания nvarchar(20)
        }
        private void занестиЗаписьВГарантийныйЖурналToolStripMenuItem_Click(object sender, EventArgs e)
        {
                        (new UserInsertForms.FormEnterGarancyList()).Show();
            //[Занести_запись_в_гарантийный_журнал]
            //@Код_гарантийного_талона nvarchar(10),
            //@Статус_обслуживания nvarchar(20),
            //@Примечание ntext,
            //@Причина_направления_на_замену text
        }
        private void зафиксироватьЗаменуПоГарантииToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new UserInsertForms.FormGarancyChange()).Show();
            //@Название_товара nvarchar(150),
            //@Код_гарантийного_талона int
        }
        private void вещиНаГарантийнойЗаменеToolStripMenuItem_Click(object sender, EventArgs e)
        {
             try
            {

                new Form_view_table(
                    Program.DB.GetData_table("Список_вещей_на_гарантийной_замене")
                    ).Show();
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
        private void аннулироватьЗаявкуНаРемонтToolStripMenuItem_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
        #endregion
#endregion
    }
}
