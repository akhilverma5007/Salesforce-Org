//Write a script to count the total no. of contact for each account when the contact name and the opportunity name are the 
    // same for that account.
public class CountTotalNoOfContacts {
    public static void countsForRecords(){
     Map<Id, Account> accountsWithContactsAndOpportunitiesMap = new Map<Id, Account>(
    [SELECT Id, Name,
            (SELECT Id, FirstName, LastName, Email FROM Contacts),
            (SELECT Id, Name, CloseDate, StageName FROM Opportunities)
     FROM Account]
);

// Now you can iterate through the map to access the information
for (Id accountId : accountsWithContactsAndOpportunitiesMap.keySet()) {
    Account acc = accountsWithContactsAndOpportunitiesMap.get(accountId);

    System.debug('Account Name: ' + acc.Name);

    // Access Contacts
    List<Contact> contacts = acc.Contacts;
    for (Contact con : contacts) {
        System.debug('  Contact Name: ' + con.FirstName + ' ' + con.LastName);
        System.debug('  Contact Email: ' + con.Email);
    }

    // Access Opportunities
    List<Opportunity> opportunities = acc.Opportunities;
    for (Opportunity opp : opportunities) {
        System.debug('  Opportunity Name: ' + opp.Name);
        System.debug('  Opportunity Close Date: ' + opp.CloseDate);
        System.debug('  Opportunity Stage: ' + opp.StageName);
    }
}

        
    }
}