public with sharing class GenerateFinalAnswer {

    @AuraEnabled (cacheable=true)
    public static Map<String, Object> returnFinalAnswer(string mission){
        try {
            Object obj;

            if(mission == 'sonarSweep'){
                obj = new SonarSweep();
            } else if (mission == 'dive'){
                obj = new Dive();
            } else  if (mission == 'binaryDiagnostic'){
                obj = new BinaryDiagnostic();
            } 
    
            Map<String, Object> myMap = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(obj));
            return myMap;

        } catch (Exception ex) {
            System.debug('exception:' + ex);
            return new Map<String, Object>();
        }


    }
}