# PROYECTO NEW ADDRESS ARGENTINA


## Introducción

Nuestro cliente, una empresa en tecnología, buscaba mejorar la gestión y análisis de sus datos de direcciones en Argentina, utilizando las herramientas y servicios de Azure. Este proyecto no solo implicaba la incorporación de nuevos registros, sino también la optimización del flujo de datos y su visualización.

## Objetivo:

Imagina una plataforma donde cada registro se integra sin problemas, se transforma, se limpia automáticamente y tiene una visualizacion accesible. Nuestro cliente visualizó un flujo de datos automatizado y transparente que reduciría el tiempo de procesamiento y mejoraría la calidad de los datos disponibles para la toma de decisiones estratégicas.

# FLUJO DE TRABAJO
Procesamiento de datos
![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/WORKFLOW.jpg)

## IMPLEMENTACION

## Paso 1: Ingesta de Datos
Los nuevos registros de direcciones se añadieron a la base de datos SQL Server. Utilizando Integration Runtime, estos datos se conectaron a Azure, asegurando una transferencia segura y eficiente.


![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/NuevosRegistros.png)


## Paso 2: Pipeline en Azure Data Factory
Se creó un pipeline en Azure Data Factory para gestionar el flujo de datos. Este pipeline organizó los datos en subcarpetas por cada tabla y almacenó los archivos en formato CSV.

![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/pipeline%20datafactory.png)

## Paso 3: Transformación y Limpieza en Azure Databricks
Azure Databricks se utilizó para transformar y limpiar los datos. Aquí, se estandarizaron los nombres de las columnas y se realizaron otras transformaciones necesarias para garantizar la calidad y coherencia de los datos.

## Paso 4: Almacenamiento en Azure Storage (Gold)
Los datos transformados se almacenaron en una cuenta de almacenamiento llamada "gold". Este almacenamiento seguro y escalable garantiza que los datos estén siempre disponibles para su análisis. 

![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/cuenta%20almacenamiento.png)

## Paso 5: Creación de la Base de Datos en Azure Synapse
Se creó la base de datos dbgold en Azure Synapse Analytics, junto con las tablas necesarias para organizar los datos transformados. aca puedes visualizar la [creacion de tablas](synapse/CreateViews.sql)

![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/vistas%20azure%20synapse.png)

## Paso 6: Visualización en Power BI
Finalmente, los datos se conectaron a Power BI, donde se crearon visualizaciones detalladas que permitían a la empresa analizar y comprender mejor los nuevos registros de direcciones.

 Antes/Despues
 
![](https://github.com/gbatistela/Proyecto_Azure/blob/main/assets/powerbi.jpg)




