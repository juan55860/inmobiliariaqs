CREATE SEQUENCE sec_documentos 	minvalue 101 maxvalue 999999 increment by 1;
CREATE SEQUENCE sec_barrios 	minvalue 101 maxvalue 999999 increment by 1;
CREATE SEQUENCE sec_inmuebles 	minvalue 101 maxvalue 999999 increment by 1;
CREATE SEQUENCE sec_solicitudes minvalue 101 maxvalue 999999 increment by 1;
CREATE SEQUENCE sec_contratos 	minvalue 101 maxvalue 999999 increment by 1;
CREATE SEQUENCE sec_fotos 	minvalue 101 maxvalue 999999 increment by 1;
---------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE "documentos"(
	codigo 		VARCHAR DEFAULT 'doc'||nextval('sec_documentos'),
	nombre 		VARCHAR,
	archivo		VARCHAR,
CONSTRAINT pk_documentos_cod PRIMARY KEY(codigo)
);
CREATE TABLE "personas"(
	identificacion 		INTEGER NOT NULL,
	tipo_identificacion 	VARCHAR NOT NULL,
	nombre 			VARCHAR NOT NULL,
	apellido 		VARCHAR NOT NULL,
	direccion 		VARCHAR(50) NOT NULL,
	telefono 		VARCHAR NOT NULL,
	correo 			VARCHAR NOT NULL,
	contrasenna 		VARCHAR NOT NULL,
	rol 			VARCHAR NOT NULL,
	fecha_registro		DATE,
CONSTRAINT pk_personas_cod PRIMARY KEY(identificacion),
CONSTRAINT uq_personas_correo UNIQUE(correo)
);
CREATE TABLE "barrios"(
	codigo	VARCHAR DEFAULT 'bar'||nextval('sec_barrios'),
	nombre	VARCHAR NOT NULL,
CONSTRAINT pk_barrios_cod PRIMARY KEY(codigo)
);
---------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE "inmuebles"(
	codigo 			VARCHAR DEFAULT 'inm'||nextval('sec_inmuebles'),
	precio			INTEGER,
	direccion 		VARCHAR,
	estrato 		VARCHAR,
	cod_propietario 	INTEGER NOT NULL,
	prioridad 		INTEGER,
	area	 		INTEGER,
        descripcion 		VARCHAR,
	estado			VARCHAR,
	fecha_registro		DATE,
	validacion		BOOLEAN,
CONSTRAINT pk_inmuebles_cod PRIMARY KEY(codigo),
CONSTRAINT fk_inmuebles_cod_pro FOREIGN KEY(cod_propietario)
REFERENCES personas(identificacion)MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE "comerciales"(
	tipo			VARCHAR,
	num_bannos		INTEGER,
	num_pisos		INTEGER,
	cod_barrio		VARCHAR,
CONSTRAINT pk_comerciales_cod PRIMARY KEY(codigo),
CONSTRAINT fk_comerciales_cod_bar FOREIGN KEY(cod_barrio) 
REFERENCES barrios(codigo)MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE
)INHERITS(inmuebles);
CREATE TABLE "edificios"(
	num_pisos		INTEGER,
	num_parqueaderos	INTEGER,
	cod_barrio		VARCHAR,
CONSTRAINT pk_edificios_cod PRIMARY KEY(codigo),
CONSTRAINT fk_comerciales_cod_bar FOREIGN KEY(cod_barrio) 
REFERENCES barrios(codigo)MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE

)INHERITS(inmuebles);
CREATE TABLE "lotes"(
	tipo			VARCHAR,
CONSTRAINT pk_lotes_cod PRIMARY KEY(codigo)
)INHERITS(inmuebles);
CREATE TABLE "residenciales"(
	tipo			VARCHAR,
	num_bannos		INTEGER,
	num_habitaciones	INTEGER,
	num_pisos		INTEGER,
	parqueadero		BOOLEAN,
	cod_barrio		VARCHAR,
CONSTRAINT pk_residenciales_cod PRIMARY KEY(codigo),
CONSTRAINT fk_residenciales_cod_bar FOREIGN KEY(cod_barrio) 
REFERENCES barrios(codigo)MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE
)INHERITS(inmuebles);
CREATE TABLE "rurales"(
	tipo			VARCHAR,
	num_bannos		INTEGER,
	num_habitaciones	INTEGER,
	num_piscinas		INTEGER,
CONSTRAINT pk_rurales_cod PRIMARY KEY(codigo)
)INHERITS(inmuebles);
---------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE "solicitudes"(
	codigo 		VARCHAR DEFAULT 'sol'||nextval('sec_solicitudes'),
	nombre 		VARCHAR NOT NULL,
	apellido 	VARCHAR NOT NULL,
	telefono 	INTEGER,
	correo 		VARCHAR,
	cod_inmueble 	VARCHAR NOT NULL,
CONSTRAINT pk_solicitudes_cod PRIMARY KEY(codigo),
CONSTRAINT uq_solicitudes_cor UNIQUE(correo)
--,CONSTRAINT fk_solicitudes_cod FOREIGN KEY(cod_inmueble)
--	REFERENCES inmuebles(codigo)MATCH SIMPLE
--	ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE "contratos"(
	codigo 			VARCHAR DEFAULT 'con'||nextval('sec_contratos'),
	cod_arrendador 		INTEGER NOT NULL,
	cod_arrendatario	INTEGER NOT NULL,
	descripcion 		VARCHAR,
	fecha 			DATE,
	cod_inmueble 		VARCHAR NOT NULL,
	valor 			INTEGER,
	comision 		INTEGER,
	duracion 		INTEGER,
CONSTRAINT pk_contratos_cod PRIMARY KEY(codigo),	
CONSTRAINT fk_contratos_cod1 FOREIGN KEY (cod_arrendador) 
REFERENCES personas(identificacion) MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_contratos_cod2 FOREIGN KEY (cod_arrendatario) 
REFERENCES personas(identificacion) MATCH SIMPLE
     ON UPDATE CASCADE ON DELETE CASCADE
--,CONSTRAINT fk_contratos_cod FOREIGN KEY(cod_inmueble) 
--REFERENCES inmuebles(codigo)MATCH SIMPLE
--     ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE "fotos"(
	codigo 		VARCHAR DEFAULT 'fot'||nextval('sec_fotos'),
	archivo 	VARCHAR NOT NULL,
	cod_inmueble 	VARCHAR NOT NULL,
CONSTRAINT pk_cod_foto PRIMARY KEY(codigo)
--,CONSTRAINT fk_fotos_cod FOREIGN KEY(cod_inmueble)
--REFERENCES inmuebles(codigo)MATCH SIMPLE
--     ON UPDATE CASCADE ON DELETE CASCADE
);
