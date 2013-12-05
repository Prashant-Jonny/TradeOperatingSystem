using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormInsertTicket : Form
    {
        public FormInsertTicket()
        {
            InitializeComponent();
            this.Name="Выписать_гарантийный_талон";
            comboBox_Names.Items.AddRange(Program.DB.GetAllEmployers());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Серийный_номер_экземпляра=textBox_serialNum.Text,
                ФИО_сотрудника=comboBox_Names.SelectedValue.ToString();
            try
            {
                txtBox_garancycode.Text=Program.DB.ПолучитьКодТалона(Серийный_номер_экземпляра, ФИО_сотрудника);
                Program.DB.Вставить_Талон(Серийный_номер_экземпляра, ФИО_сотрудника);
        
            }
            catch (Exception exc)
            {
                
            }
        }

        //Серийный_номер_экземпляра, ФИО_сотрудника
    }
}
