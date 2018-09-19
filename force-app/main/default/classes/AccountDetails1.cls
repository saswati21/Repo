public class AccountDetails1
{
   // public string accountname{get;set;}
    public list<account> acclist{get;set;}
    public accountdetails1()
    {
        acclist=[select id,name,accountnumber from account];
    }
}