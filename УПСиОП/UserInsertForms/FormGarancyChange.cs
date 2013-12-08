using System;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormGarancyChange : Form
    {
        public FormGarancyChange()
        {
            InitializeComponent();
            this.Name="Зафиксировать замену по гарантии";
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Название_товара="";
                string[] str=comboBox_goodName.SelectedItem.ToString().Split(' ');
            for (int i=0; i<str.Length-1; i++)
              Название_товара=string.Concat(Название_товара, str[i]," ");
            
            Название_товара=Название_товара.Trim();
            int Код_гарантийного_талона=int.Parse(textBox_garancy_code.Text);

            Program.DB.Зафиксировать_замену_по_гарантии(Название_товара, Код_гарантийного_талона);
        }
    }
}
