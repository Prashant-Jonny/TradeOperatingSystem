using System;
using System.Windows.Forms;
using Core;
using System.Data;

namespace УПСиОП
{
    public partial class MainForm : Form
    {
        private DBFacade _DB;
        private string _cur_table_name;
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
            string[] keyFieldNames =_DB.GetKeyFields(_cur_table_name);
            object[] keyFieldValues = new object[keyFieldNames.Length];
            foreach (DataGridViewRow row in dataGridView1.SelectedRows)
            {
                 for (int i=0; i<keyFieldNames.Length; i++)
                 {
                    keyFieldValues[i]=row.Cells[keyFieldNames[i]].Value;
                 }
                 _DB.DeleteRow(keyFieldNames, keyFieldValues,_cur_table_name);
            }
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
            _cur_table_name=tablename;
            System.Data.DataTable ds=_DB.GetData_table(tablename);
            dataGridView1.DataSource=ds;
        }

    }
}
