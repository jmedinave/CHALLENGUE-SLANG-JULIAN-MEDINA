# CHALLENGUE-SLANG-JULIAN-MEDINA
Este repo es para subir la query para el challenge slang julian Medina. 


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
![image](https://github.com/jmedinave/CHALLENGUE-SLANG-JULIAN-MEDINA/assets/49196705/3fe01143-3fcc-47ba-9920-f614a70a44ca)

Por ultimo, la tabla generada es la siguiente:


En la parte analitica de los datos, podemos evidenciar que cada parte del proceso del dale es un cuello de botella en si, pues se evidencia que cada vez que pasa a la siguiente etapa del proceso, el numero de exitos o "TRUE" disminuye a la mitad. 
