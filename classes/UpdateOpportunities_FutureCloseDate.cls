public class UpdateOpportunities_FutureCloseDate {
    public static void updateOpportunities(){
        List<Opportunity> opportunitiesToUpdate  = [SELECT Id, Name, Amount, CloseDate, StageName FROM Opportunity LIMIT 50000];

        for(Opportunity eachOpportunity : opportunitiesToUpdate){
			eachOpportunity.Name = eachOpportunity.Name + ' Updated';
            eachOpportunity.CloseDate = date.newInstance(2023,12,28);
        }
        update opportunitiesToUpdate;
        System.debug(opportunitiesToUpdate);
    }
}