using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormTransferToShop : Form
    {
        public FormTransferToShop()
        {
            InitializeComponent();
            this.Name="Отправка товара в магазин";
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
        }

        private void btn_tranfer_Click(object sender, EventArgs e)
        {
            string Название_товара="";
              string[] str=comboBox_goodName.SelectedItem.ToString().Split(' ');
          
            for (int i=0; i<str.Length-1; i++)
              Название_товара=string.Concat(Название_товара, str[i]," ");            
           
            Название_товара=Название_товара.Trim();

            int Количество=(int)numericUpDown_count.Value;
            try
            {
                Program.DB.Отправка_товара_в_магазин(Название_товара, Количество);
            }
            catch(Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }


    }
}
