public class Insert10ContactsWithDiffAccounts {
   public static void createContacts() {
       
       List<Contact> contactList = new List<Contact>();
		List<String> accountNames = new List<String>{
           											'Account_001',
													'Account_002',
													'Account_003',
                                                    'Account_004',
													'Account_005',
													'Account_006',
                                                    'Account_007',
													'Account_008',
													'Account_009',
                                                    'Account_010'};
                                                        
       		for(Integer i = 1; i < 10; i++){
                Contact eachContact = new Contact();
                eachContact.LastName = 'Contact_00' + (i+1);
                eachContact.Account = new Account(Name = accountNames[i]);
                contactList.add(eachContact);
            }
       insert contactList;
       
   }
}