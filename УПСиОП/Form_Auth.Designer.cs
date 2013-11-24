namespace УПСиОП
{
    partial class Form_Auth
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
            this.btn_log_in = new System.Windows.Forms.Button();
            this.txtbox_pass = new System.Windows.Forms.TextBox();
            this.txtbox_login = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btn_log_in
            // 
            this.btn_log_in.Location = new System.Drawing.Point(94, 121);
            this.btn_log_in.Name = "btn_log_in";
            this.btn_log_in.Size = new System.Drawing.Size(116, 23);
            this.btn_log_in.TabIndex = 0;
            this.btn_log_in.Text = "Войти в систему";
            this.btn_log_in.UseVisualStyleBackColor = true;
            this.btn_log_in.Click += new System.EventHandler(this.btn_log_in_Click);
            // 
            // txtbox_pass
            // 
            this.txtbox_pass.Location = new System.Drawing.Point(26, 86);
            this.txtbox_pass.Name = "txtbox_pass";
            this.txtbox_pass.Size = new System.Drawing.Size(100, 20);
            this.txtbox_pass.TabIndex = 1;
            // 
            // txtbox_login
            // 
            this.txtbox_login.Location = new System.Drawing.Point(26, 32);
            this.txtbox_login.Name = "txtbox_login";
            this.txtbox_login.Size = new System.Drawing.Size(100, 20);
            this.txtbox_login.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Имя Пользователя";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(29, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Пароль";
            // 
            // Form_Auth
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(242, 157);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtbox_login);
            this.Controls.Add(this.txtbox_pass);
            this.Controls.Add(this.btn_log_in);
            this.Name = "Form_Auth";
            this.Text = "Добро пожаловать";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_log_in;
        private System.Windows.Forms.TextBox txtbox_pass;
        private System.Windows.Forms.TextBox txtbox_login;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}