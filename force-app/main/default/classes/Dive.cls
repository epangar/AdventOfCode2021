public with sharing class Dive {
    public String Title = 'Dive!';
    public Integer Day = 2;
    private List<Map<String,Integer>> inputData = TreatData.treatStringAndIntegerList('DiveInstructions');
    public Integer firstAnswer = this.getDiveDistance(inputData);
    public Integer secondAnswer = this.getDiveDistanceWithAim(inputData);

    public Integer getDiveDistance(List<Map<String,Integer>> divingInstruction){
        Integer totalHorizontal = 0;
        Integer totalVertical = 0;
        
        for(Map<String,Integer> instruction: divingInstruction){
            System.debug(instruction.keySet());
            
            String currentDirection = (new List<String>(instruction.keySet()))[0];
            Integer currentMeters = instruction.values()[0];

            if(currentDirection == 'forward'){
                totalHorizontal += currentMeters;
            } else if(currentDirection == 'down'){
                totalVertical += currentMeters;
            } else {
                totalVertical -= currentMeters;
            }
        }

        return totalHorizontal * totalVertical;
    }

    public Integer getDiveDistanceWithAim(List<Map<String,Integer>> divingInstruction){
        return 0;
    }
} 
