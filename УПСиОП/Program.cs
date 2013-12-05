using System.Windows.Forms;
using Core;

namespace УПСиОП
{
   public static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        private static DBFacade _DB;
        public static DBFacade DB
        {
           get
            {
                if (_DB==null)
                ConnectToBase();
                return _DB;
            }
           
        }
        public static void ConnectToBase()
        {
           _DB=new DBFacade();
        }
        public static void DisconnectBase()
        {
            _DB=null;
        }
        public static string userAccessLevel
        {
            get;
            set;
        }

        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form_Auth());
            Application.Run(new MainForm(userAccessLevel));
            Application.Run(new MainForm("admin"));
        }
    }
}
