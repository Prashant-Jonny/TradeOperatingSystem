using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormGoodExists : Form
    {
        public FormGoodExists()
        {
            InitializeComponent();
            this.Name="Поиск товара";
        }

        private void btn_search_Click(object sender, EventArgs e)
        {
            String Часть_Названия = textBox_name.Text;
            System.Data.DataTable table = (Program.DB.Поиск_товара(Часть_Названия));
            dataGridView1.DataSource=table;
        }
    }
}
