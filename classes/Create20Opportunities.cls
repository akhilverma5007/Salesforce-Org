public class Create20Opportunities {
    public static void createOpportunities(){
        List<Opportunity> opportunityRecords = new List<Opportunity>();
        for(Integer i = 1; i <= 20; i++){
            Opportunity eachOpportunity = new Opportunity(Name = 'TestOpportunity ' + i, CloseDate = Date.Today(), StageName = 'CloseWon', Amount = 1000);
            opportunityRecords.add(eachOpportunity);
        }
        insert opportunityRecords;
        System.debug(opportunityRecords);
    }
}