# CHALLENGUE-SLANG-JULIAN-MEDINA
Este repo es para subir la query para el challenge slang julian Medina. 


Primero debemos importar el archivo excel al entorno de sql, ya que use un entorno online, hago uso de la herramienta import CSV. 
Sin embargo, puedo hacerlo si el entorno es local , se debe usar la siguiente linea de codigo:

```sql 
sqlite3 nombre_de_base_de_datos.db

.mode csv
.import /ruta al archhivo /ChallengeBPAIntern.csv ChallengeBPAIntern

```
