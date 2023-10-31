/* se debe importar la tabla cChallengeBPAIntern primero al entorno sql LITE, como se trabajo en entorno online, hago uso de la herramienta import CSV, sin embargo,

sqlite3 nombre_de_base_de_datos.db

.mode csv
.import /ruta al archhivo /ChallengeBPAIntern.csv ChallengeBPAIntern

*/
/* QUERY que cuenta los booleans de c_sal__c ,  c_sql__c , c_opp__c  y los agrupa por mes  */
select strftime('%m', close_date) as mes ,  
SUM(c_sal__c) as c_sal_sum , SUM(c_sql__c) AS c_sql__sum , SUM(c_opp__c) AS c_OPP__sum 
FROM ChallengeBPAIntern
GROUP by mes ;
