@isTest
public with sharing class TestSonarSweep {

    @IsTest
    static void testFirst(){
        List<Integer> myHeights = new List<Integer>{199,200,208,210,200,207,240,269,260,263};
        SonarSweep Sonar = new SonarSweep();
        
        Test.startTest();
        Integer totalGaps = Sonar.getGaps(myHeights);
        System.equals(totalGaps = 7, 'There must ve a total of 7 changes in height.');
        Test.stopTest();
        
    }
    
}
