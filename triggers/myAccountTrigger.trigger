trigger myAccountTrigger on Account (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        System.debug('I am under Before Insert Trigger Of Account');
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            for(Account acc : Trigger.new){
            System.debug('I am under Before Update Of Trigger New Value' + acc.Name);
            System.debug('Old Value' + Trigger.oldMap.get(acc.Id).Name);
 
        	}
        }
    }
}