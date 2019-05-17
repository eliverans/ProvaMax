public class RandomContactFactory {
        public static List<Contact> generateRandomContacts (Integer NumCts, String LastName)
        {
		List<Contact> cts = New List<Contact>();   
    for (Integer i=0; i<NumCts;i++ ){
        Contact c = New Contact(LastName = LastName, FirstName = 'TestContact'+i);
        cts.add(c);
  	  }
            return cts;
	}
}