@isTest
public with sharing class TestBinaryDiagnostic {
    @isTest
    static void testBinaryDiagnosticFirst() {
        List<String> binaries = new List<String>{
            '00100',
            '11110',
            '10110',
            '10111',
            '10101',
            '01111',
            '00111',
            '11100',
            '10000',
            '11001',
            '00010',
            '01010'
        };
        
        Test.startTest();
        Integer totalPowerConsumption = BinaryDiagnostic.getPowerConsumption(binaries);
        System.equals(totalPowerConsumption = 198, 'The solution must be 198.');
        Test.stopTest();
    }
    @isTest
    static void testBinaryDiagnosticSecond() {
        List<String> binaries = new List<String>{
            '00100',
            '11110',
            '10110',
            '10111',
            '10101',
            '01111',
            '00111',
            '11100',
            '10000',
            '11001',
            '00010',
            '01010'
        };

        Test.startTest();
<<<<<<< HEAD
        Integer totalLifeSupportRating = BinaryDiagnostic.getLifeSupportRating(binaries);
        System.equals(totalLifeSupportRating = 230, 'The solution must be 230.');
=======
        Integer totalPowerConsumption = BinaryDiagnostic.getLifeSupportRating(binaries);
        System.equals(totalPowerConsumption = 230, 'The solution must be 230.');
>>>>>>> c08d3abbc93593807ba2788603493412547c90d4
        Test.stopTest();
    }
}
