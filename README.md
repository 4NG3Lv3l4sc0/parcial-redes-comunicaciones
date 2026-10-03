# Parcial 2 - Comunicaciones

## Descripción

Proyecto de despliegue multi-contenedor para la asignatura de Comunicaciones.

La solución implementa cinco servicios mediante Docker Compose:

- Nginx: proxy inverso.
- Joomla: aplicación web.
- PostgreSQL: base de datos.
- Jupyter: análisis de datos.
- Grafana: visualización de métricas.

## Arquitectura

La solución utiliza dos redes Docker tipo bridge:

- frontend_net: conecta Nginx, Joomla, Jupyter y Grafana.
- backend_net: conecta Joomla, PostgreSQL, Jupyter y Grafana.

PostgreSQL no publica directamente el puerto 5432 hacia el host.

Nginx es el punto de entrada externo y publica el puerto 80.

## Servicios

| Servicio | Imagen | Puerto |
|---|---|---|
| Nginx | nginx:alpine | 80 |
| Joomla | joomla:latest | 80 |
| PostgreSQL | postgres:16-alpine | 5432 |
| Jupyter | jupyter/minimal-notebook:latest | 8888 |
| Grafana | grafana/grafana:latest | 3000 |

## Despliegue

Clonar el repositorio:

git clone https://github.com/4NG3Lv3l4sc0/parcial-redes-comunicaciones.git

Entrar al proyecto:

cd parcial-redes-comunicaciones

Crear las variables de entorno:

cp .env.example .env

Levantar los servicios:

docker compose up -d

Comprobar el estado:

docker compose ps

## Acceso

Joomla:

http://localhost

Jupyter:

http://localhost/jupyter/

Grafana:

http://localhost/grafana/

## Jupyter

El cuaderno analisis_datos.ipynb se encuentra precargado en el contenedor mediante un bind mount.

El notebook permite trabajar con PostgreSQL y analizar los datos registrados.

## Grafana

Grafana utiliza configuración declarativa mediante archivos de provisioning.

El datasource y el dashboard se cargan automáticamente al iniciar los servicios.

No es necesario crear manualmente el datasource ni importar el dashboard.

## Documentación

El análisis técnico de la arquitectura y del modelo OSI se encuentra en:

INFORME.md
