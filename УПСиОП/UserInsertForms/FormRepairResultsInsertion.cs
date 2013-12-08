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
                     label3.Visible=false;
                     label4.Visible=false;
                     textBox_reason.Visible=false;
                     textBox_note.Visible=false;
                }
                break;

                case "CloseRepair":
                {
                  
                    this.btn_save.Text="Аннулировать";
                    textBox_status.Visible=false;
                    label1.Visible=false;
                    label3.Visible=false;
                    label4.Visible=false;
                    textBox_reason.Visible=false;
                    textBox_note.Visible=false;
                        
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
                    string Статус_обслуживания=textBox_status.Text
                     //   ,причина = textBox_reason.Text,
                    //    примечание = textBox_note.Text
                    ;
                    int Код_гарантийного_талона=int.Parse(textBox_garancy_code.Text);

                    Program.DB.Зафиксировать_результаты_ремонта(Код_гарантийного_талона, Статус_обслуживания);
                    // [Зафиксировать_результаты_ремонта]
                }
                break;

                case "CloseRepair":
                {
                    
                    int код_талона=int.Parse(this.textBox_garancy_code.Text);
                    Program.DB.Аннулировать_заявку_на_ремонт(код_талона);
                }
                break;

            }
        }
    }
}
