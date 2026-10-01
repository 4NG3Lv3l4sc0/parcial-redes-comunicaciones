CREATE TABLE IF NOT EXISTS trafico_nginx (
    id BIGSERIAL PRIMARY KEY,
    fecha TIMESTAMPTZ NOT NULL,
    ip_origen VARCHAR(100),
    metodo VARCHAR(10),
    ruta TEXT,
    codigo_http INTEGER,
    bytes_enviados BIGINT,
    tiempo_respuesta DOUBLE PRECISION,
    creado_en TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_trafico_fecha
ON trafico_nginx(fecha);

CREATE INDEX IF NOT EXISTS idx_trafico_codigo
ON trafico_nginx(codigo_http);

CREATE INDEX IF NOT EXISTS idx_trafico_ip
ON trafico_nginx(ip_origen);

