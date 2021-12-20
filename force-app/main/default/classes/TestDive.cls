@isTest
public with sharing class TestDive {

    

    @isTest
    static void testGetDiveDistance(){

        List<Map<String,Integer>> myInstructions = new List<Map<String,Integer>>{
            new Map<String,Integer>{'forward' => 5},
            new Map<String, Integer>{'down' => 5},
            new Map<String, Integer>{'forward' => 8},
            new Map<String, Integer>{'up' => 3},
            new Map<String, Integer>{'down' => 8},
           new Map<String, Integer>{ 'forward' => 2}
        };

        Test.startTest();
        Integer totalPosition = Dive.getDiveDistance(myInstructions);
        System.debug(totalPosition);
        System.equals(totalPosition = 150, 'The solution must be 150.');
        Test.stopTest();
        
        
    }

    @isTest
    static void testGetDiveDistanceWithAim(){
        
        List<Map<String,Integer>> myInstructions = new List<Map<String,Integer>>{
            new Map<String,Integer>{'forward' => 5},
            new Map<String, Integer>{'down' => 5},
            new Map<String, Integer>{'forward' => 8},
            new Map<String, Integer>{'up' => 3},
            new Map<String, Integer>{'down' => 8},
           new Map<String, Integer>{ 'forward' => 2}
        };

        Test.startTest();
        Integer totalPositionWithAim = Dive.getDiveDistanceWithAim(myInstructions);
        System.debug(totalPositionWithAim);
        System.equals(totalPositionWithAim = 900, 'The solution must be 900.');
        Test.stopTest();
        
    }
   
}
