public with sharing class NotificationFactory {
    private static Map<String, Type> typeToImplementation = new Map<String, Type>{
        'sms' => SMSService.class,
        'email' => EmailService.class
    };

    public static INotificationService newInstance(String type){
        return (INotificationService) typeToImplementation.get(type).newInstance();
    }


}