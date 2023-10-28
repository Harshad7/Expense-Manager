public inherited sharing class TransactionServiceImpl implements ITransactionService{
    public void categorizeTransactions(List<Transaction__c> inputTransactions){
        System.debug('Called Categorize Transactions Service');
        System.debug(inputTransactions);
    }
    public void addTransactions(List<Transaction__c> inputTransactions){
        throw new TransactionServiceException('Not Implemented');
    }
}