namespace УПСиОП.UserInsertForms
{
    partial class FormGarancyChange
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
            this.comboBox_goodName = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_save = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox_garancy_code = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // comboBox_goodName
            // 
            this.comboBox_goodName.FormattingEnabled = true;
            this.comboBox_goodName.Location = new System.Drawing.Point(12, 37);
            this.comboBox_goodName.Name = "comboBox_goodName";
            this.comboBox_goodName.Size = new System.Drawing.Size(136, 21);
            this.comboBox_goodName.TabIndex = 0;
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
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(168, 63);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(104, 34);
            this.btn_save.TabIndex = 2;
            this.btn_save.Text = "Зафиксировать замену";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 84);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(136, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Код гарантийного талона";
            // 
            // textBox_garancy_code
            // 
            this.textBox_garancy_code.Location = new System.Drawing.Point(12, 103);
            this.textBox_garancy_code.Name = "textBox_garancy_code";
            this.textBox_garancy_code.Size = new System.Drawing.Size(136, 20);
            this.textBox_garancy_code.TabIndex = 4;
            // 
            // FormGarancyChange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 143);
            this.Controls.Add(this.textBox_garancy_code);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox_goodName);
            this.Name = "FormGarancyChange";
            this.Text = "FormGarancyChange";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox_goodName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox_garancy_code;
    }
}