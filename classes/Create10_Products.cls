public class Create10_Products {
    public static void createProducts(){
        List<Product2> listOfProducts = new List<Product2>();
        for(Integer i = 0; i < 10; i++){
            Product2 eachProduct = new Product2();
            eachProduct.Name = 'Product00' + i;
            listOfProducts.add(eachProduct);
        }
      	insert listOfProducts;
        System.debug(listOfProducts);
    }
}