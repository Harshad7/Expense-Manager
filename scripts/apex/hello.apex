// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

NotificationService ns = new NotificationService();
ns.sendNotification('est', 'Here is an SMS');
//ns.sendNotification('email', 'Here is an Email');

TransactionLookupSelector tus= new TransactionLookupSelector();

system.debug(tus.selectAllTU());

system.debug(TransactionLookupSelector.newInstance().selectAllTU());