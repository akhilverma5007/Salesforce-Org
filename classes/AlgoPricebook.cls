public class AlgoPricebook {
    public static void algoPricebookEntry() {
        
        // Creating Algo Pricebook
        Pricebook2 newPricebook = new Pricebook2();
        newPricebook.Name = 'Algo Pricebook';
        newPricebook.IsActive = true;
        insert newPricebook;
        
        // Retrieve the Algo Pricebook Id
        Pricebook2 retrieveAlgoPricebook = [SELECT Id, Name FROM Pricebook2 WHERE Name = 'Algo Pricebook' LIMIT 1];
        
        // Create 10 Products
        List<Product2> productsList = new List<Product2>();
        for(Integer i = 1; i <= 10; i++){
            Product2 prod = new Product2();
            prod.Name = 'TestProducts ' + i;
            prod.IsActive = true;
            productsList.add(prod);
        }
        insert productsList;
        
        // Create Pricebook Entries for each Product in the Algo Pricebook
        List<PricebookEntry> listOfPricebookEntries = new List<PricebookEntry>();
        for(Product2 prod : productsList){
            PricebookEntry prcEntry = new PriceBookEntry();
            prcEntry.Pricebook2Id = retrieveAlgoPricebook.Id; // Use the retrieved Pricebook Id
            prcEntry.Product2Id = prod.Id;
            prcEntry.UnitPrice = 100;
            listOfPricebookEntries.add(prcEntry);
        }
        insert listOfPricebookEntries;
        
    }
}