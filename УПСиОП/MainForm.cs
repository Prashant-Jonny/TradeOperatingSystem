using System;
using System.Windows.Forms;
using Core;
using System.Data;

namespace УПСиОП
{
    public partial class MainForm : Form
    {
        private DBFacade _DB = null;

        public MainForm()
        {
            InitializeComponent();
            отключитьсяОтБазыToolStripMenuItem.Enabled=false;
        }

        private void подключитьсяКБазеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            _DB=new DBFacade();
            подключитьсяКБазеToolStripMenuItem.Enabled=false;
            отключитьсяОтБазыToolStripMenuItem.Enabled=true;
        }
        private void отключитьсяОтБазыToolStripMenuItem_Click(object sender, EventArgs e)
        {
            _DB=null;
            отключитьсяОтБазыToolStripMenuItem.Enabled=false;
            подключитьсяКБазеToolStripMenuItem.Enabled=true; 
            
        }
        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void добавитьToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void изменитьToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void удалитьToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void btn_show_Click(object sender, EventArgs e)
        {
            if (_DB==null)
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
                } break;
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

            System.Data.DataTable ds=_DB.GetInfo_table(tablename);
            dataGridView1.DataSource=ds;
        }
        private void MainForm_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

    }
}
