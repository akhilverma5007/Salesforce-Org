public with sharing class SoqlAndSoslQueries {
    public static void typesOfQueries() {

    List<Opportunity> oppRecords = [SELECT Id, Name, CloseDate, Amount FROM Opportunity WHERE Amount > 50000 ORDER BY Amount ASC LIMIT 10];
    System.debug(oppRecords);
 
    // Using Wildcards
    List<Opportunity> oppRecords2 = [SELECT Id, Name, CloseDate, Amount FROM Opportunity WHERE Name LIKE 'United%' Limit 100];
    List<Opportunity> oppRecords3 = [SELECT Id, Name, CloseDate, Amount FROM Opportunity WHERE Name LIKE '%Refinery%' Limit 100];

    //MATCHES ANY OF ('Edge Communications','GenePoint')
    List<Opportunity> oppRecords4 = [SELECT Id, Name, CloseDate, Amount FROM Opportunity WHERE Account.Name IN ('Edge Communications','GenePoint')];
   
    //Using Logical Operators
    List<Opportunity> oppRecords5 = [SELECT Id, Name, CloseDate, Amount FROM Opportunity WHERE Amount >= 50000 AND CloseDate = LAST_YEAR];
    
    //Aggregate Queries 
	//(LAST_YEAR..... THESE ARE DATE LITERALS)
    //List<Opportunity> oppRecords6 = [SELECT COUNT(ID) FROM Opportunity WHERE CloseDate = LAST_YEAR];

    //GROUP BY 
    //List<Opportunity> oppRecords7 = [SELECT StageName, COUNT(Id) FROM Opportunity WHERE CloseDate = LAST_YEAR GROUP BY StageName];  
    
    //HAVING (Can't use WHERE here)
    //List<Opportunity> oppRecords8 = [SELECT StageName, COUNT(Id) FROM Opportunity WHERE CloseDate = LAST_YEAR GROUP BY StageName HAVING COUNT(Id) > 2];

    //Relationship Queries
    //Child to Parent
    List<Contact> contactRecords = [SELECT FirstName, LastName, Account.Name FROM Contact];

    //Example 
    List<Opportunity> opportunityList = [SELECT Id, Name, CloseDate, Account.Name, Amount From Opportunity];
        for(Opportunity each : opportunityList){
            //System.debug(each);
            System.debug(each.Name);
            System.debug(each.Account.Name);
        }

    //Parent to Child
    List<Account> accountList = [SELECT Id, Name, (SELECT Id, FirstName, LastName From Contacts) FROM Account];
        for(Account acc : accountList){
            System.debug(acc.Name);
            for(Contact con : acc.Contacts){
                System.debug(con.LastName);        
            }
        }
        
        
        
        //SOSL
        //This is an example of a SOSL query that searches for accounts and contacts that have any fields with the word 'SFDC'.
			List<List<SObject>> searchList = [FIND 'SFDC' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName,LastName)];

    }
}