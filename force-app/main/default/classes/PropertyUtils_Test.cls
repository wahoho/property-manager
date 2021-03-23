@IsTest
public with sharing class PropertyUtils_Test {
    
    @TestSetup
    static void propertyUtilsTestSetup(){
        Property__c property = new Property__c(
            street__c = '415 Mission st',
            city__c = 'San Francisco',
            Postal_Code__c = 'CA 94105',
            country__c = 'United States'
        );
        insert property;
    }

    @IsTest
    static void getPropertyAddressTest() {
        Property__c prop = [SELECT Id FROM Property__c][0];
        Test.startTest();
        MapMaker mapMaker = PropertyUtils.getPropertyAddress(prop.Id)[0];
        Test.stopTest();

        System.assertEquals('415 Mission st', mapMaker.location.Street);
        System.assertEquals('San Francisco', mapMaker.location.City);
        System.assertEquals('CA 94105', mapMaker.location.PostalCode);
        System.assertEquals('United States', mapMaker.location.Country);
    }

}
