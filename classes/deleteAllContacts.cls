public class deleteAllContacts {
    public static void deleteContacts(){
        List<Contact> deleteRecords = [SELECT Id, LastName FROM Contact WHERE LastName LIKE '%A%' LIMIT 10];
        delete deleteRecords;
        System.debug('deleteRecords>>> ' + deleteRecords);
    }
}