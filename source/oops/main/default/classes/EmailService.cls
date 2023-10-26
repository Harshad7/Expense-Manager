public with sharing class EmailService implements INotificationService{
    
    public void sendNotification(String message){
        System.debug('The following Email was sent : ' + message);
    }
}