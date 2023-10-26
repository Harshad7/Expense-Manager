@isTest
private class TransactionService_Test {
    @isTest
    private static void shouldCategorizeTransactionsBasedOnDescription(){



        TransactionLookup__c tu = new TransactionLookup__c();
        tu.Name = 'Manpasand';
        tu.Category__c = 'Grocery';
        tu.Sub_Category__c = 'Indian';
        tu.Item_Name__c = 'Manpasand Indian Grocery';

        insert tu;


        Transaction__c t = new Transaction__c();
        t.Description__c = 'MANPASAND SPICE CORNER PITTSBURGH PA';
        t.Transaction_Date__c = Date.today();
        t.Amount__c = 12.5;

        Test.startTest();
        insert t;
        Test.stopTest();

        Transaction__c tToCheck = [select id, Name, Category__c, Sub_Category__c from Transaction__c limit 1];

        //Check
        System.assertEquals('Grocery', tToCheck.Category__c, 'Transaction Categorization was incorrect');
        System.assertEquals('Indian', tToCheck.Sub_Category__c, 'Transaction SubCategory was incorrect');

        

    }
}