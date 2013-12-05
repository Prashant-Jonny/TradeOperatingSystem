using System;
using System.Linq;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormInsertCredit : Form
    {
        public FormInsertCredit()
        {
            InitializeComponent();

            this.Name="Заключить кредитный договор";
           comboBox_Names.Items.AddRange(Program.DB.GetAllClients());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            Double Ежемесячная_выплата=double.Parse(textBox_month_payment.Text),
                Первоначальный_взнос=double.Parse(textBox_firstpayment.Text);
            int Срок_оплаты=int.Parse(textBox_period.Text);
            string ФИО_клиента= comboBox_Names.SelectedItem.ToString().Split(' ')[0]+' '+comboBox_Names.SelectedItem.ToString().Split(' ')[1];
            Program.DB.Вставить_кредитный_договор(Ежемесячная_выплата, Первоначальный_взнос, Срок_оплаты, ФИО_клиента);
           
            /*
            @Ежемесячная выплата money,
            @Первоначальный_взнос money,
            @Срок оплаты int,
            @ФИО_клиента nvarchar(50)*/
        }
    }
}
