# CHALLENGUE-SLANG-JULIAN-MEDINA
Este repo es para subir la query para el challenge slang julian Medina. 

### Requerimientos:

<ul>
    <li>EN UNA SOLA TABLA Y UNA SOLA QUERY presentar los casos en los que el evento SAL,SQL,OPP sucedieron y agrupar por mes.&nbsp;</li>
    <li>Adicionalmente, presentar los casos en los que el evento stagename tiene el valor &quot;Closed Won&quot; y agrupar por mes.</li>
</ul>
<p>&nbsp;</p>
Podemos identificar 4 subquerys. 


### Procedimiento:

Primero debemos importar el archivo excel al entorno de sql, ya que use un entorno online, hago uso de la herramienta import CSV. 
Sin embargo, puedo hacerlo si el entorno es local , se debe usar la siguiente linea de codigo:

```sql 
sqlite3 nombre_de_base_de_datos.db

.mode csv
.import /ruta al archhivo /ChallengeBPAIntern.csv ChallengeBPAIntern

```
Realmente me costo poner las 3 querys en una sola tabla y una QUERY general, sin embargo, expongo query  a query de cada requerimiento presentado en el CHALLENGE

### QUERY SAL
Este QUERY expone los casos TRUE de la columna C_sal__C y los agrupa por mes usando el date del acontecimiento: 
 
```sql 
select strftime('%m', sal_date) as mes   ,COUNT(c_sal__c) AS success_sal
FROM ChallengeBPAIntern
where  strftime('%m', sal_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12") 
GROUP By mes;
```
Resultado:
![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/3fe01143-3fcc-47ba-9920-f614a70a44ca)

### QUERY SQL
Este QUERY expone los casos TRUE de la columna C_SQL__C y los agrupa por mes usando el date del acontecimiento: 
```sql 
select strftime('%m', sql_date) as mes2   ,COUNT(c_sql__c) AS success_sql 
FROM ChallengeBPAIntern
where  strftime('%m', sql_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12") 
GROUP BY mes2;

```
Resultado:
![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/3bf150a5-3086-49e2-8af3-e4105245403c)

### QUERY OPP
Este QUERY expone los casos TRUE de la columna C_OPP__C y los agrupa por mes usando el date del acontecimiento: 
```sql 
select strftime('%m', opportunity_date) as mes3   ,COUNT(c_opp__c) AS success_opp
FROM ChallengeBPAIntern
where  strftime('%m', opportunity_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12") 
GROUP BY mes3;
```
![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/94871674-fb21-4998-b59e-d1bada8e2c9f)

### QUERY stagename
Este QUERY expone los casos en los cuales stagename="Closed Won" y los agrupa por mes usando el date del acontecimiento: 
```sql 
SELECT strftime('%m', close_date) as mes4 , count(stagename) as Closed_Won_per_month
FROM ChallengeBPAIntern
where stagename="Closed Won" and strftime('%m', close_date)  in ("01","02","03","04","05","06","07","08","09","10","11","12")  
GROUP By mes4 ;
```
![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/a41fe1f9-957b-40a8-9cda-860087d72ae0)

En la parte analitica de los datos, podemos evidenciar que cada parte del proceso del proceso de deal  es un cuello de botella en si, pues se evidencia que cada vez que pasa a la siguiente etapa del proceso, el numero de exitos o "TRUE" disminuye a la mitad. Adicionalmente una pequeña cantidad de deals realmente fueron cerrados y exitosos.
