public with sharing class NotificationService {

    public void sendNotification(String notificationType, String message){
        service(notificationType).sendNotification(message);
    }

    public static INotificationService service(String notificationType){
        return (INotificationService) NotificationFactory.newInstance(notificationType);
    }


public class NotificationException extends Exception{
    
}
   
}


/**
 * 
 * IF we want to send an SMS there some things that we need to build vs Sending an Email
 * 
 */