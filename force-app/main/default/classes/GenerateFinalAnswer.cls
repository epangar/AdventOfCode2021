public with sharing class GenerateFinalAnswer {

    @AuraEnabled (cacheable=true)
    public static Map<String, Object> returnFinalAnswer(string mission){
        try {
            Object obj;

            if(mission == 'sonarSweep'){
                obj = new SonarSweep();
                System.debug(obj);
            }
    
            Map<String, Object> myMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(obj));
    
            system.debug(myMap);
            system.debug(myMap.values());
            system.debug(myMap.keyset());
            return myMap;

        } catch (Exception ex) {
            System.debug('exception:' + ex);
            return new Map<String, Object>();
        }


    }
}