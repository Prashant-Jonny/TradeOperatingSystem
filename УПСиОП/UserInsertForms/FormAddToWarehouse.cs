﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace УПСиОП.UserInsertForms
{
    public partial class FormAddToWarehouse : Form
    {
        public FormAddToWarehouse()
        {
            InitializeComponent();
            this.Name="Приёмка Товара";
            comboBox_goodName.Items.AddRange(Program.DB.GetGoodNames());
            comboBox_category.Items.AddRange(Program.DB.GetCategories());
            comboBox_service_center.Items.AddRange(Program.DB.GetServiceCenterNames());
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            string Название_товара="",
                Категория=comboBox_category.SelectedItem.ToString(),
              Название_сервисного_центра="";
            if (comboBox_service_center.SelectedItem as string !=null)
            {
             Название_сервисного_центра = comboBox_service_center.SelectedItem.ToString();
            }
            
            string[] str=comboBox_goodName.SelectedItem.ToString().Split(' ');
            for (int i=0; i<str.Length-1; i++)
            {
                Название_товара=string.Concat(Название_товара, str[i], " ");
            }
            Название_товара=Название_товара.Trim();
            
            int Количество_Прибывшего_склад=(int)(numericUpDown_num_to_warehouse.Value),
                Срок_гарантии=(int)(numericUpDown_garancy.Value);
            double Цена=double.Parse(textBox_price.Text);
            Program.DB.Вставить_Товар(Название_товара,
              Категория, Количество_Прибывшего_склад,
              Цена, Срок_гарантии, Название_сервисного_центра);
        }

       
    }
}
