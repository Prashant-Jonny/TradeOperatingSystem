using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormRepairResultsInsertion : Form
    {
        string _mode;
  
        public FormRepairResultsInsertion( string mode)
        {
            InitializeComponent();
            this.Name="Зафиксировать результаты ремонта";
            this._mode=mode;
            switch (mode)
            {
                case "OpenRepair":
                {
                    this.btn_save.Text="Сохранить результаты";
                }
                break;

                case "CloseRepair":
                {
                    textBox_status.Visible=false;
                    label1.Visible=false;
                    this.btn_save.Text="Аннулировать";
                }
                break;
            }
        }
        private void btn_save_Click(object sender, EventArgs e)
        {
            switch (_mode)
            {
                case "OpenRepair":
                {
                    string Статус_обслуживания=textBox_status.Text;
                    int Код_гарантийного_талона=int.Parse(textBox_garancy_code.Text);

                    Program.DB.Обновить_Результаты_ремонта(Код_гарантийного_талона, Статус_обслуживания);
                    // [Зафиксировать_результаты_ремонта]
                }
                break;

                case "CloseRepair":
                {
                    textBox_status.Visible=false;
                    label1.Visible=false;
                    int код_талона=int.Parse(this.textBox_garancy_code.Text);
                    Program.DB.Аннулировать_талон(код_талона);
                }
                break;

            }
        }
    }
}
