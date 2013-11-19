using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormGoodExists : Form
    {
        public FormGoodExists()
        {
            InitializeComponent();
            this.Name="Наличие товара";
        }

        private void btn_search_Click(object sender, EventArgs e)
        {
            String Часть_Названия=textBox_name.Text;
            dataGridView1.DataSource=(Program._DB.Товар_существует(Часть_Названия));
        }
    }
}
