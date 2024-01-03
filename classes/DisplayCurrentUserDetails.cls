public class DisplayCurrentUserDetails {
    public static void displayUserDetails(){
        User userRecord = [SELECT Id, Name, UserName, Email FROM User WHERE Name = 'Akhil Verma' LIMIT 1];
        System.debug(userRecord);
    }
}