public with sharing class TransactionService{

    public static void categorizeTransactions(List<Transaction__c> inputTransactions){
        service().categorizeTransactions(inputTransactions);
    }

    public static void addTransactions(List<Transaction__c> inputTransactions){

    }

    public static ITransactionService service(){
        return (ITransactionService) Application.Service.newInstance(ITransactionService.class);
    }


 
}