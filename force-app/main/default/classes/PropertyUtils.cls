public with sharing class PropertyUtils {
    
    public PropertyUtils() { }

    @AuraEnabled(cacheable=true)
    public static List<MapMaker> getPropertyAddress(Id recId) {
        Property__c prop = [SELECT Name, street__c, city__c, state__c, country__c, Postal_Code__c FROM Property__c LIMIT 1];
        Location location = new Location(prop.street__c, prop.city__c, prop.state__c, prop.Postal_Code__c, prop.country__c);
        MapMaker mapMaker = new MapMaker('icon', prop.Name, 'description', location);
        List<MapMaker> locations = new List<MapMaker> { mapMaker };
        return locations;
    }
}
