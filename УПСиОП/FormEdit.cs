using System.Data;
using System.Windows.Forms;
using Core;

namespace УПСиОП
{
    public partial class FormEdit : Form
    {
        DataTable _table;
        string _tablename;
        public FormEdit(ref DataTable table,string[] KeyFieldNames,string tablename)
        {
            InitializeComponent();
            _tablename=tablename;
            dataGridView_editing.DataSource=table;
            for (int i=0; i<KeyFieldNames.Length; i++)
            {
                dataGridView_editing.Rows[0].Cells[KeyFieldNames[i]].ReadOnly=true;
            }
        }
        public FormEdit()
        {
            InitializeComponent();
        }
        private void btn_save_Click(object sender, System.EventArgs e)
        {
            _table=(dataGridView_editing.DataSource as DataTable).Copy();
            Program._DB.UpdateRow(_tablename, _table);
        }

        private void btn_exit_Click(object sender, System.EventArgs e)
        {
            this.Close();
        }
        
    }
}
