using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormPreorderGood : Form
    {
        public FormPreorderGood()
        {
            InitializeComponent();
            this.Name="Заказ товаров";
            comboBox_goodName.Items.AddRange(Program._DB.GetGoodNames());
            comboBox_FIO.Items.AddRange(Program._DB.GetAllClients());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Название_товара=comboBox_goodName.SelectedItem.ToString().Split(' ')[0],
                     ФИО_клиента=comboBox_FIO.SelectedItem.ToString().Split(' ')[0] 
                     /*, Поставщик=string.Empty*/  ;
            int Количество=(int)numericUpDown_count.Value;

            Program._DB.Вставить_заказ(Название_товара, ФИО_клиента,
               // Поставщик,
                 Количество);
                 /* @ФИО_клиента nvarchar(20),
	            	@Название_товара nvarchar(150),
	            	@Поставщик nvarchar(50),
	            	@Количество int*/
        }
    }
}
