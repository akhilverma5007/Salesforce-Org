public class FindProductsHavingDescA {
    public static void findProductDescription(){
        List<Product2> listOfProducts = new List<Product2>();
        listOfProducts = [SELECT Id, Name, Description FROM Product2 WHERE Description LIKE '%A%' LIMIT 500000];
        System.debug(listOfProducts);
    }
}