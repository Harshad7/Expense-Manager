public with sharing class TransactionController {
   
    public static void createTransaction(List<InputTransaction> transactions){
        TransactionService.categorizeTransactions(createTransactionRecordsFromInputFields(transactions));
    }

    public static List<Transaction__c> createTransactionRecordsFromInputFields(List<InputTransaction> transactions){
        List<Transaction__c> transactionList = new List<Transaction__c>();

        for(InputTransaction it : transactions){
            transactionList.add(new Transaction__c(Description__c=it.description, Amount__c=it.amount, Transaction_Date__c=Date.valueOf(it.transactionDate)));
        }

        return transactionList;

    }

    public class InputTransaction{

        public String bank;
        public String description;
        public Double amount;
        public Date transactionDate;
    }

    
}