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
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
            comboBox_FIO.Items.AddRange(Program.DB.GetAllClients());
            comboBox_releasers.Items.AddRange(Program.DB.GetAllReleasers());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Название_товара=string.Empty,
               ФИО_клиента=string.Empty,
               Поставщик=comboBox_releasers.SelectedItem.ToString();
         string[] str=comboBox_goodName.SelectedItem.ToString().Split(' ');
            for (int i=0; i<str.Length-1; i++)
              Название_товара=string.Concat(Название_товара, str[i]," ");
            
            Название_товара=Название_товара.Trim();
                ФИО_клиента= comboBox_FIO.SelectedItem.ToString().Split(' ')[0]+' '+comboBox_FIO.SelectedItem.ToString().Split(' ')[1];
         
            int Количество=(int)numericUpDown_count.Value;

            Program.DB.Вставить_заказ(Название_товара, ФИО_клиента, Поставщик, Количество);
                 /* @ФИО_клиента nvarchar(20),
	            	@Название_товара nvarchar(150),
	            	@Поставщик nvarchar(50),
	            	@Количество int*/
        }


    }
}
