global class BatchDemo1 implements Database.Batchable<sObject>{
//Batch job always has to be marked as global
	private Integer magicNum = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        //getQueryLocator returns a Query Locator that runs your selected SOQL query
		//returning list that can be iterated over in batch apex or used for displaying
		//large sets in VF (allowing things such as pagination).
        return Database.getQueryLocator('SELECT Id, Name FROM Account');
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('In the execcute method');
        for(Integer i = 0; i < 5; i++){
            magicNum = i;
        }
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug('In the finish method');
        System.debug('magicNum ' + magicNum);
    }
}