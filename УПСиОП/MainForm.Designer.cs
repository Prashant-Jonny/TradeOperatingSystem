namespace УПСиОП
{
    partial class MainForm
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components=null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing&&(components!=null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.Form_tabControl = new System.Windows.Forms.TabControl();
            this.tabPage_data = new System.Windows.Forms.TabPage();
            this.tabPage_usability = new System.Windows.Forms.TabPage();
            this.Form_comboBox = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Form_panel = new System.Windows.Forms.Panel();
            this.btn_show = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.действияtoolStripMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.подключитьсяКБазеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.отключитьсяОтБазыToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.выходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.данныеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.добавитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.изменитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.удалитьToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.Form_tabControl.SuspendLayout();
            this.tabPage_data.SuspendLayout();
            this.Form_panel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // Form_tabControl
            // 
            this.Form_tabControl.CausesValidation = false;
            this.Form_tabControl.Controls.Add(this.tabPage_data);
            this.Form_tabControl.Controls.Add(this.tabPage_usability);
            this.Form_tabControl.Location = new System.Drawing.Point(1, 27);
            this.Form_tabControl.Name = "Form_tabControl";
            this.Form_tabControl.SelectedIndex = 0;
            this.Form_tabControl.Size = new System.Drawing.Size(785, 489);
            this.Form_tabControl.TabIndex = 0;
            // 
            // tabPage_data
            // 
            this.tabPage_data.Controls.Add(this.dataGridView1);
            this.tabPage_data.Controls.Add(this.Form_panel);
            this.tabPage_data.Location = new System.Drawing.Point(4, 22);
            this.tabPage_data.Name = "tabPage_data";
            this.tabPage_data.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage_data.Size = new System.Drawing.Size(777, 463);
            this.tabPage_data.TabIndex = 0;
            this.tabPage_data.Text = "Данные";
            this.tabPage_data.UseVisualStyleBackColor = true;
            // 
            // tabPage_usability
            // 
            this.tabPage_usability.Location = new System.Drawing.Point(4, 22);
            this.tabPage_usability.Name = "tabPage_usability";
            this.tabPage_usability.Size = new System.Drawing.Size(777, 463);
            this.tabPage_usability.TabIndex = 1;
            this.tabPage_usability.Text = "Типовые действия";
            this.tabPage_usability.UseVisualStyleBackColor = true;
            // 
            // Form_comboBox
            // 
            this.Form_comboBox.FormattingEnabled = true;
            this.Form_comboBox.Items.AddRange(new object[] {
            "",
            "Гарантийный журнал",
            "Гарантийный талон",
            "Заказ для Клиента",
            "Клиент",
            "Кредитный договор",
            "Поставщик",
            "Продажа",
            "Сервисный центр",
            "Сотрудник",
            "Товар"});
            this.Form_comboBox.Location = new System.Drawing.Point(7, 19);
            this.Form_comboBox.Name = "Form_comboBox";
            this.Form_comboBox.Size = new System.Drawing.Size(207, 21);
            this.Form_comboBox.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(57, 3);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Выберите таблицу";
            // 
            // Form_panel
            // 
            this.Form_panel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.Form_panel.BackColor = System.Drawing.SystemColors.ControlLight;
            this.Form_panel.Controls.Add(this.btn_show);
            this.Form_panel.Controls.Add(this.Form_comboBox);
            this.Form_panel.Controls.Add(this.label1);
            this.Form_panel.Location = new System.Drawing.Point(0, 0);
            this.Form_panel.Name = "Form_panel";
            this.Form_panel.Size = new System.Drawing.Size(784, 50);
            this.Form_panel.TabIndex = 2;
            // 
            // btn_show
            // 
            this.btn_show.Location = new System.Drawing.Point(220, 6);
            this.btn_show.Name = "btn_show";
            this.btn_show.Size = new System.Drawing.Size(99, 40);
            this.btn_show.TabIndex = 2;
            this.btn_show.Text = "Загрузить данные";
            this.btn_show.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(-4, 46);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(784, 447);
            this.dataGridView1.TabIndex = 3;
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.действияtoolStripMenu,
            this.данныеToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Size = new System.Drawing.Size(782, 24);
            this.menuStrip.TabIndex = 5;
            this.menuStrip.Text = "menuStrip";
            // 
            // действияtoolStripMenu
            // 
            this.действияtoolStripMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.подключитьсяКБазеToolStripMenuItem,
            this.отключитьсяОтБазыToolStripMenuItem,
            this.выходToolStripMenuItem});
            this.действияtoolStripMenu.Name = "действияtoolStripMenu";
            this.действияtoolStripMenu.Size = new System.Drawing.Size(70, 20);
            this.действияtoolStripMenu.Text = "Действия";
            // 
            // подключитьсяКБазеToolStripMenuItem
            // 
            this.подключитьсяКБазеToolStripMenuItem.Name = "подключитьсяКБазеToolStripMenuItem";
            this.подключитьсяКБазеToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.подключитьсяКБазеToolStripMenuItem.Text = "Подключиться к Базе";
            // 
            // отключитьсяОтБазыToolStripMenuItem
            // 
            this.отключитьсяОтБазыToolStripMenuItem.Name = "отключитьсяОтБазыToolStripMenuItem";
            this.отключитьсяОтБазыToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.отключитьсяОтБазыToolStripMenuItem.Text = "Отключиться от Базы";
            // 
            // выходToolStripMenuItem
            // 
            this.выходToolStripMenuItem.Name = "выходToolStripMenuItem";
            this.выходToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.выходToolStripMenuItem.Text = "Выход";
            // 
            // данныеToolStripMenuItem
            // 
            this.данныеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.добавитьToolStripMenuItem,
            this.изменитьToolStripMenuItem,
            this.удалитьToolStripMenuItem});
            this.данныеToolStripMenuItem.Name = "данныеToolStripMenuItem";
            this.данныеToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.данныеToolStripMenuItem.Text = "Данные";
            // 
            // добавитьToolStripMenuItem
            // 
            this.добавитьToolStripMenuItem.Name = "добавитьToolStripMenuItem";
            this.добавитьToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.добавитьToolStripMenuItem.Text = "Добавить";
            // 
            // изменитьToolStripMenuItem
            // 
            this.изменитьToolStripMenuItem.Name = "изменитьToolStripMenuItem";
            this.изменитьToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.изменитьToolStripMenuItem.Text = "Изменить";
            // 
            // удалитьToolStripMenuItem
            // 
            this.удалитьToolStripMenuItem.Name = "удалитьToolStripMenuItem";
            this.удалитьToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.удалитьToolStripMenuItem.Text = "Удалить";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(782, 440);
            this.Controls.Add(this.menuStrip);
            this.Controls.Add(this.Form_tabControl);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.Form_tabControl.ResumeLayout(false);
            this.tabPage_data.ResumeLayout(false);
            this.Form_panel.ResumeLayout(false);
            this.Form_panel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl Form_tabControl;
        private System.Windows.Forms.TabPage tabPage_data;
        private System.Windows.Forms.TabPage tabPage_usability;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Panel Form_panel;
        private System.Windows.Forms.Button btn_show;
        private System.Windows.Forms.ComboBox Form_comboBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem действияtoolStripMenu;
        private System.Windows.Forms.ToolStripMenuItem подключитьсяКБазеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem отключитьсяОтБазыToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem выходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem данныеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem добавитьToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem изменитьToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem удалитьToolStripMenuItem;
    }
}

