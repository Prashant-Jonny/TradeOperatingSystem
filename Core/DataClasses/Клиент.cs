namespace Core
{
    using System;

    public partial class Клиент
    {
        public Клиент()
        {
        }
    
        public string ФИО_клиента { get; set; }
        public Nullable<System.DateTime> Дата_рождения { get; set; }
        public string Адрес_клиента { get; set; }
        public string Телефон_домашний { get; set; }
        public string Телефон_мобильный { get; set; }
        public string Номер_паспорта_клиента { get; set; }
    }
}
