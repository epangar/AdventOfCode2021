@isTest
public with sharing class TestSonarSweep {

    @IsTest
    static void testGetGaps(){
        List<Integer> myHeights = new List<Integer>{199,200,208,210,200,207,240,269,260,263};
        SonarSweep Sonar = new SonarSweep();
        
        Test.startTest();
        Integer totalGaps = Sonar.getGaps(myHeights);
        System.equals(totalGaps = 7, 'There must be a total of 7 changes in height.');
        Test.stopTest();
        
    }

    @IsTest
    static void testGetWindows(){
        List<Integer> myHeights = new List<Integer>{199,200,208,210,200,207,240,269,260,263};
        SonarSweep Sonar = new SonarSweep();
        
        Test.startTest();
        Integer totalWindows = Sonar.getGaps(myHeights);
        System.equals(totalWindows = 1275, 'There must be a total of 1275 changes.');
        Test.stopTest();
        
    }
    
}
