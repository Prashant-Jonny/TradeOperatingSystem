namespace Core
{

    public partial class Сотрудник
    {
        public Сотрудник()
        {
           
        }
    
        public string Номер_паспорта_сотрудника { get; set; }
        public string ФИО_сотрудника { get; set; }
        public System.DateTime Дата_рождения { get; set; }
        public string Адрес_сотрудника { get; set; }
        public string Телефон_домашний { get; set; }
        public string Телефон_мобильный { get; set; }
        public string Должность { get; set; }    
    }
}
