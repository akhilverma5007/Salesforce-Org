public class StaticVsInstance {
    
	public String helloWorldString;      //Instance Member Variable
	private static final String DEFAULT_STRING;  //Static Member Variable
    
    static{   
        DEFAULT_STRING = 'Hello World';   //Static Initializer
    }
		
    public StaticVsInstance(){    //Constructor
		this(DEFAULT_STRING);
	}
	
	public StaticVsInstance(String stringToDisplay){   //Overloaded Constructor 
		this.helloWorldString = stringToDisplay;
	}
	
	public void printOutput(){   //Method
		System.debug('Display text: ' + this.helloWorldString);
    } 
    
    public static void printOutput1(){  //Static method
        System.debug('Display text from static method');
    }
}


//StaticVsInstance staticClass = new StaticVsInstance();
//staticClass.printOutput();

//StaticVsInstance staticClass = new StaticVsInstance('Hello Akhil');
//staticClass.printOutput();


//FOR CALLING STATIC METHOD
//StaticVsInstance.printOutput1();