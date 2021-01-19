namespace DataAccess
{
    public class Product
    {
        public int Id { get; set; }
        public string Code{ get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public decimal SuggestedRetailPrice { get; set; }
    }
}
