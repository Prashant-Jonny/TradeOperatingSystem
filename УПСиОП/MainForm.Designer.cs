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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Form_panel = new System.Windows.Forms.Panel();
            this.btn_show = new System.Windows.Forms.Button();
            this.Form_comboBox_tablename = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage_usability = new System.Windows.Forms.TabPage();
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btn_list_garancy_safe = new System.Windows.Forms.Button();
            this.btn_often_repairs_list = new System.Windows.Forms.Button();
            this.btn_garancy_change = new System.Windows.Forms.Button();
            this.btn_insert_in_Garancy_list = new System.Windows.Forms.Button();
            this.btn_insert_repair_results = new System.Windows.Forms.Button();
            this.btn_num_for_repair = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_insert_talon = new System.Windows.Forms.Button();
            this.btn_insert_credit = new System.Windows.Forms.Button();
            this.btn_good_exists = new System.Windows.Forms.Button();
            this.btn_insert_client = new System.Windows.Forms.Button();
            this.btn_order_buing = new System.Windows.Forms.Button();
            this.btn_transfer_to_shop = new System.Windows.Forms.Button();
            this.btn_good_preorder = new System.Windows.Forms.Button();
            this.btn_Insert_goods = new System.Windows.Forms.Button();
            this.btn_balance_price = new System.Windows.Forms.Button();
            this.btn_50_nearest_orders = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btn_AVG_prices_category = new System.Windows.Forms.Button();
            this.btn_money_of_employer = new System.Windows.Forms.Button();
            this.btn_money_per_this_month = new System.Windows.Forms.Button();
            this.btn_clients_by_age = new System.Windows.Forms.Button();
            this.btn_employer_info = new System.Windows.Forms.Button();
            this.btn_money_per_this_year = new System.Windows.Forms.Button();
            this.btn_credit_part = new System.Windows.Forms.Button();
            this.btn_client_info = new System.Windows.Forms.Button();
            this.btn_max_price_category = new System.Windows.Forms.Button();
            this.btn_sells_for_Month_year = new System.Windows.Forms.Button();
            this.btn_GetPriceList = new System.Windows.Forms.Button();
            this.btn_show_nearest_preorders = new System.Windows.Forms.Button();
            this.btn_sells_for_year = new System.Windows.Forms.Button();
            this.btn_absent_goods = new System.Windows.Forms.Button();
            this.btn_least_count = new System.Windows.Forms.Button();
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
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.Form_panel.SuspendLayout();
            this.tabPage_usability.SuspendLayout();
            this.panel1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
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
            this.Form_tabControl.Size = new System.Drawing.Size(785, 520);
            this.Form_tabControl.TabIndex = 0;
            this.Form_tabControl.Selecting += new System.Windows.Forms.TabControlCancelEventHandler(this.Form_tabControl_Selecting);
            // 
            // tabPage_data
            // 
            this.tabPage_data.Controls.Add(this.dataGridView1);
            this.tabPage_data.Controls.Add(this.Form_panel);
            this.tabPage_data.Location = new System.Drawing.Point(4, 22);
            this.tabPage_data.Name = "tabPage_data";
            this.tabPage_data.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage_data.Size = new System.Drawing.Size(777, 494);
            this.tabPage_data.TabIndex = 0;
            this.tabPage_data.Text = "Данные";
            this.tabPage_data.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(-4, 46);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(781, 445);
            this.dataGridView1.TabIndex = 3;
            // 
            // Form_panel
            // 
            this.Form_panel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.Form_panel.BackColor = System.Drawing.SystemColors.ControlLight;
            this.Form_panel.Controls.Add(this.btn_show);
            this.Form_panel.Controls.Add(this.Form_comboBox_tablename);
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
            this.btn_show.Click += new System.EventHandler(this.btn_show_Click);
            // 
            // Form_comboBox_tablename
            // 
            this.Form_comboBox_tablename.FormattingEnabled = true;
            this.Form_comboBox_tablename.Items.AddRange(new object[] {
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
            this.Form_comboBox_tablename.Location = new System.Drawing.Point(7, 19);
            this.Form_comboBox_tablename.Name = "Form_comboBox_tablename";
            this.Form_comboBox_tablename.Size = new System.Drawing.Size(207, 21);
            this.Form_comboBox_tablename.TabIndex = 0;
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
            // tabPage_usability
            // 
            this.tabPage_usability.Controls.Add(this.panel1);
            this.tabPage_usability.Location = new System.Drawing.Point(4, 22);
            this.tabPage_usability.Name = "tabPage_usability";
            this.tabPage_usability.Size = new System.Drawing.Size(777, 494);
            this.tabPage_usability.TabIndex = 1;
            this.tabPage_usability.Text = "Типовые действия";
            this.tabPage_usability.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightGray;
            this.panel1.Controls.Add(this.groupBox3);
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Controls.Add(this.btn_balance_price);
            this.panel1.Controls.Add(this.btn_50_nearest_orders);
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.btn_absent_goods);
            this.panel1.Controls.Add(this.btn_least_count);
            this.panel1.ForeColor = System.Drawing.SystemColors.MenuText;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(777, 491);
            this.panel1.TabIndex = 0;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btn_list_garancy_safe);
            this.groupBox3.Controls.Add(this.btn_often_repairs_list);
            this.groupBox3.Controls.Add(this.btn_garancy_change);
            this.groupBox3.Controls.Add(this.btn_insert_in_Garancy_list);
            this.groupBox3.Controls.Add(this.btn_insert_repair_results);
            this.groupBox3.Controls.Add(this.btn_num_for_repair);
            this.groupBox3.Location = new System.Drawing.Point(444, 3);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(248, 382);
            this.groupBox3.TabIndex = 18;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Гарантия";
            // 
            // btn_list_garancy_safe
            // 
            this.btn_list_garancy_safe.Location = new System.Drawing.Point(20, 258);
            this.btn_list_garancy_safe.Name = "btn_list_garancy_safe";
            this.btn_list_garancy_safe.Size = new System.Drawing.Size(205, 23);
            this.btn_list_garancy_safe.TabIndex = 21;
            this.btn_list_garancy_safe.Text = "Вещи на гарантийной замене";
            this.btn_list_garancy_safe.UseVisualStyleBackColor = true;
            this.btn_list_garancy_safe.Click += new System.EventHandler(this.btn_list_garancy_safe_Click);
            // 
            // btn_often_repairs_list
            // 
            this.btn_often_repairs_list.Location = new System.Drawing.Point(20, 229);
            this.btn_often_repairs_list.Name = "btn_often_repairs_list";
            this.btn_often_repairs_list.Size = new System.Drawing.Size(205, 23);
            this.btn_often_repairs_list.TabIndex = 23;
            this.btn_often_repairs_list.Text = "Товары с частой поломкой";
            this.btn_often_repairs_list.UseVisualStyleBackColor = true;
            this.btn_often_repairs_list.Click += new System.EventHandler(this.btn_often_repairs_list_Click);
            // 
            // btn_garancy_change
            // 
            this.btn_garancy_change.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_garancy_change.Location = new System.Drawing.Point(20, 48);
            this.btn_garancy_change.Name = "btn_garancy_change";
            this.btn_garancy_change.Size = new System.Drawing.Size(205, 23);
            this.btn_garancy_change.TabIndex = 5;
            this.btn_garancy_change.Text = "Замена по гарантии";
            this.btn_garancy_change.UseVisualStyleBackColor = true;
            this.btn_garancy_change.Click += new System.EventHandler(this.btn_garancy_change_Click);
            // 
            // btn_insert_in_Garancy_list
            // 
            this.btn_insert_in_Garancy_list.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_insert_in_Garancy_list.Location = new System.Drawing.Point(20, 19);
            this.btn_insert_in_Garancy_list.Name = "btn_insert_in_Garancy_list";
            this.btn_insert_in_Garancy_list.Size = new System.Drawing.Size(205, 23);
            this.btn_insert_in_Garancy_list.TabIndex = 9;
            this.btn_insert_in_Garancy_list.Text = "Записать в гарантийный журнал";
            this.btn_insert_in_Garancy_list.UseVisualStyleBackColor = true;
            this.btn_insert_in_Garancy_list.Click += new System.EventHandler(this.btn_insert_in_Garancy_list_Click);
            // 
            // btn_insert_repair_results
            // 
            this.btn_insert_repair_results.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_insert_repair_results.Location = new System.Drawing.Point(20, 77);
            this.btn_insert_repair_results.Name = "btn_insert_repair_results";
            this.btn_insert_repair_results.Size = new System.Drawing.Size(205, 23);
            this.btn_insert_repair_results.TabIndex = 13;
            this.btn_insert_repair_results.Text = "Зафиксировать результаты ремонта";
            this.btn_insert_repair_results.UseVisualStyleBackColor = true;
            this.btn_insert_repair_results.Click += new System.EventHandler(this.btn_insert_repair_results_Click);
            // 
            // btn_num_for_repair
            // 
            this.btn_num_for_repair.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_num_for_repair.Location = new System.Drawing.Point(20, 107);
            this.btn_num_for_repair.Name = "btn_num_for_repair";
            this.btn_num_for_repair.Size = new System.Drawing.Size(205, 34);
            this.btn_num_for_repair.TabIndex = 15;
            this.btn_num_for_repair.Text = "Количество гарантийного ремонта по категории";
            this.btn_num_for_repair.UseVisualStyleBackColor = true;
            this.btn_num_for_repair.Click += new System.EventHandler(this.btn_num_for_repair_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_insert_talon);
            this.groupBox2.Controls.Add(this.btn_insert_credit);
            this.groupBox2.Controls.Add(this.btn_good_exists);
            this.groupBox2.Controls.Add(this.btn_insert_client);
            this.groupBox2.Controls.Add(this.btn_order_buing);
            this.groupBox2.Controls.Add(this.btn_transfer_to_shop);
            this.groupBox2.Controls.Add(this.btn_good_preorder);
            this.groupBox2.Controls.Add(this.btn_Insert_goods);
            this.groupBox2.Location = new System.Drawing.Point(7, 3);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(225, 256);
            this.groupBox2.TabIndex = 17;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Покупка";
            // 
            // btn_insert_talon
            // 
            this.btn_insert_talon.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_insert_talon.Location = new System.Drawing.Point(6, 19);
            this.btn_insert_talon.Name = "btn_insert_talon";
            this.btn_insert_talon.Size = new System.Drawing.Size(194, 23);
            this.btn_insert_talon.TabIndex = 1;
            this.btn_insert_talon.Text = "Выписать гарантийный талон";
            this.btn_insert_talon.UseVisualStyleBackColor = true;
            this.btn_insert_talon.Click += new System.EventHandler(this.btn_insert_talon_Click);
            // 
            // btn_insert_credit
            // 
            this.btn_insert_credit.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_insert_credit.Location = new System.Drawing.Point(6, 48);
            this.btn_insert_credit.Name = "btn_insert_credit";
            this.btn_insert_credit.Size = new System.Drawing.Size(194, 23);
            this.btn_insert_credit.TabIndex = 2;
            this.btn_insert_credit.Text = "Заключить кредитный договор";
            this.btn_insert_credit.UseVisualStyleBackColor = true;
            this.btn_insert_credit.Click += new System.EventHandler(this.btn_insert_credit_Click);
            // 
            // btn_good_exists
            // 
            this.btn_good_exists.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_good_exists.Location = new System.Drawing.Point(6, 222);
            this.btn_good_exists.Name = "btn_good_exists";
            this.btn_good_exists.Size = new System.Drawing.Size(194, 23);
            this.btn_good_exists.TabIndex = 12;
            this.btn_good_exists.Text = "Есть ли товар";
            this.btn_good_exists.UseVisualStyleBackColor = true;
            this.btn_good_exists.Click += new System.EventHandler(this.btn_good_exists_Click);
            // 
            // btn_insert_client
            // 
            this.btn_insert_client.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_insert_client.Location = new System.Drawing.Point(6, 77);
            this.btn_insert_client.Name = "btn_insert_client";
            this.btn_insert_client.Size = new System.Drawing.Size(194, 23);
            this.btn_insert_client.TabIndex = 3;
            this.btn_insert_client.Text = "Зарегистрировать Клиента";
            this.btn_insert_client.UseVisualStyleBackColor = true;
            this.btn_insert_client.Click += new System.EventHandler(this.btn_insert_client_Click);
            // 
            // btn_order_buing
            // 
            this.btn_order_buing.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_order_buing.Location = new System.Drawing.Point(6, 106);
            this.btn_order_buing.Name = "btn_order_buing";
            this.btn_order_buing.Size = new System.Drawing.Size(194, 23);
            this.btn_order_buing.TabIndex = 4;
            this.btn_order_buing.Text = "Оформить покупку";
            this.btn_order_buing.UseVisualStyleBackColor = true;
            this.btn_order_buing.Click += new System.EventHandler(this.btn_order_buing_Click);
            // 
            // btn_transfer_to_shop
            // 
            this.btn_transfer_to_shop.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_transfer_to_shop.Location = new System.Drawing.Point(6, 164);
            this.btn_transfer_to_shop.Name = "btn_transfer_to_shop";
            this.btn_transfer_to_shop.Size = new System.Drawing.Size(194, 23);
            this.btn_transfer_to_shop.TabIndex = 14;
            this.btn_transfer_to_shop.Text = "Отправить в магазин";
            this.btn_transfer_to_shop.UseVisualStyleBackColor = true;
            this.btn_transfer_to_shop.Click += new System.EventHandler(this.btn_transfer_to_shop_Click);
            // 
            // btn_good_preorder
            // 
            this.btn_good_preorder.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_good_preorder.Location = new System.Drawing.Point(6, 135);
            this.btn_good_preorder.Name = "btn_good_preorder";
            this.btn_good_preorder.Size = new System.Drawing.Size(194, 23);
            this.btn_good_preorder.TabIndex = 6;
            this.btn_good_preorder.Text = "Оформить заказ товара";
            this.btn_good_preorder.UseVisualStyleBackColor = true;
            this.btn_good_preorder.Click += new System.EventHandler(this.btn_good_preorder_Click);
            // 
            // btn_Insert_goods
            // 
            this.btn_Insert_goods.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_Insert_goods.Location = new System.Drawing.Point(6, 193);
            this.btn_Insert_goods.Name = "btn_Insert_goods";
            this.btn_Insert_goods.Size = new System.Drawing.Size(194, 23);
            this.btn_Insert_goods.TabIndex = 8;
            this.btn_Insert_goods.Text = "Приёмка Товара";
            this.btn_Insert_goods.UseVisualStyleBackColor = true;
            this.btn_Insert_goods.Click += new System.EventHandler(this.btn_Insert_goods_Click);
            // 
            // btn_balance_price
            // 
            this.btn_balance_price.Location = new System.Drawing.Point(7, 352);
            this.btn_balance_price.Name = "btn_balance_price";
            this.btn_balance_price.Size = new System.Drawing.Size(200, 23);
            this.btn_balance_price.TabIndex = 21;
            this.btn_balance_price.Text = "Балансовый Прайс";
            this.btn_balance_price.UseVisualStyleBackColor = true;
            this.btn_balance_price.Click += new System.EventHandler(this.btn_balance_price_Click);
            // 
            // btn_50_nearest_orders
            // 
            this.btn_50_nearest_orders.Location = new System.Drawing.Point(7, 381);
            this.btn_50_nearest_orders.Name = "btn_50_nearest_orders";
            this.btn_50_nearest_orders.Size = new System.Drawing.Size(200, 23);
            this.btn_50_nearest_orders.TabIndex = 20;
            this.btn_50_nearest_orders.Text = "Показать 50 Ближайших Заказов";
            this.btn_50_nearest_orders.UseVisualStyleBackColor = true;
            this.btn_50_nearest_orders.Click += new System.EventHandler(this.btn_50_nearest_orders_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Silver;
            this.groupBox1.Controls.Add(this.btn_AVG_prices_category);
            this.groupBox1.Controls.Add(this.btn_money_of_employer);
            this.groupBox1.Controls.Add(this.btn_money_per_this_month);
            this.groupBox1.Controls.Add(this.btn_clients_by_age);
            this.groupBox1.Controls.Add(this.btn_employer_info);
            this.groupBox1.Controls.Add(this.btn_money_per_this_year);
            this.groupBox1.Controls.Add(this.btn_credit_part);
            this.groupBox1.Controls.Add(this.btn_client_info);
            this.groupBox1.Controls.Add(this.btn_max_price_category);
            this.groupBox1.Controls.Add(this.btn_sells_for_Month_year);
            this.groupBox1.Controls.Add(this.btn_GetPriceList);
            this.groupBox1.Controls.Add(this.btn_show_nearest_preorders);
            this.groupBox1.Controls.Add(this.btn_sells_for_year);
            this.groupBox1.Location = new System.Drawing.Point(238, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(200, 485);
            this.groupBox1.TabIndex = 16;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Статистика";
            // 
            // btn_AVG_prices_category
            // 
            this.btn_AVG_prices_category.Location = new System.Drawing.Point(15, 239);
            this.btn_AVG_prices_category.Name = "btn_AVG_prices_category";
            this.btn_AVG_prices_category.Size = new System.Drawing.Size(170, 23);
            this.btn_AVG_prices_category.TabIndex = 22;
            this.btn_AVG_prices_category.Text = "Средняя Цена по категории";
            this.btn_AVG_prices_category.UseVisualStyleBackColor = true;
            this.btn_AVG_prices_category.Click += new System.EventHandler(this.btn_AVG_prices_category_Click);
            // 
            // btn_money_of_employer
            // 
            this.btn_money_of_employer.Location = new System.Drawing.Point(15, 446);
            this.btn_money_of_employer.Name = "btn_money_of_employer";
            this.btn_money_of_employer.Size = new System.Drawing.Size(170, 23);
            this.btn_money_of_employer.TabIndex = 20;
            this.btn_money_of_employer.Text = "Прибыль по сотрудникам";
            this.btn_money_of_employer.UseVisualStyleBackColor = true;
            // 
            // btn_money_per_this_month
            // 
            this.btn_money_per_this_month.Location = new System.Drawing.Point(15, 388);
            this.btn_money_per_this_month.Name = "btn_money_per_this_month";
            this.btn_money_per_this_month.Size = new System.Drawing.Size(170, 23);
            this.btn_money_per_this_month.TabIndex = 19;
            this.btn_money_per_this_month.Text = "Продажи за текущий месяц";
            this.btn_money_per_this_month.UseVisualStyleBackColor = true;
            this.btn_money_per_this_month.Click += new System.EventHandler(this.btn_money_per_this_month_Click);
            // 
            // btn_clients_by_age
            // 
            this.btn_clients_by_age.Location = new System.Drawing.Point(15, 359);
            this.btn_clients_by_age.Name = "btn_clients_by_age";
            this.btn_clients_by_age.Size = new System.Drawing.Size(170, 23);
            this.btn_clients_by_age.TabIndex = 18;
            this.btn_clients_by_age.Text = "Клиенты по возрасту";
            this.btn_clients_by_age.UseVisualStyleBackColor = true;
            this.btn_clients_by_age.Click += new System.EventHandler(this.btn_clients_by_age_Click);
            // 
            // btn_employer_info
            // 
            this.btn_employer_info.Location = new System.Drawing.Point(15, 330);
            this.btn_employer_info.Name = "btn_employer_info";
            this.btn_employer_info.Size = new System.Drawing.Size(170, 23);
            this.btn_employer_info.TabIndex = 17;
            this.btn_employer_info.Text = "Информация о Сотруднике";
            this.btn_employer_info.UseVisualStyleBackColor = true;
            this.btn_employer_info.Click += new System.EventHandler(this.btn_employer_info_Click);
            // 
            // btn_money_per_this_year
            // 
            this.btn_money_per_this_year.Location = new System.Drawing.Point(15, 417);
            this.btn_money_per_this_year.Name = "btn_money_per_this_year";
            this.btn_money_per_this_year.Size = new System.Drawing.Size(170, 23);
            this.btn_money_per_this_year.TabIndex = 15;
            this.btn_money_per_this_year.Text = "Продажи за текущий год";
            this.btn_money_per_this_year.UseVisualStyleBackColor = true;
            // 
            // btn_credit_part
            // 
            this.btn_credit_part.Location = new System.Drawing.Point(15, 268);
            this.btn_credit_part.Name = "btn_credit_part";
            this.btn_credit_part.Size = new System.Drawing.Size(170, 23);
            this.btn_credit_part.TabIndex = 16;
            this.btn_credit_part.Text = "Доля покупок в кредит";
            this.btn_credit_part.UseVisualStyleBackColor = true;
            this.btn_credit_part.Click += new System.EventHandler(this.btn_credit_part_Click);
            // 
            // btn_client_info
            // 
            this.btn_client_info.Location = new System.Drawing.Point(15, 301);
            this.btn_client_info.Name = "btn_client_info";
            this.btn_client_info.Size = new System.Drawing.Size(170, 23);
            this.btn_client_info.TabIndex = 14;
            this.btn_client_info.Text = "Информация о Клиенте";
            this.btn_client_info.UseVisualStyleBackColor = true;
            this.btn_client_info.Click += new System.EventHandler(this.btn_client_info_Click);
            // 
            // btn_max_price_category
            // 
            this.btn_max_price_category.Location = new System.Drawing.Point(15, 214);
            this.btn_max_price_category.Name = "btn_max_price_category";
            this.btn_max_price_category.Size = new System.Drawing.Size(170, 23);
            this.btn_max_price_category.TabIndex = 12;
            this.btn_max_price_category.Text = "Max Цены по категориям";
            this.btn_max_price_category.UseVisualStyleBackColor = true;
            this.btn_max_price_category.Click += new System.EventHandler(this.btn_max_price_category_Click);
            // 
            // btn_sells_for_Month_year
            // 
            this.btn_sells_for_Month_year.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_sells_for_Month_year.Location = new System.Drawing.Point(15, 106);
            this.btn_sells_for_Month_year.Name = "btn_sells_for_Month_year";
            this.btn_sells_for_Month_year.Size = new System.Drawing.Size(170, 23);
            this.btn_sells_for_Month_year.TabIndex = 10;
            this.btn_sells_for_Month_year.Text = "Продажи за Месяц Года";
            this.btn_sells_for_Month_year.UseVisualStyleBackColor = true;
            this.btn_sells_for_Month_year.Click += new System.EventHandler(this.btn_sells_for_Month_year_Click);
            // 
            // btn_GetPriceList
            // 
            this.btn_GetPriceList.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_GetPriceList.Location = new System.Drawing.Point(15, 48);
            this.btn_GetPriceList.Name = "btn_GetPriceList";
            this.btn_GetPriceList.Size = new System.Drawing.Size(170, 23);
            this.btn_GetPriceList.TabIndex = 11;
            this.btn_GetPriceList.Text = "Сформировать прайс";
            this.btn_GetPriceList.UseVisualStyleBackColor = true;
            this.btn_GetPriceList.Click += new System.EventHandler(this.btn_GetPriceList_Click);
            // 
            // btn_show_nearest_preorders
            // 
            this.btn_show_nearest_preorders.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_show_nearest_preorders.Location = new System.Drawing.Point(15, 19);
            this.btn_show_nearest_preorders.Name = "btn_show_nearest_preorders";
            this.btn_show_nearest_preorders.Size = new System.Drawing.Size(170, 23);
            this.btn_show_nearest_preorders.TabIndex = 7;
            this.btn_show_nearest_preorders.Text = "Показать Ближайшие Заказы";
            this.btn_show_nearest_preorders.UseVisualStyleBackColor = true;
            this.btn_show_nearest_preorders.Click += new System.EventHandler(this.btn_show_nearest_preorders_Click);
            // 
            // btn_sells_for_year
            // 
            this.btn_sells_for_year.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btn_sells_for_year.Location = new System.Drawing.Point(15, 77);
            this.btn_sells_for_year.Name = "btn_sells_for_year";
            this.btn_sells_for_year.Size = new System.Drawing.Size(170, 23);
            this.btn_sells_for_year.TabIndex = 9;
            this.btn_sells_for_year.Text = "Продажи за Год";
            this.btn_sells_for_year.UseVisualStyleBackColor = true;
            this.btn_sells_for_year.Click += new System.EventHandler(this.btn_sells_for_year_Click);
            // 
            // btn_absent_goods
            // 
            this.btn_absent_goods.Location = new System.Drawing.Point(7, 281);
            this.btn_absent_goods.Name = "btn_absent_goods";
            this.btn_absent_goods.Size = new System.Drawing.Size(205, 36);
            this.btn_absent_goods.TabIndex = 19;
            this.btn_absent_goods.Text = "Количество видов отсутствующих на складе товаров";
            this.btn_absent_goods.UseVisualStyleBackColor = true;
            this.btn_absent_goods.Click += new System.EventHandler(this.btn_absent_goods_Click);
            // 
            // btn_least_count
            // 
            this.btn_least_count.Location = new System.Drawing.Point(7, 323);
            this.btn_least_count.Name = "btn_least_count";
            this.btn_least_count.Size = new System.Drawing.Size(205, 23);
            this.btn_least_count.TabIndex = 13;
            this.btn_least_count.Text = "Детали наименьшего количества";
            this.btn_least_count.UseVisualStyleBackColor = true;
            this.btn_least_count.Click += new System.EventHandler(this.btn_least_count_Click);
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
            this.подключитьсяКБазеToolStripMenuItem.Click += new System.EventHandler(this.подключитьсяКБазеToolStripMenuItem_Click);
            // 
            // отключитьсяОтБазыToolStripMenuItem
            // 
            this.отключитьсяОтБазыToolStripMenuItem.Name = "отключитьсяОтБазыToolStripMenuItem";
            this.отключитьсяОтБазыToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.отключитьсяОтБазыToolStripMenuItem.Text = "Отключиться от Базы";
            this.отключитьсяОтБазыToolStripMenuItem.Click += new System.EventHandler(this.отключитьсяОтБазыToolStripMenuItem_Click);
            // 
            // выходToolStripMenuItem
            // 
            this.выходToolStripMenuItem.Name = "выходToolStripMenuItem";
            this.выходToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.выходToolStripMenuItem.Text = "Выход";
            this.выходToolStripMenuItem.Click += new System.EventHandler(this.выходToolStripMenuItem_Click);
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
            this.добавитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.добавитьToolStripMenuItem.Text = "Добавить";
            this.добавитьToolStripMenuItem.Click += new System.EventHandler(this.добавитьToolStripMenuItem_Click);
            // 
            // изменитьToolStripMenuItem
            // 
            this.изменитьToolStripMenuItem.Name = "изменитьToolStripMenuItem";
            this.изменитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.изменитьToolStripMenuItem.Text = "Изменить";
            this.изменитьToolStripMenuItem.Click += new System.EventHandler(this.изменитьToolStripMenuItem_Click);
            // 
            // удалитьToolStripMenuItem
            // 
            this.удалитьToolStripMenuItem.Name = "удалитьToolStripMenuItem";
            this.удалитьToolStripMenuItem.Size = new System.Drawing.Size(128, 22);
            this.удалитьToolStripMenuItem.Text = "Удалить";
            this.удалитьToolStripMenuItem.Click += new System.EventHandler(this.удалитьToolStripMenuItem_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(782, 540);
            this.Controls.Add(this.menuStrip);
            this.Controls.Add(this.Form_tabControl);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.Form_tabControl.ResumeLayout(false);
            this.tabPage_data.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.Form_panel.ResumeLayout(false);
            this.Form_panel.PerformLayout();
            this.tabPage_usability.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
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
        private System.Windows.Forms.ComboBox Form_comboBox_tablename;
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
        private System.Windows.Forms.Button btn_insert_in_Garancy_list;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btn_Insert_goods;
        private System.Windows.Forms.Button btn_show_nearest_preorders;
        private System.Windows.Forms.Button btn_good_preorder;
        private System.Windows.Forms.Button btn_garancy_change;
        private System.Windows.Forms.Button btn_order_buing;
        private System.Windows.Forms.Button btn_insert_client;
        private System.Windows.Forms.Button btn_insert_credit;
        private System.Windows.Forms.Button btn_insert_talon;
        private System.Windows.Forms.Button btn_num_for_repair;
        private System.Windows.Forms.Button btn_transfer_to_shop;
        private System.Windows.Forms.Button btn_insert_repair_results;
        private System.Windows.Forms.Button btn_good_exists;
        private System.Windows.Forms.Button btn_GetPriceList;
        private System.Windows.Forms.Button btn_sells_for_Month_year;
        private System.Windows.Forms.Button btn_sells_for_year;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_balance_price;
        private System.Windows.Forms.Button btn_50_nearest_orders;
        private System.Windows.Forms.Button btn_absent_goods;
        private System.Windows.Forms.Button btn_clients_by_age;
        private System.Windows.Forms.Button btn_employer_info;
        private System.Windows.Forms.Button btn_credit_part;
        private System.Windows.Forms.Button btn_money_per_this_year;
        private System.Windows.Forms.Button btn_client_info;
        private System.Windows.Forms.Button btn_least_count;
        private System.Windows.Forms.Button btn_max_price_category;
        private System.Windows.Forms.Button btn_often_repairs_list;
        private System.Windows.Forms.Button btn_AVG_prices_category;
        private System.Windows.Forms.Button btn_list_garancy_safe;
        private System.Windows.Forms.Button btn_money_of_employer;
        private System.Windows.Forms.Button btn_money_per_this_month;
    }
}

