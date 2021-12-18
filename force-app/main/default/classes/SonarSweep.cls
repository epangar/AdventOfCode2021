public with sharing class SonarSweep {
    public String Title = 'Sonar Sweep';
    public Integer Day = 1;
    
    public Integer getGaps(List<Integer> differentHeights){
        System.debug(differentHeights);

        Integer timesHeightIncreases = 0;

        for(Integer i = 1; i < differentHeights.size(); i++){
            Integer previous = differentHeights[i-1];
            Integer current = differentHeights[i];

            if(current > previous){
                timesHeightIncreases++;
            }

        }

        return timesHeightIncreases;
    }
}
