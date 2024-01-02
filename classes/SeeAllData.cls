@isTest 
public class SeeAllData {
    
    //Only this method will be able to access salesforce data
    @isTest(seeAllData = true)
    static void accountTest(){
        List<Account> accountList = [SELECT Id, Name, Phone, Fax, Industry, Rating, Description FROM Account LIMIT 15];
        System.assertEquals(15, accountList.size(), 'Expected Accoiunts are not matching!');
        //(expected, actual, msg)
    }
    
    @isTest
    static void contactTest(){
        Account acc = new Account(Name = 'TestAcct', Industry = 'Education', Rating = 'Hot', Phone = '999-1112');
        insert acc;
        
        Contact con = new Contact(LastName = 'TestCon', AccountId = acc.Id);
        insert con;
        
        List<Contact> contactList = [SELECT Id, Name, Email, Phone FROM Contact LIMIT 1];
    	System.assertEquals(1, contactList.size(), 'There are no contacts available in Database!!');
    }
    
    //@isTest
    //static void loadDataTest(){
        //List<Account> sonjectList = (List<Account>)Test.loadData(Schema.sobjectType, 'testAccounts');
        //System.assertEquals(3, sobjectList.size()); 
            //Test.loadData(Schema.sobjectType, staticResourceName) 
            //for static resource Go-> Setup-> StaticResource -> New-> testAccounts
    //}
   
    //@isTest
    //static void privatePropDemo(){
	//ApexHoursClass.updatePriority(newAccount(Name='Salesforce Inc.', Rating = 'High'));
    //}
}