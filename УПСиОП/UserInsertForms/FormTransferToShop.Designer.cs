namespace УПСиОП.UserInsertForms
{
    partial class FormTransferToShop
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
            this.btn_tranfer = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.numericUpDown_count = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBox_goodName
            // 
            this.comboBox_goodName.FormattingEnabled = true;
            this.comboBox_goodName.Location = new System.Drawing.Point(12, 29);
            this.comboBox_goodName.Name = "comboBox_goodName";
            this.comboBox_goodName.Size = new System.Drawing.Size(184, 21);
            this.comboBox_goodName.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(97, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Название Товара";
            // 
            // btn_tranfer
            // 
            this.btn_tranfer.Location = new System.Drawing.Point(121, 107);
            this.btn_tranfer.Name = "btn_tranfer";
            this.btn_tranfer.Size = new System.Drawing.Size(75, 23);
            this.btn_tranfer.TabIndex = 2;
            this.btn_tranfer.Text = "Отправить";
            this.btn_tranfer.UseVisualStyleBackColor = true;
            this.btn_tranfer.Click += new System.EventHandler(this.btn_tranfer_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Количество";
            // 
            // numericUpDown_count
            // 
            this.numericUpDown_count.Location = new System.Drawing.Point(19, 81);
            this.numericUpDown_count.Name = "numericUpDown_count";
            this.numericUpDown_count.Size = new System.Drawing.Size(63, 20);
            this.numericUpDown_count.TabIndex = 4;
            // 
            // FormTransferToShop
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(218, 138);
            this.Controls.Add(this.numericUpDown_count);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btn_tranfer);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox_goodName);
            this.Name = "FormTransferToShop";
            this.Text = "FormTransferToShop";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_count)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox_goodName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_tranfer;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown numericUpDown_count;
    }
}