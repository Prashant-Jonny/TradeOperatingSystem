using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormDeleteGood : Form
    {
        public FormDeleteGood()
        {
            InitializeComponent();
            this.Name="Удалить товар";
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
           
        }
        private void btn_delete_Click(object sender, EventArgs e)
        {
            string Название_товара=comboBox_goodName.SelectedItem.ToString();
            try
            {
            Program.DB.Удалить_товар(Название_товара);
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
    }
}
