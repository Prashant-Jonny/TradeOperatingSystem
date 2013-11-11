namespace Core
{
    using System;

    public partial class Заказ_Товар_Поставщик
    {
        public int Код_поставщика { get; set; }
        public Nullable<int> Количество_заказано { get; set; }
        public string ID_товара { get; set; }
        public int ID_Заказа { get; set; }
        public Nullable<System.DateTime> Дата_заказа { get; set; }
        public string Номер_паспорта_клиента { get; set; }
    }
}
