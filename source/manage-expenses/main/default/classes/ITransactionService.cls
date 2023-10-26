public Interface ITransactionService {
    void categorizeTransactions(List<TransactionService.InputTransaction> inputTransactions);
    void addTransactions(List<TransactionService.InputTransaction> inputTransactions);
}