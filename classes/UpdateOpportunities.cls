public class UpdateOpportunities {
    public static void updateOpportunities(){
        List<Opportunity> opportunityList = new List<Opportunity>();
        opportunityList = [SELECT Id, Name, CloseDate, Amount, StageName FROM Opportunity LIMIT 50000];
        
        for(Opportunity eachOpportunity : opportunityList){
            eachOpportunity.Name = eachOpportunity.Name + ' Updated';
			eachOpportunity.CloseDate = Date.newInstance(2024,01,28);
        }
        update opportunityList;
    }
}