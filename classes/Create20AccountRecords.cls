public class Create20AccountRecords {
    public static void create20Accounts(){
        List<Account> accountList = new List<Account>();
        for(Integer i = 1; i <= 20; i++){
            Account eachAccount = new Account();
            	eachAccount.Name = 'Account ' + i;
            	eachAccount.NumberOfEmployees = 2000;
            	eachAccount.Website = 'www.ww.com';
            	eachAccount.BillingCity = 'Delhi';
            	eachAccount.Phone = '23453322';
            accountList.add(eachAccount);
        }
        System.debug('Account List>>> ' + accountList);
        insert accountList;
    }
}