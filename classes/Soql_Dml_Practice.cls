public class Soql_Dml_Practice {
    public static void practice_Questions(){
        //Write a method to insert an Account record. Also insert five related contacts to that same account.
        insertAccount();
        
        //Write a SOQL query to fetch the contact records that were inserted in previous question. 
		//(Hint: Use the CreatedDate field to add filter)
		fetchCreatedRecords();
        
        //Write a query on Contact object and fetch the Account details. Use child to parent relationship query.
        childToParent();
        
        //Write a query on Account object and fetch the related contacts. Use the parent to child relationship query.
        parentToChild();
    }
    
    static void insertAccount(){		       
		Account accountRec = new Account(
        	Name = 'Test 2 15Dec,2023'	
        );
        insert accountRec;
        
       	List<Contact> contactList = new List<Contact>();
        for(Integer i = 1; i <= 5; i++){
            Contact contactRec = new Contact(
            	LastName = 'Test Contact Of Test Acc' + i,
                AccountId = accountRec.Id
            );
            contactList.add(contactRec);
        }
        insert contactList;
    
        for(Contact each : contactList){
            System.debug('Contact Name ' + each.LastName + 'Contact Id ' + each.Id + 'Account Id ' + each.AccountId);
        }
    }
    
    static void fetchCreatedRecords(){
        List<Contact> contactList = [SELECT Id, Name, AccountId FROM Contact WHERE CreatedDate = TODAY AND Name LIKE 'Test Contact Of Test Acc%' Limit 10];
        System.debug('Contact List that were created in Problem Statement 1' + contactList);
    }
    
    static void childToParent(){
        List<Contact> contactList = [SELECT Id, Name, Account.Name, Account.Id FROM Contact LIMIT 50000];
        System.debug('Contact and Account details : Child To Parent '+ contactList);
    }
    
    static void parentToChild(){
        List<Account> accountList = [SELECT Id, Name, (SELECT Id, LastName FROM Contacts) FROM Account LIMIT 50000];
        System.debug('Contact and Account details : Parent To Child ' + accountList);
    }
    
}