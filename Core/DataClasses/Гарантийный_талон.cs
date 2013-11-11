namespace Core
{

    public partial class Гарантийный_талон
    {
        public Гарантийный_талон()
        {
        }
    
        public System.DateTime Дата_время { get; set; }
        public string Номер_паспорта_сотрудника { get; set; }
        public int Код_гарантийного_талона { get; set; }
        public string Серийный_номер_экземпляра { get; set; }
    }
}
