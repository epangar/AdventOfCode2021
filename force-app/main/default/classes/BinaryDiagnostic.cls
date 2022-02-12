public with sharing class BinaryDiagnostic {
    public String Title = 'Binary Diagnostic';
    public Integer Day = 3;
    private List<String> inputData = TreatData.treatStringList('BinaryDiagnostic');
    public Integer firstAnswer = BinaryDiagnostic.getPowerConsumption(inputData);
    public Integer secondAnswer = BinaryDiagnostic.getLifeSupportRating(inputData);

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

    public static Integer getLifeSupportRating(List<String> binaries) {
        String oxigen = '';
        String scrubber = '';

        for(Integer position = 0; position < binaries[0].length(); position++){
            Integer ones = 0;
            Integer zeroes = 0;
            /* List<String> numberOfBinaries = new List<String>();

            for(String currentBinary : binaries){                                                                                
                String current = currentBinary.substring(position, position+1);                    
                if(current == '0'){
                    zeroes++;
                } else {
                    ones++;
                } 
            }

            for(Integer i = binaries.size()-1 ; i >= 0; i-- ){     
                String currentBinary = bonaries[i];                                                                           
                String current = currentBinary.substring(position, position+1);                    
                if(zeroes > ones){
                    
                } else {
                    
                } 
            } */

            

        }

        return 0;
    }

    public static String mostCommonValueInBinaries(List<String> binaries, Integer position){
        
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
