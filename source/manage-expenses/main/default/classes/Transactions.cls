public inherited sharing class Transactions extends fflib_SObjectDomain {

    public Transactions(List<Transaction__c> transactionRecords){
        super(transactionRecords);
    }

    public class Constructor implements fflib_SObjectDomain.IConstructable{

        public fflib_SObjectDomain construct(List<SObject> sObjectList){
            return new Transactions(sObjectList);
        }
    } 

    Map<String,TransactionLookup__c> nametoTransactionLU = new Map<String,TransactionLookup__c>();


    public override void onBeforeInsert(){

        for(TransactionLookup__c tu : [select Name, Sub_Category__c, Item_Name__c, Category__c from TransactionLookup__c]){
            nametoTransactionLU.put(tu.Name, tu);
        }

        for(Transaction__c t : (List<Transaction__c>)Records){
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

    



   
}