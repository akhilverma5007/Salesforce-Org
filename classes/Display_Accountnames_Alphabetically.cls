public class Display_Accountnames_Alphabetically {
    public static void displayAccountNames(){
        List<Account> accountNames = [SELECT Name FROM Account ORDER BY Name ASC LIMIT 50000];
        System.debug(accountNames);
    }
}