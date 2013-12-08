namespace УПСиОП.UserInsertForms
{
    partial class FormRepairResultsInsertion
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
            this.textBox_garancy_code = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btn_save = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox_status = new System.Windows.Forms.TextBox();
            this.textBox_reason = new System.Windows.Forms.TextBox();
            this.textBox_note = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // textBox_garancy_code
            // 
            this.textBox_garancy_code.Location = new System.Drawing.Point(13, 35);
            this.textBox_garancy_code.Name = "textBox_garancy_code";
            this.textBox_garancy_code.Size = new System.Drawing.Size(100, 20);
            this.textBox_garancy_code.TabIndex = 1;
            this.textBox_garancy_code.Text = "12";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Статус обслуживания";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Код гарантийного листа";
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(158, 53);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(104, 37);
            this.btn_save.TabIndex = 4;
            this.btn_save.Text = "Сохранить";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Причина";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 171);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Примечание";
            // 
            // textBox_status
            // 
            this.textBox_status.Location = new System.Drawing.Point(12, 87);
            this.textBox_status.Name = "textBox_status";
            this.textBox_status.Size = new System.Drawing.Size(100, 20);
            this.textBox_status.TabIndex = 0;
            this.textBox_status.Text = "Ремонт";
            // 
            // textBox_reason
            // 
            this.textBox_reason.Location = new System.Drawing.Point(12, 135);
            this.textBox_reason.Name = "textBox_reason";
            this.textBox_reason.Size = new System.Drawing.Size(100, 20);
            this.textBox_reason.TabIndex = 7;
            // 
            // textBox_note
            // 
            this.textBox_note.Location = new System.Drawing.Point(13, 187);
            this.textBox_note.Name = "textBox_note";
            this.textBox_note.Size = new System.Drawing.Size(100, 20);
            this.textBox_note.TabIndex = 8;
            // 
            // FormRepairResultsInsertion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(289, 236);
            this.Controls.Add(this.textBox_note);
            this.Controls.Add(this.textBox_reason);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox_garancy_code);
            this.Controls.Add(this.textBox_status);
            this.Name = "FormRepairResultsInsertion";
            this.Text = "FormRepairResultsInsertion";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox_garancy_code;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox_status;
        private System.Windows.Forms.TextBox textBox_reason;
        private System.Windows.Forms.TextBox textBox_note;
    }
}