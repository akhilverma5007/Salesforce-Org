public class ShowActiveCampaigns {
    public static void activeCampaigns(){
        List<Campaign> campaignList = [SELECT Id, Name, StartDate, EndDate, isActive, Status FROM Campaign WHERE isActive = True LIMIT 50000];
        System.debug(campaignList);
    }
}