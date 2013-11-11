namespace Core
{
    using System;

    public partial class Продажа
    {
        public Продажа()
        {
        }
        public Nullable<decimal> Цена { get; set; }
        public Nullable<int> Количество { get; set; }
        public string ID_товара { get; set; }
        public Nullable<int> Код_договора { get; set; }
        public string Тип_оплаты { get; set; }
        public int Код_гарантийного_талона { get; set; }
    }
}
