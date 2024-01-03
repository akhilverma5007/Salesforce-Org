public class AccountsReverseOrder {
    public static void accountNameReverse(){
     
        String accountName_Original = 'Company';
        String accountName_Reversed = '';
        
        for(Integer i = accountName_Original.length() - 1; i >= 0; i--){
            accountName_Reversed += accountName_Original.substring(i, i + 1);
        }
        System.debug(accountName_Reversed);
    }
}