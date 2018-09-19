trigger CloneTrigger on CloneObject__c (after update) 
{
    //create new record in mainObject with old value of cloneObject
    list<MainObject__c> mlist=new list<MainObject__c>();
    for(CloneObject__c cc:trigger.old)
    {    
          
       MainObject__c m1=new MainObject__c();
       m1.name=cc.name;
       m1.Address__c=cc.My_Address__c;
       m1.Phone_Number__c=cc.Mobile_Number__c;
       mlist.add(m1);
    }
    insert mlist;
    
    //create new record in mainObjject with the new value after updating
    list<MainObject__c > mlist1=new list<MainObject__c >();
    for(CloneObject__c c2:trigger.new)
    {
       MainObject__c m2=new MainObject__c ();
       m2.name=c2.name;
       m2.Address__c=c2.My_Address__c;
       m2.Phone_Number__c=c2.Mobile_Number__c;
       mlist1.add(m2);
    }
    insert mlist1;
}