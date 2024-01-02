//Display the current salesforce user details 'Name'. 'Number' & 'Emailld' and Current Company information
public class Display_Current_SalesforceUserDetails {
    public static void displayUserDetails(){
        User userDetails = [SELECT Id, Name, Phone, Email, CompanyName From User WHERE Name = 'Akhil Verma' LIMIT 1];
        System.debug(userDetails);
    }
}