trigger Transactions on Transaction__c (before insert) {

    fflib_SObjectDomain.triggerHandler(Transactions.class);

}