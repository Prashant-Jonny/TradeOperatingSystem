namespace УПСиОП.UserInsertForms
{
    partial class FormSellsStat
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
            this.btn_show = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.numericUpDown_month = new System.Windows.Forms.NumericUpDown();
            this.numericUpDown_year = new System.Windows.Forms.NumericUpDown();
            this.label_output = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_month)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_year)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_show
            // 
            this.btn_show.Location = new System.Drawing.Point(208, 13);
            this.btn_show.Name = "btn_show";
            this.btn_show.Size = new System.Drawing.Size(75, 23);
            this.btn_show.TabIndex = 0;
            this.btn_show.Text = "Показать";
            this.btn_show.UseVisualStyleBackColor = true;
            this.btn_show.Click += new System.EventHandler(this.btn_show_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "№ месяца";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "№ Года";
            // 
            // numericUpDown_month
            // 
            this.numericUpDown_month.Location = new System.Drawing.Point(15, 82);
            this.numericUpDown_month.Maximum = new decimal(new int[] {
            12,
            0,
            0,
            0});
            this.numericUpDown_month.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numericUpDown_month.Name = "numericUpDown_month";
            this.numericUpDown_month.Size = new System.Drawing.Size(56, 20);
            this.numericUpDown_month.TabIndex = 3;
            this.numericUpDown_month.Value = new decimal(new int[] {
            12,
            0,
            0,
            0});
            // 
            // numericUpDown_year
            // 
            this.numericUpDown_year.Location = new System.Drawing.Point(15, 26);
            this.numericUpDown_year.Maximum = new decimal(new int[] {
            2200,
            0,
            0,
            0});
            this.numericUpDown_year.Minimum = new decimal(new int[] {
            1887,
            0,
            0,
            0});
            this.numericUpDown_year.Name = "numericUpDown_year";
            this.numericUpDown_year.Size = new System.Drawing.Size(56, 20);
            this.numericUpDown_year.TabIndex = 4;
            this.numericUpDown_year.Value = new decimal(new int[] {
            2013,
            0,
            0,
            0});
            // 
            // label_output
            // 
            this.label_output.AutoSize = true;
            this.label_output.Location = new System.Drawing.Point(22, 135);
            this.label_output.Name = "label_output";
            this.label_output.Size = new System.Drawing.Size(0, 13);
            this.label_output.TabIndex = 5;
            // 
            // FormSellsStat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(296, 172);
            this.Controls.Add(this.label_output);
            this.Controls.Add(this.numericUpDown_year);
            this.Controls.Add(this.numericUpDown_month);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_show);
            this.Name = "FormSellsStat";
            this.Text = "FormSellsStat";
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_month)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown_year)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_show;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown numericUpDown_month;
        private System.Windows.Forms.NumericUpDown numericUpDown_year;
        private System.Windows.Forms.Label label_output;
    }
}