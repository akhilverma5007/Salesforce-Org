@isTest
public class CommonTestSetup {
    
    @testSetup
    public static void setup(){
         List<Account> accountList = new List<Account>();
        for(Integer i = 1; i <= 200; i++){
            accountList.add(new Account(Name = 'TestSetupAccount' + i, Industry = 'Software', Rating = 'Hot', Phone = '987866742' + i));
        }
        insert accountList;
    //TestSetupAccount0   9878667420
    //TestSetupAccount1   9878667421
    //TestSetupAccount2   9878667422
    //TestSetupAccount3   9878667423

    }
    
    @isTest
    public static void testMethod1(){
        Account accRecord = [SELECT Id, Name FROM Account WHERE Name = 'TestSetupAccount3' LIMIT 1];
        	accRecord.Phone = '999999999';
        	update accRecord;
           }
    
    @isTest
    public static void testMethod2(){
       
    Account acct = [SELECT Id, Name FROM Account WHERE Name = 'TestSetupAccount0' LIMIT 1];
        
        //Verifying that test account created by test setup method is unaltered
        System.assertEquals('999999999', acct.Phone);
        System.assertNotEquals(null, acct.Phone);
    }
}