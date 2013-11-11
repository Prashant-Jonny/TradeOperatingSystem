namespace Core
{
    using System;

    public partial class Товар
    {
        public Товар()
        {
            
        }
        public string ID_товара { get; set; }
        public string Название_товара { get; set; }
        public string Категория { get; set; }
        public Nullable<int> Количество_склад { get; set; }
        public Nullable<decimal> Цена { get; set; }
        public Nullable<int> Количество_магазин { get; set; }
        public Nullable<int> Срок_гарантии { get; set; }
        public Nullable<int> Код_сервисного_центра { get; set; }

    }
}
