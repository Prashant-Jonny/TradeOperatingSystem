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
            string Название_товара=comboBox_goodName.SelectedItem.ToString().Split(' ')[0], 
                Тип_оплаты=comboBox_payment_type.SelectedItem.ToString(),
                Серийный_номер_экземпляра=textBox_serial.Text;
            int Код_договора=0, 
                Количество=(int)numericUpDown_count.Value;
            int.TryParse(textBox_code.Text, out Код_договора);

            Program.DB.Вставить_покупку(Название_товара, Тип_оплаты,
                Серийный_номер_экземпляра, Код_договора, Количество);
        }
    }
}
