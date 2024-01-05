public class IntegerInReverseOrder {
    public static void integerReverseOrder(){
	
    Integer num = 12345;
    String numString = String.valueOf(num);
    String reversedStr = '';
        
       for(Integer i = numString.length() - 1; i >= 0; i--){
            reversedStr += numString.substring(i, i+1);
       }
        System.debug('Reversed Number: ' + reversedStr);
        
    }
}