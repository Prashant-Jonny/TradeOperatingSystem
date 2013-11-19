using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormSellsStat : Form
    {
        int _mode=0;
        public FormSellsStat()
        {
            InitializeComponent();
            this.Name="Продажи";
        }

        public FormSellsStat(int mode)
        {
            _mode=mode;
           if (_mode==1)
               numericUpDown_month.Visible=false;      
        }
        

        private void btn_show_Click(object sender, EventArgs e)
        {
            decimal sum=0;
            switch (_mode)
            {
                case 1:
                {
                    int НомерГода=(int)numericUpDown_year.Value;
                   sum= Program._DB.Показать_продажи_за_год(НомерГода);
                }
                break;
                case 2:
                {
                    int НомерГода=(int)numericUpDown_year.Value,
                        НомерМесяца=(int)numericUpDown_month.Value;
                   sum= Program._DB.Показать_продажи_за_месяц_года(НомерМесяца, НомерГода);
                }
                break;
            }

            label_output.Text="Выручка составила "+ sum;
        }

    }
}
