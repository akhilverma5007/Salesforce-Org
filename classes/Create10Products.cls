public class Create10Products {
    public static void createProducts(){
        List<Product2> productRecords = new List<Product2>();
        for(Integer i = 1; i <= 10; i++){
            Product2 eachProduct = new Product2(Name = 'Test Product ' + i);
            productRecords.add(eachProduct);
        }
        insert productRecords;
        System.debug(productRecords);
    }
}