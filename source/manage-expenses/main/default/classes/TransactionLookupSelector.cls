public inherited sharing class TransactionLookupSelector extends fflib_SObjectSelector implements ITransactionLookupSelector {

    public static ITransactionLookupSelector newInstance(){
        return (ITransactionLookupSelector) new TransactionLookupSelector();
    }
    
    public TransactionLookupSelector() {
        //configuration for 1. using field set 2. CRUD security 3. FLS , 4. sort selected fields
        super(false, true, true , false);
    }

    public List<Schema.SObjectField> getSObjectFieldList(){
        return new List<Schema.SObjectField>{
            TransactionLookup__c.Name,
            TransactionLookup__c.Category__c,
            TransactionLookup__c.Sub_Category__c,
            TransactionLookup__c.Item_Name__c
        };
    }

    public Schema.SObjectType getSObjectType(){
        return TransactionLookup__c.SObjectType;
    }

    public List<TransactionLookup__c> selectById(Set<Id> tuId){
        return (List<TransactionLookup__c>) selectSObjectsById(tuId);
    }

    public List<TransactionLookup__c> selectAllTU(){
        return (List<TransactionLookup__c>) Database.query(
            newQueryFactory().toSOQL()                       
        );
    }

}