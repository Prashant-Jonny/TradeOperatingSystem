namespace Core
{
    using System;

    public partial class Кредитный_договор
    {
        public Кредитный_договор()
        {
        }
    
        public int Код_договора { get; set; }
        public Nullable<decimal> Ежемесячная_выплата { get; set; }
        public Nullable<decimal> Первоначальный_взнос { get; set; }
        public Nullable<int> Срок_оплаты { get; set; }
        public string Номер_паспорта_клиента { get; set; }
    }
}
