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
        String co2 = '';
        List<String> orderedBinaries = new List<String>();

        for(Integer i = 0; i < 5; i++){
            Integer zeroes = 0;
            Integer ones = 0;
            String mostCommon;
            String leastCommon;

            for(String currentBinary: binaries){
                String currentBit = currentBinary.substring(i);

                if(currentBit == '0'){
                    zeroes++;
                } else {
                    ones++;
                }
            }

            for (Integer j = (binaries.size()-1) ; j>= 0 ; j--){
                
                String currentBinary = binaries[j];


                
                if(zeroes > ones){
                    mostCommon = '0';
                    leastCommon = '1';
                } else {
                    mostCommon = '1';
                    leastCommon = '0';
                }
                //We know now the most and least common of this iteration

                //Current binary bit
                String currentBit = currentBinary.substring(i);

                if(binaries.size() == 1){
                    break;
                }

                if(currentBit == mostCommon && !orderedBinaries.contains(currentBinary)){
                    orderedBinaries.add(currentBinary);
                    binaries.remove(j);
                }
                
            }
        }


        Integer decimalOxigen = BinaryDiagnostic.binaryToInteger(oxigen);
        Integer decimalCO2 = BinaryDiagnostic.binaryToInteger(CO2);
        return decimalOxigen * decimalCO2;
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
