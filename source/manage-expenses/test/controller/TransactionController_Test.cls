@isTest
private class TransactionController_Test {
    @isTest
    private static void callingCategorizeTransactionShouldCallService() {

        fflib_ApexMocks mocks = new fflib_ApexMocks();

       // Id transactionID = fflib_IDGenerator.generate(Transaction__c.SObjectType);
        List<Transaction__c> tlist = new  List<Transaction__c>{ new Transaction__c( Amount__c=33.0, Description__c= 'Test', Transaction_Date__c=Date.today())};

        ITransactionService mockService = (ITransactionService) mocks.mock(ITransactionService.class);

        Application.Service.setMock(ITransactionService.class, mockService);

        TransactionController.InputTransaction t = new  TransactionController.InputTransaction();
   
        t.amount = 33;
        t.description = 'Test';
        t.transactionDate = Date.today();  

        List<TransactionController.InputTransaction> it = new List<TransactionController.InputTransaction>{t};

        

        TransactionController.createTransaction(it); 
        ((ITransactionService)
             mocks.verify(mockService)).categorizeTransactions(tlist);

    }
}