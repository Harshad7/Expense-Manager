trigger Transactions on Transaction__c (before insert) {

    Map<String,TransactionLookup__c> nametoTransactionLU = new Map<String,TransactionLookup__c>();

    for(TransactionLookup__c tu : [select Name, Sub_Category__c, Item_Name__c, Category__c from TransactionLookup__c]){
        nametoTransactionLU.put(tu.Name, tu);

    }
    for(Transaction__c t : Trigger.New){
        //Create a Map of Name and Object and Match it to the class
        
        for(String tName : nametoTransactionLU.keySet()){
            if(t.Description__c.containsIgnoreCase(tName)){
                t.Category__c = nametoTransactionLU.get(tName).Category__c;
                t.Sub_Category__c = nametoTransactionLU.get(tName).Sub_Category__c;
                t.Item_Name__c = nametoTransactionLU.get(tName).Item_Name__c;
            }
        }
    }

}