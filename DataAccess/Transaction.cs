using System.Collections.Generic;

namespace DataAccess
{
    public class Transaction
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public List<Order> Orders { get; set; }
        public decimal Total { get; set; }
        public decimal VatAmount { get; set; }
        public decimal Discount { get; set; }
        public decimal GrandTotal { get; set; }
    }
}
