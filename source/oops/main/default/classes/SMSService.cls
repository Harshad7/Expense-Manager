public with sharing class SMSService implements INotificationService{
    
    public void sendNotification(String message){
        System.debug('The following SMS was sent : ' + message);
    }

    
}