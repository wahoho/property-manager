public with sharing class MapMaker {
    
    @AuraEnabled
    public String icon;

    @AuraEnabled
    public String title;

    @AuraEnabled
    public String description;

    @AuraEnabled
    public Location location;

    public MapMaker(String icon, String title, String description, Location location) {
        this.icon = icon;
        this.title = icon;
        this.description = description;
        this.location = location;
    }

}
