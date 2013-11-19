namespace УПСиОП.UserInsertForms
{
    partial class FormInsertTicket
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
            this.textBox_serialNum = new System.Windows.Forms.TextBox();
            this.comboBox_Names = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(15, 142);
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
            this.label1.Location = new System.Drawing.Point(12, 73);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(158, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Серийный номер экземпляра";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 4);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(96, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "ФИО Cотрудника";
            // 
            // textBox_serialNum
            // 
            this.textBox_serialNum.Location = new System.Drawing.Point(15, 90);
            this.textBox_serialNum.Name = "textBox_serialNum";
            this.textBox_serialNum.Size = new System.Drawing.Size(155, 20);
            this.textBox_serialNum.TabIndex = 3;
            // 
            // comboBox_Names
            // 
            this.comboBox_Names.FormattingEnabled = true;
            this.comboBox_Names.Location = new System.Drawing.Point(15, 21);
            this.comboBox_Names.Name = "comboBox_Names";
            this.comboBox_Names.Size = new System.Drawing.Size(121, 21);
            this.comboBox_Names.TabIndex = 4;
            // 
            // FormInsertTicket
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(209, 186);
            this.Controls.Add(this.comboBox_Names);
            this.Controls.Add(this.textBox_serialNum);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_save);
            this.Name = "FormInsertTicket";
            this.Text = "FormInsertTicket";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox_serialNum;
        private System.Windows.Forms.ComboBox comboBox_Names;
    }
}