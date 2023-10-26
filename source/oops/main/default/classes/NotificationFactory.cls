public with sharing class NotificationFactory {
    private static Map<String, Type> typeToImplementation = new Map<String, Type>{
        'sms' => SMSService.class,
        'email' => EmailService.class
    };

    public static INotificationService newInstance(String type){
        if(typeToImplementation.get(type) == null){
            throw new NotificationService.NotificationException('Invalid type for Notification');
        }
        return (INotificationService) typeToImplementation.get(type).newInstance();
    }


}

