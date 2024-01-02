public class DataManupuLation {
    public static void differentTypesOfDmls(){
        
        //DML: Insert
        Opportunity eachOpportunity = new Opportunity();
        eachOpportunity.Name = 'Akhil Verma1';
        eachOpportunity.CloseDate = Date.today();
        eachOpportunity.Amount = 10000;
        eachOpportunity.StageName = 'Prospecting';
        eachOpportunity.AccountId = '0012w00001NMfU0AAL';
        //insert eachOpportunity;
    
      	Opportunity eachOpp = new Opportunity(
            Name = 'Akhil Verma2',
        	CloseDate = Date.today(),
        	Amount = 2000,
            StageName = 'Closed Won',
         	AccountId = '0012w00001NMfU0AAL');
    	//insert eachOpp;	
    
    	//DML: Update
    	//Opportunity opportunityRecord = [SELECT Id, Name, CloseDate, StageName, Amount, AccountId From Opportunity WHERE AccountId = '0012w00001NMfU0AAL' AND Name ='Akhil Verma1' LIMIT 1];
   		//opportunityRecord.Amount = 2000000;
        //update opportunityRecord
            
        //DML: Delete
        //Opportunity opportunityRecord1 = [SELECT Id, Name, CloseDate, StageName, Amount, AccountId From Opportunity WHERE AccountId = '0012w00001NMfU0AAL' AND Name ='Akhil Verma1' LIMIT 1];
        //delete opportunityRecord;
        
        //Datebase Methods example
        Opportunity opp1 = new Opportunity(
            Name = 'Akhil1',
        	CloseDate = Date.today(),
        	Amount = 2000,
            StageName = 'Closed Won',
         	AccountId = '0012w00001NMfU0AAL');

		Opportunity opp2 = new Opportunity(
            Name = 'Akhil2',
        	CloseDate = Date.today(),
        	Amount = 2000,
         	AccountId = '0012w00001NMfU0AAL');
    
        List<Opportunity> listOfOpps = new List<Opportunity> {opp1, opp2};
        //insert listOfopps;
        //ERROR: Line: 45, Column: 1 System.DmlException: Insert failed. First exception on row 1; first error: REQUIRED_FIELD_MISSING, Required fields are missing: [StageName]: [StageName]
    	//Following the Atomicity
        
          //Database.insert(listOfOpps, false);
            
        Database.SaveResult[] sr = Database.insert(listOfOpps, false);
        
        	for(Database.SaveResult each : sr){
            System.debug(each.isSuccess());
            }
        
        
        //Trailhead Concept 
        insert new Account[]{new Account(Name = 'for loop 1'), 
                     new Account(Name = 'for loop 2'), 
                             new Account(Name = 'for loop 3')};
        // The sObject list format executes the for loop once per returned batch
        // of records
        Integer i=0;
        Integer j=0;
        for (Account[] tmp : [SELECT Id FROM Account WHERE Name LIKE 'for loop _']) {
            j = tmp.size();
            i++;
        }
        System.assertEquals(3, j); // The list should have contained the three accounts
                               // named 'yyy'
        System.assertEquals(1, i); // Since a single batch can hold up to 200 records and,
                               // only three records should have been returned, the 
                               // loop should have executed only once
    }
}