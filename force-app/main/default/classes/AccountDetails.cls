public class AccountDetails {

    //public String accountlist { get; set; }

  public    list<Account> accountlist {get;set;}
     public void AccountDetails1()
     {
     //accountlist1= new list<account>();
     
          accountlist =[select id,Name,accountnumber from Account];
     }


}