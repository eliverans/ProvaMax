// Trigger for catching Low_Ink events.
trigger LowInkTrigger on Low_Ink__e (after insert) {    
    // List to hold all cases to be created.
    List<Case> cases = new List<Case>();
    
    // Get user Id for case owner
    //User usr = [SELECT Id FROM User WHERE Name='Admin User' LIMIT 1];
       
    // Iterate through each notification.
    for (Low_Ink__e event : Trigger.New) {
        System.debug('Printer model: ' + event.Ink_level__c);
        if (event.Ink_level__c == 2) {
            // Create Case to order new printer cartridge.
            Case cs = new Case();
            cs.Priority = 'Medium';
            cs.Subject = 'Order new ink cartridge for SN ' + event.Printer_Model__c + event.measure_date__c;
            //cs.OwnerId = usr.Id;
            cases.add(cs);
        }
    }
    
    // Insert all cases corresponding to events received.
    insert cases;
}