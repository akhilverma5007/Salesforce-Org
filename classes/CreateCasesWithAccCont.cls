public class CreateCasesWithAccCont {
    public static void createCasesRelations(){
        List<Case> caseList = new List<Case>();
        List<Account> accountList = new List<Account>();
        List<Contact> contactList = new List<Contact>();
        
        for(Integer i = 1; i <= 5; i++){
            Account eachAccount = new Account();
            	eachAccount.Name = 'NewCase Testing Acc ' + i;
            	accountList.add(eachAccount);
        }
        insert accountList;
        
        List<Account> newAcctList = [SELECT Id, Name From Account WHERE Name LIKE 'NewCase Testing Acc%' LIMIT 5];
        
        
        for(Integer i = 1; i <= 5; i++){
            Contact eachContact = new Contact();
            	eachContact.LastName = 'NewCase Testing Con ' + i;
            	eachContact.AccountId = newAcctList[i-1].Id;
            	contactList.add(eachContact);
        }
        insert contactList;
        
        List<Contact> newContactList = [SELECT Id, Name FROM Contact WHERE LastName LIKE 'NewCase Testing Con%' LIMIT 5];
        
        for(Integer i = 1; i <= 5; i++){
            Case eachCase = new Case();
            	eachCase.AccountId = newAcctList[i-1].Id;
            	eachCase.ContactId = newContactList[i-1].Id;
            caseList.add(eachCase);
        }
        insert caseList;
        System.debug(caseList);
    }
}