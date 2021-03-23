public with sharing class Location {
    
    @AuraEnabled
    public String Street;

    @AuraEnabled
    public String City;

    @AuraEnabled
    public String State;

    @AuraEnabled
    public String PostalCode;

    @AuraEnabled
    public String Country;

    public Location(String Street, String City, String State, String PostalCode, String Country) {
        this.Street = Street;
        this.City = City;
        this.State = State;
        this.PostalCode = PostalCode;
        this.Country = Country;
    }
}
