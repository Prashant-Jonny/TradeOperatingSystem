namespace УПСиОП.UserInsertForms
{
    partial class FormPreorderGood
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
            this.btn_save = new System.Windows.Forms.Button();
            this.comboBox_goodName = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBox_FIO = new System.Windows.Forms.ComboBox();
            this.numericUpDown_count = new System.Windows.Forms.NumericUpDown();
            this.comboBox_releasers = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(184, 191);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(75, 23);
            this.btn_save.TabIndex = 0;
            this.btn_save.Text = "Заказать";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // comboBox_goodName
            // 
            this.comboBox_goodName.FormattingEnabled = true;
            this.comboBox_goodName.Location = new System.Drawing.Point(12, 29);
            this.comboBox_goodName.Name = "comboBox_goodName";
            this.comboBox_goodName.Size = new System.Drawing.Size(121, 21);
            this.comboBox_goodName.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Название товара";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "ФИО клиента";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Количество";
            // 
            // comboBox_FIO
            // 
            this.comboBox_FIO.FormattingEnabled = true;
            this.comboBox_FIO.Location = new System.Drawing.Point(15, 84);
            this.comboBox_FIO.Name = "comboBox_FIO";
            this.comboBox_FIO.Size = new System.Drawing.Size(121, 21);
            this.comboBox_FIO.TabIndex = 6;
            // 
            // numericUpDown_count
            // 
            this.numericUpDown_count.Location = new System.Drawing.Point(12, 174);
            this.numericUpDown_count.Name = "numericUpDown_count";
            this.numericUpDown_count.Size = new System.Drawing.Size(120, 20);
            this.numericUpDown_count.TabIndex = 7;
            // 
            // comboBox_releasers
            // 
            this.comboBox_releasers.FormattingEnabled = true;
            this.comboBox_releasers.Location = new System.Drawing.Point(11, 133);
            this.comboBox_releasers.Name = "comboBox_releasers";
            this.comboBox_releasers.Size = new System.Drawing.Size(121, 21);
            this.comboBox_releasers.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(14, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Поставщик";
            // 
            // FormPreorderGood
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(263, 219);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBox_releasers);
            this.Controls.Add(this.numericUpDown_count);
            this.Controls.Add(this.comboBox_FIO);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox_goodName);
            this.Controls.Add(this.btn_save);
            this.Name = "FormPreorderGood";
            this.Text = "FormPreorderGood";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.ComboBox comboBox_goodName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBox_FIO;
        private System.Windows.Forms.NumericUpDown numericUpDown_count;
        private System.Windows.Forms.ComboBox comboBox_releasers;
        private System.Windows.Forms.Label label3;
    }
}