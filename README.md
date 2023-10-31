# CHALLENGUE-SLANG-JULIAN-MEDINA
Este repo es para subir la query para el challenge slang julian Medina. 


Primero debemos importar el archivo excel al entorno de sql, ya que use un entorno online, hago uso de la herramienta import CSV. 
Sin embargo, puedo hacerlo si el entorno es local , se debe usar la siguiente linea de codigo:

```sql 
sqlite3 nombre_de_base_de_datos.db

.mode csv
.import /ruta al archhivo /ChallengeBPAIntern.csv ChallengeBPAIntern

```
El Query creado para crear una tabla que cuenta los booleans de c_sal__c ,  c_sql__c , c_opp__c  y los agrupa por mes.

```sql 
select strftime('%m', close_date) as mes ,  
SUM(c_sal__c) as c_sal_sum , SUM(c_sql__c) AS c_sql__sum , SUM(c_opp__c) AS c_OPP__sum 
FROM ChallengeBPAIntern
GROUP by mes ;
```

Por ultimo, la tabla generada es la siguiente:

![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/1397123f-43aa-4474-b973-dfcd28545097)
