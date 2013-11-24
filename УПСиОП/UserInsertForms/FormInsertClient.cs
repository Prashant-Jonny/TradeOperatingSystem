using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormInsertClient : Form
    {
        public FormInsertClient()
        {
            InitializeComponent();
            this.Name="Регистрация Клиента";
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string
               Номер_паспорта_клиента=textBox_passport.Text,
               ФИО_клиента=textBox_FIO.Text,
               Дата_рождения=textBox_date.Text,
               Адрес_клиента=textBox_adress.Text,
               Телефон_домашний=textBox_homephone.Text,
               Телефон_мобильный=textBox_mobPhone.Text;
            try
            {
                Program.DB.Вставить_клиента(Номер_паспорта_клиента, ФИО_клиента,
                  Дата_рождения, Адрес_клиента, Телефон_домашний, Телефон_мобильный);
            }
            catch (Exception exc)
            {
               MessageBox.Show(exc.Message);
               return;
            }
        }
    }
}
