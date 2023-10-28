@isTest
public class Transaction_IntegrationTest {
   @isTest 
   private static void transactionCreationFromController(){

        TransactionController.InputTransaction t = new  TransactionController.InputTransaction();
   
        t.amount = 33.3;
        t.description = 'Testing Transaction';
        t.transactionDate = Date.today(); 

        List<TransactionController.InputTransaction> it = new List<TransactionController.InputTransaction>{t};

        TransactionController.createTransaction(it); 
   }
}