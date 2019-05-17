public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(string LName){ 
           List<List< SObject>> SearchList =                                               
                    [FIND :LName IN ALL FIELDS 
                   RETURNING Contact (Name), Lead (Name)];
Contact[] searchContacts= (Contact[])searchList[0];
Lead[] searchLeads = (Lead[])searchList[1];
   
        return searchList;
    }
}