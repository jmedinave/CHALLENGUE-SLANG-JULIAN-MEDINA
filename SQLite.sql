



select strftime('%m', close_date) as mes ,  
SUM(c_sal__c) as c_sal_sum , SUM(c_sql__c) AS c_sql__sum , SUM(c_opp__c) AS c_OPP__sum 
FROM ChallengeBPAIntern
GROUP by mes ;