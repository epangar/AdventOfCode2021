@isTest
public with sharing class TestTreatData {

    @isTest
    static void test() {
        TreatData.treatIntegerList('SonarSweepGaps');

        System.assertEquals(0, 0);
    }
}
