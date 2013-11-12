using System.Data;
using System.Windows.Forms;

namespace УПСиОП
{
    public partial class FormEdit : Form
    {
        DataTable _table;
        string _tablename;
        bool _forediting;
        public FormEdit(ref DataTable table, string[] KeyFieldNames, string tablename)  //used for editing existing data
        {
            InitializeComponent();
            _forediting=true;
            _tablename=tablename;
            dataGridView_editing.DataSource=table;
            for (int i=0; i<KeyFieldNames.Length; i++)
            {
                dataGridView_editing.Rows[0].Cells[KeyFieldNames[i]].ReadOnly=true;
            }
        }  
        public FormEdit(string _cur_table_name) //used for insertion data
        {
            InitializeComponent();
            _forediting=false;
            this._tablename=_cur_table_name;
            dataGridView_editing.DataSource=Program._DB.GetTableScheme(_cur_table_name);

        }
        private void btn_save_Click(object sender, System.EventArgs e)
        {
            _table=(dataGridView_editing.DataSource as DataTable).Copy();
            if (_forediting)
                Program._DB.UpdateRow(_tablename, _table);
            else
                Program._DB.InsertRow(_tablename, _table);
        }
        private void btn_exit_Click(object sender, System.EventArgs e)
        {
            this.Close();
        }
        
    }
}
