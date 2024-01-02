public class Create20_Opportunities {
	public static void createOpportunities(){
        List<Opportunity> listOfOpportunities = new List<Opportunity>();
        for(Integer i = 0; i < 20; i++){
            Opportunity eachOpportunity = new Opportunity();
            	eachOpportunity.Name = 'Opportunity00' + i;
                eachOpportunity.CloseDate = Date.newInstance(2023,11,28);
                eachOpportunity.StageName = 'CloseWon';
                eachOpportunity.Amount = 2333;
            	
            listOfOpportunities.add(eachOpportunity);
        }
        insert listOfOpportunities;
        System.debug(listOfOpportunities);
    }
}