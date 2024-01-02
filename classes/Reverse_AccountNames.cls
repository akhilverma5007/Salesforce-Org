public class Reverse_AccountNames {
    public static void reverseAccountName(){
		String accountName = 'Company';
        String reversedName = '';

        for (Integer i = accountName.length() - 1; i >= 0; i--) {
            reversedName += accountName.substring(i, i + 1);
        }

        System.debug('Original Name: ' + accountName);
        System.debug('Reversed Name: ' + reversedName);
    }   
}