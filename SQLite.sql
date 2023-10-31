/* se debe importar la tabla cChallengeBPAIntern primero al entorno sql LITE, como se trabajo en entorno online, hago uso de la herramienta import CSV, sin embargo,

sqlite3 nombre_de_base_de_datos.db

.mode csv
.import /ruta al archhivo /ChallengeBPAIntern.csv ChallengeBPAIntern

*/
/* QUERY 1 SAL */
select strftime('%m', close_date) as mes ,  
SUM(c_sal__c) as c_sal_sum , SUM(c_sql__c) AS c_sql__sum , SUM(c_opp__c) AS c_OPP__sum 
FROM ChallengeBPAIntern
GROUP by mes ;
/* QUERY 2 SQL */
select strftime('%m', sql_date) as mes2   ,COUNT(c_sql__c) AS success_sql 
FROM ChallengeBPAIntern
where  strftime('%m', sql_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12") 
GROUP BY mes2;
/* QUERY 3 OPPORTUNITY  */
select strftime('%m', opportunity_date) as mes3   ,COUNT(c_opp__c) AS success_opp
FROM ChallengeBPAIntern
where  strftime('%m', opportunity_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12") 
GROUP BY mes3;
/* QUERY 4 Stagename  */
SELECT strftime('%m', close_date) as mes4 , count(stagename) as Closed_Won_per_month
FROM ChallengeBPAIntern
where stagename="Closed Won" and strftime('%m', close_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12")  
GROUP By mes4 ;
