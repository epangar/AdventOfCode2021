public with sharing class InitialClass {
    
    @AuraEnabled
    public static String getTitle(){
        return 'Hello World';
    }

    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> accounts = new List<Account>();

        for(Integer i = 0; i < 10; i++){
            Account acc = new Account();
            acc.Name = '#' + i;
            Accounts.add(acc);
        }

        return Accounts;
    }
}
