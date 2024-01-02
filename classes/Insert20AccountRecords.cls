public class Insert20AccountRecords {
    public static void insertionOfRecords(){
        List<Account> accountList = new List<Account>();
        for(Integer i = 1; i <= 20; i++){
            Account accountInstance = new Account(
            	Name = 'TestRecords 15Dec2023- ' + i,
                NumberOfEmployees = 1000,
                Description = 'Hello These are test records.',
                Type = 'Prospect',
                Website = 'www.testaccounts.com'
            );
            accountList.add(accountInstance);
        }
        insert accountList;
        System.debug('account List>>>> ' + accountList);
    }
}