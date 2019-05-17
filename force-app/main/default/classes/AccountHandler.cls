public class AccountHandler {

    public static Account insertNewAccount (String Name)
        {
        try {
            
            Account acct = new Account(name=Name);
                insert acct;
            // Get the new ID on the inserted sObject argument
            System.debug('Name = ' + Name);
            ID acctID = acct.Id;
			return acct;
                       }
            catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage()); return (null);

}
            }
}