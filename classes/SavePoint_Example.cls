public class SavePoint_Example {
    public static void savePointEx(){
                Account acc = new Account(
            Name = 'SavePoint Account '
        );
        insert acc;
        
        Account accQuery = [Select Id From Account Where Name = 'SavePoint Account'];
        System.debug('aaaaccQuery ' + accQuery);
        
        System.Savepoint sv = Database.setSavepoint();
        
        try{
            Contact con = new Contact(
                LastName = 'Savepoint Contact'
            );
            insert con;
        } catch(Exception ex){
            //System.debug('Errorr>>>>');
            Database.rollback(sv);
        }

    }
}