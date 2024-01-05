//Write a script to get all the opportunity name if opportunity' account name is same as the ContactRole Account name 
//     and Opportunity is Closed won or closed lost.
public class GetAllOpportunityContactRole {
    public static void getAllOpportunities(){
      //  List<OpportunityContactRole> opporContactRoleNames = [SELECT Id, Name,  FROM Opportunity]
      
        List<OpportunityContactRole> testData = new List<OpportunityContactRole>();
		//TestOpportunity 20 Updated
        for(Integer i = 1; i <= 20; i++){
            //OpportunityContactRole eachContactRole = new OpportunityContactRole();
            //	eachContactRole. = ''
        }
      
    }
}

/*
 * public class OpportunityScript {

    public static List<String> getOpportunityNames() {
        List<String> opportunityNames = new List<String>();

        // Query opportunities with associated Contact Roles
        List<Opportunity> opportunities = [SELECT Id, Name, Account.Name, StageName
                                           FROM Opportunity
                                           WHERE StageName IN ('Closed Won', 'Closed Lost')];

        // Iterate through opportunities
        for (Opportunity opp : opportunities) {
            // Check if there are associated Contact Roles
            if (opp.Account.Name == getContactRoleAccountName(opp.Id)) {
                opportunityNames.add(opp.Name);
            }
        }

        return opportunityNames;
    }

    private static String getContactRoleAccountName(Id opportunityId) {
        // Query Contact Roles associated with the Opportunity
        List<ContactRole> contactRoles = [SELECT Id, Role, Contact.Account.Name
                                          FROM ContactRole
                                          WHERE OpportunityId = :opportunityId];

        // Return the Account Name of the first Contact Role (if any)
        return contactRoles.isEmpty() ? null : contactRoles[0].Contact.Account.Name;
    }
}

 * */