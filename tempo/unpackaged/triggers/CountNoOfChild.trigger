trigger CountNoOfChild on CloneObject__c (after insert,after delete) 
{
    set<id> ids=new set<id>();
    if(trigger.isinsert)
    {
    for(CloneObject__c cc:trigger.new)
    {
        ids.add(cc.Objectnumber__c);
    }
    }
    if(trigger.isDelete)
    {
        for(CloneObject__c c1:trigger.old)
        {
            ids.add(c1.Objectnumber__c);
        }
    }
    list<MainObject__c> mlist=new list<MainObject__c>();
    for(MainObject__c m1:[select id,name,(select id,name from CloneObjects__r)from MainObject__c  where id in:ids])
    {
        m1.No_Of_Child__c=m1.CloneObjects__r.size();
        mlist.add(m1);
    }
    update mlist;
}