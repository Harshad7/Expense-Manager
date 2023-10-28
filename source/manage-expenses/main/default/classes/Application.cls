public class Application {
    
    public static final fflib_Application.SelectorFactory Selector= 
        new fflib_Application.SelectorFactory(
            new Map<SObjectType, Type>{
                TransactionLookup__c.SObjectType => TransactionLookupSelector.class
            }
        );
    
    public static final fflib_Application.ServiceFactory Service = 
        new fflib_Application.ServiceFactory(
            new Map<Type, Type>{
                ITransactionService.class => TransactionServiceImpl.class
            }
        );
    
}