# INFORME TÉCNICO - PARCIAL 2 COMUNICACIONES

## 1. Topología y Flujo de Información

### 1.1 Descripción general

La solución implementa una arquitectura de cinco contenedores mediante Docker Compose:

1. Nginx
2. Joomla
3. PostgreSQL
4. Jupyter
5. Grafana

La arquitectura utiliza dos redes Docker de tipo bridge:

- frontend_net
- backend_net

La red frontend_net conecta Nginx, Joomla, Jupyter y Grafana.

La red backend_net conecta Joomla, PostgreSQL, Jupyter y Grafana.

PostgreSQL solamente pertenece a backend_net y no publica directamente el puerto 5432 hacia el host.

Nginx es el único servicio que publica un puerto hacia el host, utilizando el puerto 80.

### 1.2 Servicios y puertos

| Servicio | Imagen | Puerto interno | Puerto publicado |
|---|---|---:|---:|
| Nginx | nginx:alpine | 80 | 80 |
| Joomla | joomla:latest | 80 | No |
| PostgreSQL | postgres:16-alpine | 5432 | No |
| Jupyter | jupyter/minimal-notebook:latest | 8888 | No |
| Grafana | grafana/grafana:latest | 3000 | No |

### 1.3 Topología

La arquitectura puede representarse de la siguiente manera:

```text
                         USUARIO
                            |
                            | HTTP :80
                            v
                    +---------------+
                    |     NGINX     |
                    |   puerto 80   |
                    +-------+-------+
                            |
             +--------------+--------------+
             |              |              |
             v              v              v
        +---------+   +-----------+   +-----------+
        | JOOMLA  |   |  JUPYTER  |   |  GRAFANA  |
        |   :80   |   |   :8888   |   |   :3000   |
        +----+----+   +-----+-----+   +-----+-----+
             |              |                 |
             |              |                 |
             +--------------+-----------------+
                            |
                            v
                    +---------------+
                    |  POSTGRESQL   |
                    |     :5432     |
                    +---------------+

              frontend_net
        Nginx - Joomla - Jupyter - Grafana

              backend_net
        Joomla - Jupyter - Grafana - PostgreSQL


# 2. Análisis Detallado del Modelo OSI

## 2.1 Capa 7 - Aplicación

La capa 7 corresponde a los protocolos y servicios utilizados directamente por las aplicaciones.

En esta arquitectura intervienen principalmente HTTP, WebSocket, PostgreSQL y los registros de actividad generados por el servidor web.

### HTTP y Nginx

Nginx funciona como proxy inverso HTTP.

Cuando recibe una solicitud del cliente, la reenvía al servicio correspondiente y utiliza cabeceras que permiten conservar información de la solicitud original.

Entre las cabeceras utilizadas se encuentran:

- Host
- X-Real-IP
- X-Forwarded-For
- X-Forwarded-Proto

### Cabecera Host

La cabecera Host permite conservar el nombre del host solicitado por el cliente.

Nginx la reenvía hacia el servicio Joomla para que la aplicación pueda conocer el host original de la petición.

### Cabecera X-Forwarded-For

La cabecera X-Forwarded-For permite transportar la dirección IP original del cliente a través del proxy inverso.

Esto resulta importante porque Joomla recibe la solicitud desde Nginx y no directamente desde el navegador.

### Cabecera X-Forwarded-Proto

La cabecera X-Forwarded-Proto indica el protocolo utilizado originalmente por el cliente.

En esta implementación permite que el servicio conozca si la solicitud original utilizó HTTP.

### WebSockets de Jupyter

Jupyter utiliza WebSockets para mantener comunicación interactiva entre el navegador y el kernel.

Por esta razón Nginx utiliza HTTP/1.1 y las cabeceras necesarias para realizar HTTP Upgrade.

La configuración incluye conceptualmente:

```text
proxy_http_version 1.1
Upgrade
Connection: upgrade

```


### PostgreSQL

PostgreSQL utiliza un modelo cliente-servidor.

Los servicios se conectan al servidor mediante el nombre:

database

y el puerto:

5432

Joomla utiliza PostgreSQL para almacenar la información necesaria para el funcionamiento del CMS.

Jupyter también puede consultar PostgreSQL para trabajar con los datos procesados.

Grafana utiliza PostgreSQL como fuente de datos para consultar información y construir los paneles.

### Registros de actividad

Nginx genera registros de las solicitudes recibidas.

Los registros contienen información como:

- fecha y hora
- dirección IP
- método HTTP
- URI
- código de respuesta
- bytes enviados
- tiempo de respuesta

Estos registros permiten analizar la actividad generada por los usuarios.


## 2.2 Capa 4 - Transporte

La capa 4 se encarga del transporte de los datos entre los extremos de comunicación.

En esta solución se utiliza principalmente TCP.

### Puertos TCP

Los principales puertos utilizados son:

| Servicio | Puerto TCP | Uso |
|---|---:|---|
| Nginx | 80 | Entrada HTTP |
| Joomla | 80 | Servidor HTTP interno |
| PostgreSQL | 5432 | Base de datos |
| Jupyter | 8888 | Servidor Jupyter |
| Grafana | 3000 | Interfaz y API de Grafana |

El único puerto publicado hacia el host es el puerto 80 de Nginx.

Los puertos 5432, 8888 y 3000 se utilizan para comunicación interna entre contenedores.

### Comunicación TCP

Cuando un servicio necesita comunicarse con otro, se establece una conexión TCP.

Por ejemplo:

Nginx -> Joomla:80

Joomla -> database:5432

Jupyter -> database:5432

Grafana -> database:5432

TCP proporciona entrega ordenada y confiable de los datos.

El establecimiento de una conexión TCP utiliza el procedimiento conocido como three-way handshake.

### Conexiones persistentes

HTTP/1.1 permite mantener conexiones persistentes para evitar establecer una conexión TCP independiente para cada recurso.

Esto resulta especialmente importante para Jupyter debido al uso de WebSockets.

La configuración de Nginx utiliza HTTP/1.1 en las rutas de Jupyter y Grafana.

La solución no configura explícitamente un connection pool de PostgreSQL en Docker Compose.


## 2.3 Capa 3 - Red

La capa 3 se relaciona con el direccionamiento IP y el encaminamiento entre redes.

Docker proporciona redes virtuales para permitir la comunicación entre los contenedores.

En esta solución existen dos redes:

frontend_net

backend_net

### frontend_net

La red frontend_net conecta:

Nginx
Joomla
Jupyter
Grafana

Su función principal es permitir la comunicación del proxy inverso con los servicios que deben ser accesibles mediante las rutas HTTP.

### backend_net

La red backend_net conecta:

Joomla
Jupyter
Grafana
PostgreSQL

Esta red permite la comunicación con PostgreSQL.

PostgreSQL solamente pertenece a backend_net y no tiene conexión directa con frontend_net.

### DNS interno de Docker

Docker proporciona un servidor DNS interno para los contenedores.

La dirección utilizada para este servicio es:

127.0.0.11

Gracias al DNS interno, los contenedores pueden utilizar nombres de servicio en lugar de direcciones IP.

Por ejemplo:

database
joomla
jupyter
grafana

Por lo tanto, Joomla puede comunicarse con PostgreSQL mediante:

database:5432

y Nginx puede comunicarse con Joomla mediante:

joomla:80

Esto evita depender de direcciones IP que pueden cambiar cuando los contenedores son recreados.

### NAT y publicación del puerto

Docker publica el puerto 80 mediante la configuración:

80:80

El primer puerto corresponde al host y el segundo al contenedor.

De esta manera:

Host:80
   |
   v
Nginx:80

El kernel del host participa en el reenvío y en las reglas de red necesarias para entregar el tráfico al contenedor.

Los servicios internos no publican sus puertos directamente hacia el host.


## 2.4 Capa 2 - Enlace de Datos

La capa 2 permite la comunicación dentro de una red local.

Docker implementa sus redes bridge utilizando interfaces virtuales y dispositivos de puente.

### Interfaces veth

Los contenedores utilizan interfaces de red virtuales.

Docker utiliza pares de interfaces virtuales conocidos como veth.

Conceptualmente:

Contenedor
    |
   veth
    |
  bridge
    |
   veth
    |
Otro contenedor

Un extremo de la interfaz pertenece al espacio de red del contenedor y el otro se conecta al bridge correspondiente del host.

### Bridges

Las redes Docker de tipo bridge utilizan un puente virtual para interconectar los contenedores pertenecientes a la misma red.

Esto permite que los contenedores de frontend_net se comuniquen entre sí y que los contenedores de backend_net se comuniquen entre sí.

El bridge funciona como el elemento de conmutación dentro de la red virtual.

### ARP

En IPv4, ARP permite resolver una dirección IP en una dirección MAC dentro del segmento local.

Cuando un contenedor necesita comunicarse con otro contenedor de la misma red, la resolución de direcciones permite determinar la dirección MAC correspondiente al destino.

La comunicación se realiza entonces mediante las interfaces virtuales y el bridge de Docker.

De esta manera, las capas 2 y 3 trabajan conjuntamente para permitir la comunicación interna entre los contenedores.


# 3. Guía de Verificación y Demostración

## 3.1 Levantar los servicios

Desde la raíz del repositorio se ejecuta:

docker compose up -d

Después se verifica el estado de los contenedores:

docker compose ps

Los cinco servicios deben encontrarse activos:

- parcial_nginx
- parcial_joomla
- parcial_database
- parcial_jupyter
- parcial_grafana

PostgreSQL debe aparecer en estado healthy.

## 3.2 Verificar Joomla

Abrir en el navegador:

http://localhost

La página corresponde al portal Joomla servido mediante Nginx.

Para generar tráfico se pueden realizar varias solicitudes navegando por el sitio.

También se puede comprobar desde la terminal mediante:

curl http://localhost

Las solicitudes generan registros de actividad en Nginx.

## 3.3 Verificar Jupyter

Abrir:

http://localhost/jupyter/

Ingresar utilizando el token configurado en el archivo .env.

Dentro de Jupyter:

1. Abrir la carpeta work.
2. Abrir el archivo analisis_datos.ipynb.
3. Ejecutar las celdas del notebook.
4. Verificar la conexión con PostgreSQL.

El notebook está precargado en el contenedor mediante un bind mount del repositorio.

No es necesario subir manualmente el archivo desde la interfaz de Jupyter.

## 3.4 Verificar Grafana

Abrir:

http://localhost/grafana/

Ingresar con las credenciales configuradas.

Entrar en Dashboards y abrir:

Monitoreo de tráfico web

El dashboard debe mostrar las gráficas de actividad.

Entre las gráficas disponibles se encuentran:

- Peticiones por código HTTP.
- Peticiones por dirección IP.

El datasource de PostgreSQL está provisionado automáticamente.

Por lo tanto, no es necesario crear manualmente el datasource ni importar el dashboard.

## 3.5 Verificar las redes Docker

Desde la terminal se pueden listar las redes:

docker network ls

También se pueden inspeccionar las redes del proyecto:

docker network inspect parcial-redes-comunicaciones_frontend_net

docker network inspect parcial-redes-comunicaciones_backend_net

Esto permite comprobar qué contenedores pertenecen a cada red.

## 3.6 Verificar los logs

Para consultar los registros de los servicios:

docker compose logs

También se pueden consultar individualmente:

docker compose logs nginx

docker compose logs jupyter

docker compose logs grafana

docker compose logs database
