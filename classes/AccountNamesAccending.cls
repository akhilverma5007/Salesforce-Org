public class AccountNamesAccending {
    public static void accontNamesOrder(){
        List<Account> accountList = new List<Account>();
        	accountlist = [SELECT Id, Name FROM Account ORDER BY Name ASC LIMIT 50000];
        System.debug(accountlist);
    }
}