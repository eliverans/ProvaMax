public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String mailingPostalCode)
    {List<Contact> retList = [SELECT Id, Name, LastName, MailingPostalCode
                                 FROM Contact
                                 WHERE LastName = :lastName AND MailingPostalCode = :mailingPostalCode];
     
     System.debug(ContactSearch.searchForContacts('Ruiz','Ruiz'));
     return retList;
    }
}