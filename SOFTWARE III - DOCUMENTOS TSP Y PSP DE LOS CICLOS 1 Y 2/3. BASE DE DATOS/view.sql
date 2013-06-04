-- El sistema web deberá permitir las consultas de los inmuebles, oficinas, casas, locales, apartamentos, fincas etc 
-- Rango de precios, tipo, barrio 
---------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW v_comerciales_loc AS(
    SELECT  c.tipo,c.estado,b.nombre barrio,c.direccion,c.precio,c.estrato,c.area,
    c.num_bannos,c.num_pisos,c.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM comerciales c, barrios b, personas p
    WHERE UPPER(tipo)='LOCAL'
    AND c.cod_barrio=b.codigo
    AND c.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_comerciales_ofi AS(
    SELECT  c.tipo,c.estado,b.nombre barrio,c.direccion,c.precio,c.estrato,c.area,
    c.num_bannos,c.num_pisos,c.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM comerciales c, barrios b, personas p
    WHERE UPPER(tipo)='OFICINA'
    AND c.cod_barrio=b.codigo
    AND c.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_comerciales_con AS(
    SELECT  c.tipo,c.estado,b.nombre barrio,c.direccion,c.precio,c.estrato,c.area,
    c.num_bannos,c.num_pisos,c.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM comerciales c, barrios b, personas p
    WHERE UPPER(tipo)='CONSULTORIO'
    AND c.cod_barrio=b.codigo
    AND c.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_comerciales_bod AS(
    SELECT  c.tipo,c.estado,b.nombre barrio,c.direccion,c.precio,c.estrato,c.area,
    c.num_bannos,c.num_pisos,c.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM comerciales c, barrios b, personas p
    WHERE UPPER(tipo)='bodega'
    AND c.cod_barrio=b.codigo
    AND c.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_comerciales_par AS(
    SELECT  c.tipo,c.estado,b.nombre barrio,c.direccion,c.precio,c.estrato,c.area,
    c.num_bannos,c.num_pisos,c.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM comerciales c, barrios b, personas p
    WHERE UPPER(tipo)='PARQUEADERO'
    AND c.cod_barrio=b.codigo
    AND c.cod_propietario=p.identificacion
);

CREATE OR REPLACE VIEW v_edificios_edi AS(
    SELECT e.estado,b.nombre barrio,e.direccion,e.precio,e.estrato,e.area,e.num_pisos,e.num_parqueaderos,
    e.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM edificios e, barrios b, personas p
    WHERE e.cod_barrio=b.codigo
    AND e.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_residenciales_cas AS(
    SELECT  r.tipo,r.estado,b.nombre barrio,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_pisos,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM residenciales r, barrios b, personas p
    WHERE UPPER(tipo)='CASA'
    AND r.cod_barrio=b.codigo
    AND r.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_residenciales_apa AS(
    SELECT  r.tipo,r.estado,b.nombre barrio,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_pisos,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM residenciales r, barrios b, personas p
    WHERE UPPER(tipo)='APARTAMENTO'
    AND r.cod_barrio=b.codigo
    AND r.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_residenciales_ape AS(
    SELECT  r.tipo,r.estado,b.nombre barrio,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_pisos,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM residenciales r, barrios b, personas p
    WHERE UPPER(tipo)='APARTAESTUDIO'
    OR UPPER(tipo)='APARTA ESTUDIO'
    AND r.cod_barrio=b.codigo
    AND r.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_rurales_fin AS(
    SELECT  r.tipo,r.estado,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_piscinas,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM rurales r, personas p
    WHERE UPPER(tipo)='FINCA'
    AND r.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_rurales_cas AS(
    SELECT  r.tipo,r.estado,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_piscinas,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM rurales r, personas p
    WHERE UPPER(tipo)='CASA CAMPESTRE'
    OR UPPER(tipo)='CASACAMPESTRE'
    AND r.cod_propietario=p.identificacion
);
CREATE OR REPLACE VIEW v_rurales_cab AS(
    SELECT  r.tipo,r.estado,r.direccion,r.precio,r.estrato,r.area,
    r.num_bannos,r.num_habitaciones,r.num_piscinas,r.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM rurales r, personas p
    WHERE UPPER(tipo)='CABANNA'
    OR UPPER(tipo)='CABANA'
    OR UPPER(tipo)='CABAÑA'
    AND r.cod_propietario=p.identificacion
);

CREATE OR REPLACE VIEW v_rango_inm1 AS(
    SELECT i.precio,i.codigo,i.direccion,
    i.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM inmuebles i, personas p
    WHERE i.precio BETWEEN 100000 AND 1000000
    AND i.cod_propietario=p.identificacion
    ORDER BY precio ASC
);
CREATE OR REPLACE VIEW v_rango_inm2 AS(
    SELECT i.precio,i.codigo,i.direccion,
    i.descripcion,(p.nombre||' '||p.apellido) Propietario
    FROM inmuebles i, personas p
    WHERE i.precio BETWEEN 1000000 AND 10000000
    AND i.cod_propietario=p.identificacion
    ORDER BY precio ASC
);
---------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM v_comerciales_loc;
SELECT * FROM v_comerciales_ofi;
SELECT * FROM v_comerciales_con;
SELECT * FROM v_comerciales_bod;
SELECT * FROM v_comerciales_par;
SELECT * FROM v_edificios_edi;
SELECT * FROM v_residenciales_cas;
SELECT * FROM v_residenciales_apa;
SELECT * FROM v_residenciales_ape;
SELECT * FROM v_rurales_fin;
SELECT * FROM v_rurales_cas;
SELECT * FROM v_rurales_cab;
SELECT * FROM v_rango_inm1;
SELECT * FROM v_rango_inm2;

---------------------------------------------------------------------------------------------------------------------------------------------------
