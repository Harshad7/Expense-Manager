public Interface ITransactionService {
    void categorizeTransactions(List<Transaction__c> inputTransactions);
    void addTransactions(List<Transaction__c> inputTransactions);
}