public with sharing class BinaryDiagnostic {
    public String Title = 'Binary Diagnostic';
    public Integer Day = 3;
    private List<String> inputData = TreatData.treatStringList('BinaryDiagnostic');
    public Integer firstAnswer = BinaryDiagnostic.getPowerConsumption(inputData);
    public Integer secondAnswer = BinaryDiagnostic.getSecond(inputData);

    public static Integer getPowerConsumption(List<String> binaries) {

        String gamma = '';
        String epsilon = '';
        
        for(Integer position = 0; position < binaries[0].length(); position++){

            Integer ones = 0;
            Integer zeroes = 0;
            for(String currentBinary : binaries){                                                                                
                String current = currentBinary.substring(position, position+1);                    
                if(current == '0'){
                    zeroes++;
                } else {
                    ones++;
                } 
            }

            if(ones > zeroes){
                gamma += '1';
                epsilon += '0';
            } else {
                gamma += '0';
                epsilon += '1';
            }

        }
        Integer decimalGamma = BinaryDiagnostic.binaryToInteger(gamma);
        Integer decimalEpsilon = BinaryDiagnostic.binaryToInteger(epsilon);
        return decimalEpsilon * decimalGamma;
    }

    public static Integer getSecond(List<String> binaries) {
        return 0;
    }

    public static Integer binaryToInteger(String value) {
        Integer result;
        if(value != null && value.containsOnly('01')) {
            result = 0;
            for(String s: value.split('')) {
                result *= 2;
                result += (s == '1'? 1: 0); 
            }
        }
        return result;
    }
}
