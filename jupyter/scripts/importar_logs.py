import os
import time
import psycopg2
from datetime import datetime

LOG_FILE = "/logs/access.log"
STATE_FILE = "/home/jovyan/work/.log_position"

DB_HOST = "database"
DB_PORT = 5432
DB_NAME = "parcial_db"
DB_USER = "parcial_user"
DB_PASSWORD = "Parcial2026"


def conectar():
    while True:
        try:
            conexion = psycopg2.connect(
                host=DB_HOST,
                port=DB_PORT,
                database=DB_NAME,
                user=DB_USER,
                password=DB_PASSWORD
            )

            conexion.autocommit = True

            print("Importador conectado a PostgreSQL", flush=True)

            return conexion

        except Exception as e:
            print(f"Esperando PostgreSQL: {e}", flush=True)
            time.sleep(5)


def obtener_posicion():
    try:
        with open(STATE_FILE, "r") as archivo:
            return int(archivo.read().strip())
    except Exception:
        return 0


def guardar_posicion(posicion):
    with open(STATE_FILE, "w") as archivo:
        archivo.write(str(posicion))


def procesar_linea(linea, conexion):

    partes = linea.strip().split("|")

    if len(partes) != 7:
        print(f"Linea ignorada: {linea.strip()}", flush=True)
        return

    fecha = partes[0]
    ip = partes[1]
    metodo = partes[2]
    ruta = partes[3]

    try:
        codigo = int(partes[4])
        bytes_enviados = int(partes[5])
        tiempo = float(partes[6])
    except ValueError:
        print(f"Datos invalidos: {linea.strip()}", flush=True)
        return

    fecha = datetime.fromisoformat(
        fecha.replace("Z", "+00:00")
    )

    with conexion.cursor() as cursor:

        cursor.execute(
            """
            INSERT INTO trafico_nginx
            (
                fecha,
                ip_origen,
                metodo,
                ruta,
                codigo_http,
                bytes_enviados,
                tiempo_respuesta
            )
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """,
            (
                fecha,
                ip,
                metodo,
                ruta,
                codigo,
                bytes_enviados,
                tiempo
            )
        )

    print(
        f"Registrado: {metodo} {ruta} -> {codigo}",
        flush=True
    )


def main():

    conexion = conectar()

    while True:

        try:

            if not os.path.exists(LOG_FILE):
                print("Esperando archivo de logs...", flush=True)
                time.sleep(3)
                continue

            posicion = obtener_posicion()

            tamano = os.path.getsize(LOG_FILE)

            # El log fue recreado o truncado
            if posicion > tamano:
                posicion = 0

            with open(LOG_FILE, "r") as archivo:

                archivo.seek(posicion)

                while True:

                    linea = archivo.readline()

                    if not linea:
                        posicion = archivo.tell()
                        guardar_posicion(posicion)
                        break

                    try:
                        procesar_linea(linea, conexion)

                    except psycopg2.Error as e:
                        print(
                            f"Error PostgreSQL: {e}",
                            flush=True
                        )

                        try:
                            conexion.close()
                        except Exception:
                            pass

                        conexion = conectar()

                    posicion = archivo.tell()
                    guardar_posicion(posicion)

            time.sleep(2)

        except Exception as e:
            print(f"Error: {e}", flush=True)
            time.sleep(5)


if __name__ == "__main__":
    main()

