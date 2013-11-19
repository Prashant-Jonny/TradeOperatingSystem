using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormInsertTicket : Form
    {
        public FormInsertTicket()
        {
            InitializeComponent();
            this.Name="Выписать гарантийный талон";
            comboBox_Names.Items.AddRange(Program._DB.GetAllEmployers());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Серийный_номер_экземпляра=textBox_serialNum.Text,
                ФИО_сотрудника=comboBox_Names.SelectedValue.ToString();

            Program._DB.Вставить_Талон(Серийный_номер_экземпляра, ФИО_сотрудника);
        }

        //Серийный_номер_экземпляра, ФИО_сотрудника
    }
}
