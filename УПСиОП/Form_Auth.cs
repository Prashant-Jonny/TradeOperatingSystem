using System;
using System.Windows.Forms;

namespace УПСиОП
{
    public partial class Form_Auth : Form
    {
        public Form_Auth()
        {
            InitializeComponent();
        }

        private void btn_log_in_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtbox_login.Text)||
                !string.IsNullOrWhiteSpace(txtbox_pass.Text))
            {
                   Program.ConnectToBase();
                try
                {
                   Program.userAccessLevel=Program.DB.AuthorizeClient(txtbox_login.Text, txtbox_pass.Text);
                   if (string.IsNullOrEmpty(Program.userAccessLevel))
                    {
                        MessageBox.Show("Внутреняя ошибка авторизации");
                        return;
                    }
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                    return;
                }
                this.Close();
                
               
            }
            else
            {
                MessageBox.Show("Заполните поля ввода имени пользователя и пароля");
                return;
            }


        }
    }
}
