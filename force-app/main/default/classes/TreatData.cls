public with sharing class TreatData {
    
    public static List<Integer> treatIntegerList(string resourceName){
        StaticResource resourceBody = [SELECT Body, Name FROM StaticResource WHERE Name = :resourceName ];

        List<Integer> answer = new List<Integer>();

        String contents = resourceBody.body.toString();
        for(String line:contents.split('\n')) {
            // Process Logic Here
            Integer inte = Integer.valueOf(line);
            answer.add(inte);
        }

        return answer;
    }
}
