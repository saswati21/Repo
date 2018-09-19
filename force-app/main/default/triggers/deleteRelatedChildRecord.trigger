trigger deleteRelatedChildRecord on MainObject__c (after delete)
{
list<MainObject__c > acclist=new list<MainObject__c >();
   for(MainObject__c mm:trigger.old)
   {
       
       acclist=[select id,name,(select id,name from CloneObjects__r) from MainObject__c where id=:mm.id];
      // acclist.add(a);
       
   }
   delete acclist;





    //list<CloneObject__c> clist=[select id,name from CloneObject__c where Objectnumber__c in:trigger.old];
  
    //delete clist;
}




//list <MainObject__c> mlist=[select id,name,(select id,name from CloneObjects__r)from MainObject__c where id in:trigger.old];