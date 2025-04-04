trigger MaintenanceRequest on Case (after update) {
    // ToDo: Call MaintenanceRequestHelper.updateWorkOrders
    for(Case newMaintenanceRequest : [SELECT Id, Type, Status FROM Case WHERE Status='Closed' AND Id IN:Trigger.new  ]){
        if(newMaintenanceRequest.Type == 'Repair' || newMaintenanceRequest.Type == 'Routine Maintenance'){
            Case newMR = new Case(Type='Routine Maintenance');
            insert newMR;
        }
    }
        
}