trigger Transactions on Transaction__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    fflib_SObjectDomain.triggerHandler(Transactions.class);

}