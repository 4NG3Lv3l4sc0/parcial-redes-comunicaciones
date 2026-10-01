CREATE TABLE IF NOT EXISTS actividad (
    id SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    servicio VARCHAR(50) NOT NULL,
    tipo_evento VARCHAR(50) NOT NULL,
    codigo_http INTEGER,
    ip_origen VARCHAR(50),
    descripcion TEXT
);

INSERT INTO actividad
(servicio, tipo_evento, codigo_http, ip_origen, descripcion)
VALUES
('joomla', 'GET', 200, '192.168.1.10', 'Acceso página principal'),
('joomla', 'GET', 200, '192.168.1.11', 'Consulta de artículo'),
('joomla', 'POST', 200, '192.168.1.10', 'Inicio de sesión'),
('joomla', 'GET', 404, '192.168.1.12', 'Página no encontrada'),
('joomla', 'GET', 200, '192.168.1.13', 'Acceso página principal'),
('joomla', 'GET', 200, '192.168.1.10', 'Consulta de artículo'),
('joomla', 'GET', 404, '192.168.1.14', 'Recurso inexistente'),
('joomla', 'POST', 200, '192.168.1.11', 'Formulario enviado'),
('joomla', 'GET', 500, '192.168.1.15', 'Error interno simulado'),
('joomla', 'GET', 200, '192.168.1.12', 'Acceso página principal');

