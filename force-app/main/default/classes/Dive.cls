public with sharing class Dive {
    public String Title = 'Dive!';
    public Integer Day = 2;
    private List<Map<String,Integer>> inputData = TreatData.treatStringAndIntegerList('DiveInstructions');
    public Integer firstAnswer = Dive.getDiveDistance(inputData);
    public Integer secondAnswer = Dive.getDiveDistanceWithAim(inputData);

    public static Integer getDiveDistance(List<Map<String,Integer>> divingInstruction){
        Integer totalHorizontal = 0;
        Integer totalVertical = 0;
        
        for(Map<String,Integer> instruction: divingInstruction){
            
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

    public static Integer  getDiveDistanceWithAim(List<Map<String,Integer>> divingInstruction){
        Integer horizontal = 0;
        Integer depth = 0;
        Integer aim = 0;

        for(Map<String,Integer> instruction: divingInstruction){
            
            String currentDirection = (new List<String>(instruction.keySet()))[0];
            Integer currentMeters = instruction.values()[0];

            if(currentDirection == 'forward'){
                horizontal += currentMeters;
                depth += (aim * currentMeters);
            } else if(currentDirection == 'down'){
                aim += currentMeters;
            } else {
                aim -= currentMeters;
            }
            /* System.debug(horizontal * depth); */
        }

        return horizontal * depth;
    }
} 
