using System.Data;
using System.Windows.Forms;

namespace УПСиОП
{
    public partial class Form_view_table : Form
    {
        public Form_view_table(DataTable table)
        {
            InitializeComponent();
            dataGridView_form.DataSource=table;
            this.Name=table.TableName;
        }

    }
}
