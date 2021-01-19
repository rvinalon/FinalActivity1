namespace DataAccess
{
    public class Order
    {
        public int TransactionId { get; set; }
        public string ProductCode { get; set; }
        public int Quantity { get; set; }
        public decimal Amount { get; set; }
        public decimal SuggestedRetailPrice { get; set; }
    }
}
