# Curso Data Engineering: Proyecto

Este repositorio contiene un modelado de datos con Dbt cloud, que es una herramienta de análisis de datos que facilita la transformación y modelado de datos en el cloud. En este caso vamos a conectar Dbt con Snowflake. 

El desarrollo de este proyecto constará de las siguientes partes: 

En DEV;Modelado de datos desde la capa bronce (sources), desde la que crearemos la capa silver (staging) que finalmente
se convertirá en las tablas de fct y dim en la capa gold.

En PRO;Pasaremos todas las actualizaciones al main que finamente se  verán reflejadas en Snowflake.

Contamos con ocho tablas que provienen de Sql Server y de un archivo de Google Sheet que cargamos a través de Fivetran. 

Estas tablas de origen son:

    ·Addresses
    ·Events
    ·Order_items
    ·Order_items
    ·Products
    ·Promos
    ·Users
    ·Budget

De estas tablas hemos de generar al menos los modelos de: Users, Addresses, Promos y Orders. Englobandolas en Dimensiones o Facts. 

También se nos solicita crear documención y test para cada una de las capas.

En PRO;Una vez finalizadas las tareas anteriores se pasasn todas las actualizaciones al main que finamente podemos ver reflejadas en Snowflake, dónde posteriormente podemos conectar Power BI, para EDA.

