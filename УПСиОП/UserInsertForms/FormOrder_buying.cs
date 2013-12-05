using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormOrder_buying : Form
    {
        public FormOrder_buying()
        {
            InitializeComponent();
            this.Name="Оформление покупки";
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
        }
        private void btn_save_Click(object sender, EventArgs e)
        {
            string Тип_оплаты=comboBox_payment_type.SelectedItem.ToString(),
                Серийный_номер_экземпляра=textBox_serial.Text,
                Название_товара=string.Empty;

            string[] str=comboBox_goodName.SelectedItem.ToString().Split(' ');
            for (int i=0; i<str.Length-1; i++)
                 Название_товара=string.Concat(Название_товара, str[i]," ");
            
            Название_товара=Название_товара.Trim();
            string Код_договора=textBox_code.Text; 
              int Количество=(int)numericUpDown_count.Value;

            try
            {
                Program.DB.Вставить_покупку(Название_товара, Тип_оплаты,
                Серийный_номер_экземпляра, Код_договора, Количество);
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
    }
}
