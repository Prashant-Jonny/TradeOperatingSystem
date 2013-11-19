namespace УПСиОП.UserInsertForms
{
    partial class FormEnterGarancyList
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
            this.label = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label_comments = new System.Windows.Forms.Label();
            this.btn_save = new System.Windows.Forms.Button();
            this.textBox_garancy_code = new System.Windows.Forms.TextBox();
            this.textBox_status = new System.Windows.Forms.TextBox();
            this.textBox_problem = new System.Windows.Forms.TextBox();
            this.textBox_comments = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 4);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(136, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Код гарантийного талона";
            // 
            // label
            // 
            this.label.AutoSize = true;
            this.label.Location = new System.Drawing.Point(13, 45);
            this.label.Name = "label";
            this.label.Size = new System.Drawing.Size(117, 13);
            this.label.TabIndex = 1;
            this.label.Text = "Статус обслуживания";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(174, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Причина направления на замену";
            // 
            // label_comments
            // 
            this.label_comments.AutoSize = true;
            this.label_comments.Location = new System.Drawing.Point(13, 133);
            this.label_comments.Name = "label_comments";
            this.label_comments.Size = new System.Drawing.Size(70, 13);
            this.label_comments.TabIndex = 3;
            this.label_comments.Text = "Примечание";
            // 
            // btn_save
            // 
            this.btn_save.Location = new System.Drawing.Point(159, 167);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(75, 23);
            this.btn_save.TabIndex = 4;
            this.btn_save.Text = "Внести";
            this.btn_save.UseVisualStyleBackColor = true;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // textBox_garancy_code
            // 
            this.textBox_garancy_code.Location = new System.Drawing.Point(16, 22);
            this.textBox_garancy_code.Name = "textBox_garancy_code";
            this.textBox_garancy_code.Size = new System.Drawing.Size(100, 20);
            this.textBox_garancy_code.TabIndex = 5;
            // 
            // textBox_status
            // 
            this.textBox_status.Location = new System.Drawing.Point(16, 66);
            this.textBox_status.Name = "textBox_status";
            this.textBox_status.Size = new System.Drawing.Size(100, 20);
            this.textBox_status.TabIndex = 6;
            // 
            // textBox_problem
            // 
            this.textBox_problem.Location = new System.Drawing.Point(16, 105);
            this.textBox_problem.Name = "textBox_problem";
            this.textBox_problem.Size = new System.Drawing.Size(100, 20);
            this.textBox_problem.TabIndex = 7;
            // 
            // textBox_comments
            // 
            this.textBox_comments.Location = new System.Drawing.Point(16, 149);
            this.textBox_comments.Name = "textBox_comments";
            this.textBox_comments.Size = new System.Drawing.Size(100, 20);
            this.textBox_comments.TabIndex = 8;
            // 
            // FormEnterGarancyList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(242, 202);
            this.Controls.Add(this.textBox_comments);
            this.Controls.Add(this.textBox_problem);
            this.Controls.Add(this.textBox_status);
            this.Controls.Add(this.textBox_garancy_code);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.label_comments);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label);
            this.Controls.Add(this.label1);
            this.Name = "FormEnterGarancyList";
            this.Text = "FormEnterGarancyList";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label_comments;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.TextBox textBox_garancy_code;
        private System.Windows.Forms.TextBox textBox_status;
        private System.Windows.Forms.TextBox textBox_problem;
        private System.Windows.Forms.TextBox textBox_comments;
    }
}