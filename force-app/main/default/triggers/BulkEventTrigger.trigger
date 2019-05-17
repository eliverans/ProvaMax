// Trigger for listening to Bulk Event events.
trigger BulkEventTrigger on Bulk_Event__e (after insert) {    
    // List to hold all cases to be created.
    List<Case> cases = new List<Case>();
    
    // Get queue Id for case owner
    //Group queue = [SELECT Id FROM Group WHERE Name='Regional Dispatch' LIMIT 10];

    // Get User Id who is active to assign the Tasks
    User q = [Select Id From User Where IsActive = true LIMIT 1];
       
    // Iterate through each notification.
    for (Bulk_Event__e event : Trigger.New) {
        
            // Create Case to dispatch new team.
            Case cs = new Case();
            cs.Priority = 'High';
            cs.Subject = 'Bulk Event Number ' + 
                event.Nome__c;
            cs.OwnerId = q.id;
            cases.add(cs);
        }
    
    // Insert all cases corresponding to events received.
    insert cases;
}