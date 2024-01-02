/*Write an Apex program to store all the odd numbers in a List starting from 1 until 20. 
Only numbers stored at even positions in the List should be added to get their sum 
which should be output to the Debug Log.
(Hint: Use a while loop and if else along with System. debug())*/
public class Numapulations_In_Apex {
    public static void numpulations_In_Apex(){
       
/*  List<Integer> listOfNumbers = new List<Integer>();
        Integer sum = 0; 
        for(Integer i = 1; i <= 20; i++){
            if(i % 2 != 0){
                listOfNumbers.add(i);
            }if(i % 2 == 0){
                sum = i + sum;
            }
        }
        System.debug('List of Odd Numbers: ' + listOfNumbers);
        System.debug('Sum of Even Numbers: ' + sum); 
*/
        
        Integer sum = 0; 
        List<Integer> listOfNumbers = new List<Integer>();
        for(Integer i=1; i<=20; i+=2){
            listOfNumbers.add(i);
        }
        
        for (Integer j = 1; j < listOfNumbers.size(); j += 2) {
            sum += listOfNumbers[j];
        }
        System.debug('List of odd numbers: ' + listOfNumbers);
        System.debug('Sum of Numbers at Even Positions: ' + sum);
    }
}