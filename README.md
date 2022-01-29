NOTA: Script de la base de datos y documento archivo Postman en la carpeta 'ExtraFiles'

Instalación de Base de Datos:
Configurar el archivo '.env' agregarle el nombre de la base de datos que vamos a crear e importar en mysql
o con la cúal vamos a realizar las migraciones con los seeders.

Si creamos la base de datos y no importamos el script, entonces ejecutaremos los seeders utilizar el comando:
'php artisan migrate:fresh -seed'

Para realizar las pruebas con Postman utilizar el siguiente comando para iniciar el servidor apache:
'php artisan serve'
