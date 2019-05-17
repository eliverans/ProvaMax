@isTest
private class TestRestrictContactByName {

    @isTest static void TestRestrictContactByNamePositive() {
        // Test data setup
        // Create a Contact with INVALIDNAME
        Contact c = new Contact(LastName='INVALIDNAME');
       
           
        // Perform test
        Test.startTest();
        try {
        insert c;
        }
        catch(Exception e) {
        Test.stopTest();

        }
    }
}