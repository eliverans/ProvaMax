trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> TaskList = new List<Task>();

    for (Opportunity oppty : [SELECT Id FROM Opportunity
                     WHERE Id IN :Trigger.New AND StageName ='Closed Won'] ){
    
    TaskList.add(new Task(subject = 'Follow Up Test Task', WhatId = oppty.Id));
}
         {
if (TaskList.size() > 0) {
insert TaskList;
}
         }
          }