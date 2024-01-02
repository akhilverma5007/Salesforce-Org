public class ApexCollections {
    public static void collectionTypes(){
//Collections: List
        //List of String
        List<String> listOfStrings = new List<String>{'akhil','verma','akhilverma'};
            listOfStrings.add('2332');
            listOfStrings.add('akhil');
            //System.debug('List Example: ' + listOfStrings);
        
        for(String abc : listOfStrings){
            System.debug(abc);
        }
        
        //List of Integers
        List<Integer> listOfNumbers = new List<Integer>{1,2,3,4,4,5};
            listOfNumbers.add(23);
        	listOfNumbers.add(33);
        
        for(Integer ls : listOfNumbers){
            System.debug('List Of Numbers: ' + ls);
        }
        
        //Differenec List / Array
        //The following two declarations are equivalent. The colors variable is declared using the List syntax.
			List<String> newColorsList = new List<String>{'akhil', 'arjun', 'nishu'};
        //Alternatively, the colors variable can be declared as an array but assigned to a list rather than an array.
    		String[] newColorsArray = new List<String>{'aaaaa','bbbbb','ccc'};
        
            newColorsList.add('extraString');
            System.debug(newColorsList);
            System.debug(newColorsArray);

            String color1 = newColorsList.get(0);
            String color2 = newColorsList[0];
            System.assertEquals(color1, color2);
            // Iterate over a list to read elements
            for(Integer i=0;i<newColorsList.size();i++) {
                // Write value to the debug log
                System.debug(newColorsList[i]);
            }
        
        //Collections: Set
        //Set of Strings
        Set<String> setOfStrings = new Set<String>{'akhil','verma','akhil','akhilverma'};
            setOfStrings.add('akhilverma');
        
        	System.debug(setOfStrings);
        
        //Set of Integers
        Set<Integer> setOfNumbers = new Set<Integer>{1,2,2,2,3,4,5};
            setOfNumbers.add(17);
        
        	System.debug(setOfNumbers);
        
        //Collections: Map
        //Map of Integer and String
        Map<Integer, String> mapOfIntegerString = new Map<Integer, String>();
            mapOfIntegerString.put(1, 'one');
    		mapOfIntegerString.put(2, 'two');
    		mapOfIntegerString.put(3, 'three');
        	
            System.debug('Map Of Integer And Strings: ' + mapOfIntegerString);
        	System.debug('Map : ' + mapOfIntegerString.get(2));
        
        //Map of String and String
        Map<String, String> mapOfStringString = new Map<String, String>();
            mapOfStringString.put('A', 'one');
    		mapOfStringString.put('B', 'two');
    		mapOfStringString.put('C', 'three');
    
    		System.debug(mapOfStringString);
        
        //Map of Integer and List<String>
        Map<Integer, List<String>> mapOfIntegerListOfString = new Map<Integer, List<String>>();
            mapOfIntegerListOfString.put(10, new List<String>{'akhil','verma'});
            mapOfIntegerListOfString.put(20, new List<String>{'abccc','abcsde'});
            
            System.debug(mapOfIntegerListOfString.get(1));
            System.debug(mapOfIntegerListOfString);
        
        //Map of Integer and List<Decimal>
        Map<Integer, List<Decimal>> mapOfIntegerListOfDecimal = new Map<Integer, List<Decimal>>();
        	mapOfIntegerListOfDecimal.put(1, new List<Decimal>{20.0,32.0,34.33});
        	mapOfIntegerListOfDecimal.put(2, new List<Decimal>{322.32,443.433,234.23});
        
        	System.debug(mapOfIntegerListOfDecimal);
        
        //Map of String and List<Integer>
        Map<String, List<Integer>> mapOfStringListOfInteger = new Map <String, List<Integer>>();
        	mapOfStringListOfInteger.put('First', new List<Integer>{23,23,234,233});
        	
        	System.debug(mapOfStringListOfInteger);
        
        //Map of String and Set<Integer>
        Map<String, Set<Integer>> mapOfStringSetOfInteger = new Map <String, Set<Integer>>();
        	mapOfStringSetOfInteger.put('First', new Set<Integer>{23,23,234,233});
        
        	System.debug(mapOfStringSetOfInteger);

    }
}