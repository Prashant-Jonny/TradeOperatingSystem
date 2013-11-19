using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormGarancyChange : Form
    {
        public FormGarancyChange()
        {
            InitializeComponent();
            this.Name="Зафиксировать замену по гарантии";
            comboBox_goodName.Items.AddRange(Program._DB.GetGoodNames());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Название_товара=comboBox_goodName.SelectedItem.ToString().Split(' ')[0];
            int Код_гарантийного_талона=int.Parse(textBox_garancy_code.Text);

            Program._DB.Обновить_на_гарантийную_замену(Название_товара, Код_гарантийного_талона);
        }
    }
}
