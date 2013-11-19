namespace УПСиОП.UserInsertForms
{
    partial class FormAddToWarehouse
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components=null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing&&(components!=null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btn_save = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.numericUpDown_garancy = new System.Windows.Forms.NumericUpDown();
            this.numericUpDown_num_to_warehouse = new System.Windows.Forms.NumericUpDown();
            this.comboBox_service_center = new System.Windows.Forms.ComboBox();
            this.comboBox_category = new System.Windows.Forms.ComboBox();
            this.comboBox_goodName = new System.Windows.Forms.ComboBox();
            this.textBox_price = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_garancy)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_num_to_warehouse)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 3);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Название товара";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Категория";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(157, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Название сервисного центра";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 147);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(180, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Количество прибывшего на склад";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 193);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(81, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "Срок гарантии";
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(190, 193);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(113, 61);
            this.btn_save.TabIndex = 6;
            this.btn_save.Text = "Сохранить";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(16, 241);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(33, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Цена";
            // 
            // numericUpDown_garancy
            // 
            this.numericUpDown_garancy.Location = new System.Drawing.Point(19, 218);
            this.numericUpDown_garancy.Name = "numericUpDown_garancy";
            this.numericUpDown_garancy.Size = new System.Drawing.Size(78, 20);
            this.numericUpDown_garancy.TabIndex = 8;
            // 
            // numericUpDown_num_to_warehouse
            // 
            this.numericUpDown_num_to_warehouse.Location = new System.Drawing.Point(19, 170);
            this.numericUpDown_num_to_warehouse.Name = "numericUpDown_num_to_warehouse";
            this.numericUpDown_num_to_warehouse.Size = new System.Drawing.Size(78, 20);
            this.numericUpDown_num_to_warehouse.TabIndex = 9;
            // 
            // comboBox_service_center
            // 
            this.comboBox_service_center.FormattingEnabled = true;
            this.comboBox_service_center.Location = new System.Drawing.Point(19, 114);
            this.comboBox_service_center.Name = "comboBox_service_center";
            this.comboBox_service_center.Size = new System.Drawing.Size(211, 21);
            this.comboBox_service_center.TabIndex = 10;
            // 
            // comboBox_category
            // 
            this.comboBox_category.FormattingEnabled = true;
            this.comboBox_category.Location = new System.Drawing.Point(19, 66);
            this.comboBox_category.Name = "comboBox_category";
            this.comboBox_category.Size = new System.Drawing.Size(211, 21);
            this.comboBox_category.TabIndex = 11;
            // 
            // comboBox_goodName
            // 
            this.comboBox_goodName.FormattingEnabled = true;
            this.comboBox_goodName.Location = new System.Drawing.Point(19, 19);
            this.comboBox_goodName.Name = "comboBox_goodName";
            this.comboBox_goodName.Size = new System.Drawing.Size(211, 21);
            this.comboBox_goodName.TabIndex = 12;
            // 
            // textBox_price
            // 
            this.textBox_price.Location = new System.Drawing.Point(19, 258);
            this.textBox_price.Name = "textBox_price";
            this.textBox_price.Size = new System.Drawing.Size(100, 20);
            this.textBox_price.TabIndex = 13;
            // 
            // FormAddToWarehouse
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(325, 292);
            this.Controls.Add(this.textBox_price);
            this.Controls.Add(this.comboBox_goodName);
            this.Controls.Add(this.comboBox_category);
            this.Controls.Add(this.comboBox_service_center);
            this.Controls.Add(this.numericUpDown_num_to_warehouse);
            this.Controls.Add(this.numericUpDown_garancy);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FormAddToWarehouse";
            this.Text = "FormAddToWarehouse";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_garancy)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_num_to_warehouse)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.NumericUpDown numericUpDown_garancy;
        private System.Windows.Forms.NumericUpDown numericUpDown_num_to_warehouse;
        private System.Windows.Forms.ComboBox comboBox_service_center;
        private System.Windows.Forms.ComboBox comboBox_category;
        private System.Windows.Forms.ComboBox comboBox_goodName;
        private System.Windows.Forms.TextBox textBox_price;

    }
}