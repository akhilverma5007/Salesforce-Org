//Transaction Control in Apex
public class TransactionControlUsingValidation {
    public static void transactionMethod(){
        
    Account acc = new Account(
		Name = 'Akhil Verma Test Account');
		insert acc;

	Account accFetch = [SELECT Id, Name FROM Account WHERE Name = 'Akhil Verma Test Account' LIMIT 1];
    	accFetch.Name = 'New Akhil Verma Test Account';
    	update accFetch;
		System.debug('----' + accFetch);

        
    //Add a save point to save records till now
    //And Add a try catch to roll back
    
        System.Savepoint spt = Database.setSavepoint();
        
        try{
	Contact con = new Contact(
		LastName = 'Akhil Verma Test Contact');
		insert con;
        } catch (Exception ex){
            Database.rollback(spt);
        }
	}
}

//WHole transaction will be rolled back back
//create a validation rule at Contact Object "false"