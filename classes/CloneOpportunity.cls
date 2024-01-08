//Write a code to clone(copy \ 1 Opportunity with all Opportunity line items into a new Opportunity 
//with Closed Date = Old closed date + 30 davs & Opportunity name = Opportunity Name+ 'Clone'
public class CloneOpportunity {
        
    /*List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i = 1; i <= 5; i++){
            Opportunity opp = new Opportunity();
                opp.Name = 'TestOpp ' + i;
            	opp.CloseDate = Date.Today();
            	opp.StageName = 'ClosedWon';
                opp.Amount = 1000;
                oppList.add(opp);
        }
        insert oppList;
        
    List<OpportunityLineItem> oppLineItemList = new List<OpportunityLineItem>();
    	for(Integer i = 1; i <= 10; i++){
        	OpportunityLineItem eachOpp = new OpportunityLineItem();
        		eachOpp.OpportunityId = oppList[0].Id;
        		oppLineItemList.add(eachOpp);
    	}
    	insert oppLineItemList;*/
        
        
    
    public static void cloneOpportunityWithLineItems(String originalOpportunityId) {
        // Fetch the original Opportunity and related Opportunity Line Items
        Opportunity originalOpportunity = [SELECT Id, Name, CloseDate, StageName, (SELECT Id, Quantity, TotalPrice, PricebookEntryId FROM OpportunityLineItems)
										  FROM Opportunity WHERE Id = :originalOpportunityId LIMIT 1];

        // Clone the Opportunity
        Opportunity clonedOpportunity = originalOpportunity.clone(false, true);
        
        // Modify cloned Opportunity fields
        clonedOpportunity.Name = originalOpportunity.Name + ' Clone';
        clonedOpportunity.CloseDate = originalOpportunity.CloseDate.addDays(30);

        // Remove the Id to ensure a new record is created
        clonedOpportunity.Id = null;

        // Insert the cloned Opportunity to get a new Id
        insert clonedOpportunity;

        // Clone and associate Opportunity Line Items with the cloned Opportunity
        List<OpportunityLineItem> clonedOpportunityLineItems = new List<OpportunityLineItem>();
        for (OpportunityLineItem originalLineItem : originalOpportunity.OpportunityLineItems) {
            OpportunityLineItem clonedLineItem = originalLineItem.clone(false, true);
            clonedLineItem.OpportunityId = clonedOpportunity.Id;
            clonedOpportunityLineItems.add(clonedLineItem);
        }

        // Insert the cloned Opportunity Line Items
        insert clonedOpportunityLineItems;

        // Optionally, you can add more logic or modifications as needed

        System.debug('Cloned Opportunity Id: ' + clonedOpportunity.Id);
    }
}