namespace УПСиОП.UserInsertForms
{
    partial class FormOrder_buying
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBox_payment_type = new System.Windows.Forms.ComboBox();
            this.textBox_serial = new System.Windows.Forms.TextBox();
            this.textBox_code = new System.Windows.Forms.TextBox();
            this.numericUpDown_count = new System.Windows.Forms.NumericUpDown();
            this.comboBox_goodName = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(123, 252);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(125, 40);
            this.btn_save.TabIndex = 0;
            this.btn_save.Text = "Оформить покупку";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Название товара";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Тип оплаты";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 110);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(158, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Серийный номер экземпляра";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(76, 13);
            this.label4.TabIndex = 4;
            this.label4.Text = "Код договора";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(13, 207);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "Количество";
            // 
            // comboBox_payment_type
            // 
            this.comboBox_payment_type.FormattingEnabled = true;
            this.comboBox_payment_type.Items.AddRange(new object[] {
            "Безналичный",
            "Наличный"});
            this.comboBox_payment_type.Location = new System.Drawing.Point(16, 80);
            this.comboBox_payment_type.Name = "comboBox_payment_type";
            this.comboBox_payment_type.Size = new System.Drawing.Size(155, 21);
            this.comboBox_payment_type.TabIndex = 6;
            // 
            // textBox_serial
            // 
            this.textBox_serial.Location = new System.Drawing.Point(16, 127);
            this.textBox_serial.Name = "textBox_serial";
            this.textBox_serial.Size = new System.Drawing.Size(155, 20);
            this.textBox_serial.TabIndex = 7;
            // 
            // textBox_code
            // 
            this.textBox_code.Location = new System.Drawing.Point(16, 173);
            this.textBox_code.Name = "textBox_code";
            this.textBox_code.Size = new System.Drawing.Size(155, 20);
            this.textBox_code.TabIndex = 8;
            // 
            // numericUpDown_count
            // 
            this.numericUpDown_count.Location = new System.Drawing.Point(16, 224);
            this.numericUpDown_count.Name = "numericUpDown_count";
            this.numericUpDown_count.Size = new System.Drawing.Size(155, 20);
            this.numericUpDown_count.TabIndex = 9;
            // 
            // comboBox_goodName
            // 
            this.comboBox_goodName.FormattingEnabled = true;
            this.comboBox_goodName.Location = new System.Drawing.Point(16, 30);
            this.comboBox_goodName.Name = "comboBox_goodName";
            this.comboBox_goodName.Size = new System.Drawing.Size(211, 21);
            this.comboBox_goodName.TabIndex = 10;
            // 
            // FormOrder_buying
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(260, 298);
            this.Controls.Add(this.comboBox_goodName);
            this.Controls.Add(this.numericUpDown_count);
            this.Controls.Add(this.textBox_code);
            this.Controls.Add(this.textBox_serial);
            this.Controls.Add(this.comboBox_payment_type);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_save);
            this.Name = "FormOrder_buying";
            this.Text = "FormOrder_buying";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBox_payment_type;
        private System.Windows.Forms.TextBox textBox_serial;
        private System.Windows.Forms.TextBox textBox_code;
        private System.Windows.Forms.NumericUpDown numericUpDown_count;
        private System.Windows.Forms.ComboBox comboBox_goodName;
    }
}