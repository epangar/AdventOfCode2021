public with sharing class SonarSweep {
    public String Title = 'Sonar Sweep';
    public Integer Day = 1;
    private List<Integer> inputData = TreatData.treatIntegerList('SonarSweepGaps');
    public Integer firstAnswer = this.getGaps(inputData);
    public Integer secondAnswer = this.getWindows(inputData);
    
    
    public Integer getGaps(List<Integer> differentHeights){
        
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

    public Integer getWindows(List<Integer> differentHeights){
        Integer timesHeightIncreases = 0;

        for(Integer i = 3; i < differentHeights.size(); i++){
            Integer current = differentHeights[i - 3] + differentHeights[i - 2] + differentHeights[i - 1];
            Integer next = differentHeights[i] + differentHeights[i - 1] + differentHeights[i - 2];

            if (next > current) {
                timesHeightIncreases++;
            }
        }

        return timesHeightIncreases;
    }

}
