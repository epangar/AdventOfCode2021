public with sharing class TreatData {

    public static List<String> treatStringList(string resourceName){
        StaticResource resourceBody = [SELECT Body, Name FROM StaticResource WHERE Name = :resourceName ];

        List<String> answer = new List<String>();

        String contents = resourceBody.body.toString();
        for(String line:contents.split('\n')) {
            // Process Logic Here
            //String str = Integer.valueOf(line);
            answer.add(line);
        }

        return answer;
    }
    
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

    public static List<Map<String,Integer>> treatStringAndIntegerList(string resourceName){
        StaticResource resourceBody = [SELECT Body, Name FROM StaticResource WHERE Name = :resourceName ];

        List<Map<String,Integer>> answer = new List<Map<String, Integer>>();

        String contents = resourceBody.body.toString();
        for(String line:contents.split('\n')) {
            // Process Logic Here
            List<String> separation = line.split(' ');
            String direction = String.valueOf(separation[0]);
            Integer meters = Integer.valueOf(separation[1]);
            Map<String, Integer> currentInstruction = new Map<String, Integer> {
                direction => meters
            };
            answer.add(currentInstruction);
        }

        System.debug(answer);
        return answer;
    }
}
