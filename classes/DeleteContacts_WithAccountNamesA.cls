public class DeleteContacts_WithAccountNamesA {
    public static void deleteContacts(){
        List<Contact> deleteListOfContacts = [SELECT Id, LastName, Account.Name FROM Contact WHERE Account.Name LIKE '%A%' LIMIT 50000];
        //delete deleteListOfContacts;
        System.debug(deleteListOfContacts);
    }
}