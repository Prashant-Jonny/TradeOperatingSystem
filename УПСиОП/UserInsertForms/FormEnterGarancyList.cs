using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormEnterGarancyList : Form
    {
        public FormEnterGarancyList()
        {
            InitializeComponent();
            this.Name="Внести в гарантийный журнал";
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Код_гарантийного_талона= textBox_garancy_code.Text,
             Статус_обслуживания=textBox_status.Text, Примечание=textBox_comments.Text,
             Причина_направления_на_замену=textBox_problem.Text;

            Program.DB.Вставить_в_гарантийный_журнал(Код_гарантийного_талона,
                Статус_обслуживания, Примечание, Причина_направления_на_замену);
        }
    }
}
