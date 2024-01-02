public class ConditionalStatements {
    public static void typeOfConditions(){
        Integer totalSum = 0;
        List<Integer> listOfNumbers = new List<Integer>();
        for(Integer i = 0; i <= 10; i++){
            listOfNumbers.add(i);
        }
        System.debug('listOfNumbers' + listOfNumbers);
    
        for(Integer i = 1; i < listOfNumbers.size(); i++){
            if(Math.mod(listOfNumbers[i],2) == 0){
                totalSum = totalSum + listOfNumbers[i];
                System.debug('totalSum Value: ' + totalSum);
            }
        }
    System.debug('Final Submission: ' + totalSum);
    
    }
}