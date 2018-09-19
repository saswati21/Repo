public class AccountContactiNfo {
    
    @AuraEnabled public string DevName{get;set;}
    @AuraEnabled public Integer age{get;set;}
    @AuraEnabled public list<account> acclist{get;set;}
    @AuraEnabled public list<contact> conlist{get;set;}
    
    @AuraEnabled
    public static AccountContactiNfo accConInfo()
    {
       
        AccountContactiNfo accObj=new AccountContactiNfo();
        accObj.DevName='Saswati';
        accObj.age=24;
        accObj.acclist=[Select id,Name from account LIMIT 10];
		accObj.conlist=[Select id,FirstName,lastname from contact limit 10];
		return accObj;
    }

}