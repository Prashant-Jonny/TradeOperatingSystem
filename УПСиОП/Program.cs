using System;
using System.Windows.Forms;
using Core;

namespace УПСиОП
{
   public static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        public static DBFacade _DB; 
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}
