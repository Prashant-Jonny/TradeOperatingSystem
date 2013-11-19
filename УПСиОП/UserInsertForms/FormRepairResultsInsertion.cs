using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormRepairResultsInsertion : Form
    {
        public FormRepairResultsInsertion()
        {
            InitializeComponent();
            this.Name="Зафиксировать результаты ремонта";
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Статус_обслуживания=textBox_status.Text;
            int Код_гарантийного_талона=int.Parse(textBox_garancy_code.Text);

            Program._DB.Обновить_Результаты_ремонта(Код_гарантийного_талона, Статус_обслуживания);
            // [Зафиксировать_результаты_ремонта]
        }
    }
}
