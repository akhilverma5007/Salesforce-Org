public class Create10ContactsWithDiffAccount {
    public static void create10Contacts(){
 
        List<Account> accountRecords = new List<Account>();
        List<Contact> contactRecords = new List<Contact>();
        
        for(Integer i = 1; i <= 10; i++){
            Account eachAccount = new Account(Name = '3JanRecord ' + i);
            accountRecords.add(eachAccount);
        }
        insert accountRecords;
        
        for(Integer i = 1; i <= 10; i++){
            Contact eachContact = new Contact(LastName = 'ContactTestRecord ' + i, AccountId = accountRecords[0].Id);
            contactRecords.add(eachContact);
        }
        insert contactRecords;
        System.debug(contactRecords);
    
    }
}