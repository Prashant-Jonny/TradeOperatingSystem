namespace УПСиОП.UserInsertForms
{
    partial class FormInsertClient
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
            this.textBox_passport = new System.Windows.Forms.TextBox();
            this.textBox_FIO = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox_adress = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox_date = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox_homephone = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox_mobPhone = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(157, 320);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(75, 23);
            this.btn_save.TabIndex = 0;
            this.btn_save.Text = "Сохранить";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(135, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Номер паспорта клиента";
            // 
            // textBox_passport
            // 
            this.textBox_passport.Location = new System.Drawing.Point(16, 30);
            this.textBox_passport.Name = "textBox_passport";
            this.textBox_passport.Size = new System.Drawing.Size(132, 20);
            this.textBox_passport.TabIndex = 2;
            // 
            // textBox_FIO
            // 
            this.textBox_FIO.Location = new System.Drawing.Point(16, 81);
            this.textBox_FIO.Name = "textBox_FIO";
            this.textBox_FIO.Size = new System.Drawing.Size(132, 20);
            this.textBox_FIO.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(38, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "ФИО клиента";
            // 
            // textBox_adress
            // 
            this.textBox_adress.Location = new System.Drawing.Point(16, 135);
            this.textBox_adress.Name = "textBox_adress";
            this.textBox_adress.Size = new System.Drawing.Size(132, 20);
            this.textBox_adress.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(38, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Адрес клиента";
            // 
            // textBox_date
            // 
            this.textBox_date.Location = new System.Drawing.Point(16, 184);
            this.textBox_date.Name = "textBox_date";
            this.textBox_date.Size = new System.Drawing.Size(132, 20);
            this.textBox_date.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(38, 168);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(86, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Дата рождения";
            // 
            // textBox_homephone
            // 
            this.textBox_homephone.Location = new System.Drawing.Point(16, 233);
            this.textBox_homephone.Name = "textBox_homephone";
            this.textBox_homephone.Size = new System.Drawing.Size(132, 20);
            this.textBox_homephone.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(38, 217);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Телефон Дом/Раб";
            // 
            // textBox_mobPhone
            // 
            this.textBox_mobPhone.Location = new System.Drawing.Point(16, 283);
            this.textBox_mobPhone.Name = "textBox_mobPhone";
            this.textBox_mobPhone.Size = new System.Drawing.Size(132, 20);
            this.textBox_mobPhone.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(38, 267);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(117, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Мобильный Телефон ";
            // 
            // FormInsertClient
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(264, 365);
            this.Controls.Add(this.textBox_mobPhone);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBox_homephone);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBox_date);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBox_adress);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox_FIO);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox_passport);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_save);
            this.Name = "FormInsertClient";
            this.Text = "FormInsertClient";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox_passport;
        private System.Windows.Forms.TextBox textBox_FIO;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox_adress;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox_date;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox_homephone;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox_mobPhone;
        private System.Windows.Forms.Label label6;
    }
}