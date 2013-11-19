namespace УПСиОП.UserInsertForms
{
    partial class FormInsertCredit
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
            this.comboBox_Names = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox_firstpayment = new System.Windows.Forms.TextBox();
            this.textBox_month_payment = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox_period = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(197, 186);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(75, 23);
            this.btn_save.TabIndex = 0;
            this.btn_save.Text = "Сохранить";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // comboBox_Names
            // 
            this.comboBox_Names.FormattingEnabled = true;
            this.comboBox_Names.Location = new System.Drawing.Point(12, 29);
            this.comboBox_Names.Name = "comboBox_Names";
            this.comboBox_Names.Size = new System.Drawing.Size(260, 21);
            this.comboBox_Names.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(29, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Ф.И.О клиента";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(29, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(127, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Первоначальный взнос";
            // 
            // textBox_firstpayment
            // 
            this.textBox_firstpayment.Location = new System.Drawing.Point(13, 79);
            this.textBox_firstpayment.Name = "textBox_firstpayment";
            this.textBox_firstpayment.Size = new System.Drawing.Size(143, 20);
            this.textBox_firstpayment.TabIndex = 4;
            // 
            // textBox_month_payment
            // 
            this.textBox_month_payment.Location = new System.Drawing.Point(13, 134);
            this.textBox_month_payment.Name = "textBox_month_payment";
            this.textBox_month_payment.Size = new System.Drawing.Size(143, 20);
            this.textBox_month_payment.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(29, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(123, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Ежемесячная выплата";
            // 
            // textBox_period
            // 
            this.textBox_period.Location = new System.Drawing.Point(13, 186);
            this.textBox_period.Name = "textBox_period";
            this.textBox_period.Size = new System.Drawing.Size(143, 20);
            this.textBox_period.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(29, 169);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Срок оплаты";
            // 
            // FormInsertCredit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 220);
            this.Controls.Add(this.textBox_period);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBox_month_payment);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox_firstpayment);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox_Names);
            this.Controls.Add(this.btn_save);
            this.Name = "FormInsertCredit";
            this.Text = "FormInsertCredit";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.ComboBox comboBox_Names;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox_firstpayment;
        private System.Windows.Forms.TextBox textBox_month_payment;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox_period;
        private System.Windows.Forms.Label label4;
    }
}