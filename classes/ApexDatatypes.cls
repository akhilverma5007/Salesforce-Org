public class ApexDatatypes {
    public static void differentDatatypes(){
        String str = 'Akhil Verma';   						//String
        System.debug('Blob' + Blob.valueOf(str));  			//Blob
        
        Integer num = 3433;
		Blob numBlob = Blob.valueOf(String.valueOf(num));
		System.debug('Blob: ' + numBlob.toString());
        
        Boolean check = True;								//Boolean
        System.debug(check);
        
        Date dateCheck = Date.today();
        System.debug(dateCheck);
        
        System.debug('Date' + Date.newInstance(2023,11,28)); //Date
        
        Datetime currDateTime = DateTime.now();				 //DateTime
        System.debug('DateTime' + currDateTime);
        
        Time currTime = Time.newInstance(22,33,33,00);       //Time
        System.debug('Time' + currTime);
        
        Decimal decValue = 34.43;							 //Decimal
        System.debug('Decimal Value '+ decValue);  
        
        Id recordId = [Select Id From Account Limit 1][0].Id; //Id
        System.debug('Record Id ' + recordId);
        
        Integer intValue = 23;								//Integer
        System.debug('Integer' + intValue);
        
        Long longValue = 383900392L;						//Long
        System.debug('Long Value ' + longValue);
        
        Object obj = 0;										//Object	
        System.debug('Object Value' + obj);
    }  
}