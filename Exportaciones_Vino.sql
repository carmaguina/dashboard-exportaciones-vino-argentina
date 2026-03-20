CREATE TABLE "Tabla de Hecho" (
    "Fecha" DATE NOT NULL,
    "id_varietal" TINYINT NOT NULL,
    "id_tipo_envase" TINYINT NOT NULL,
    "id_zona_produccion" TINYINT NOT NULL,
    "id_pais_destino" TINYINT NOT NULL,
    "id_tipo_vino" TINYINT NOT NULL,
    "id_color" TINYINT NOT NULL,
    "Litros_Exportados" FLOAT NOT NULL,
    "Grado_alcohol" FLOAT NOT NULL,
    "Acidez" FLOAT NOT NULL,
    "Valor_Total_FOB" FLOAT NOT NULL,
    "id_bodega" SMALLINT NOT NULL,
    "id_provincia_origen" TINYINT NOT NULL,
    "id_certificacion" TINYINT NOT NULL,
    "precio_por_litro_USD" FLOAT(53) NOT NULL,
    "id_segmento_precio" TINYINT NOT NULL,
    "id_canal_distribucion" TINYINT NOT NULL,
    "id_contingente_arancelario" TINYINT NOT NULL,
    "id_formato_fraccionamiento" TINYINT NOT NULL,
    "id_exportacion_tipo" TINYINT NOT NULL,
    "id_empresa_asociada_CAVG" TINYINT NOT NULL
);
CREATE TABLE "Varietal"(
    "ID_Varietal" TINYINT NOT NULL,
    "Varietal" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Varietal" ADD CONSTRAINT "varietal_id_varietal_primary" PRIMARY KEY("ID_Varietal");
CREATE TABLE "Tipo Envase"(
    "ID_Tipo_Envase" TINYINT NOT NULL,
    "Tipo_Envase" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Tipo Envase" ADD CONSTRAINT "tipo envase_id_tipo_envase_primary" PRIMARY KEY("ID_Tipo_Envase");
CREATE TABLE "Zona Produccion"(
    "ID_Zona_Produccion" TINYINT NOT NULL,
    "Zona_Produccion" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Zona Produccion" ADD CONSTRAINT "zona produccion_id_zona_produccion_primary" PRIMARY KEY("ID_Zona_Produccion");
CREATE TABLE "Pais Destino"(
    "ID_Pais_Destino" TINYINT NOT NULL,
    "Pais_Destino" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Pais Destino" ADD CONSTRAINT "pais destino_id_pais_destino_primary" PRIMARY KEY("ID_Pais_Destino");
CREATE TABLE "Tipo de Vino"(
    "ID_Tipo_Vino" TINYINT NOT NULL,
    "Tipo_Vino" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Tipo de Vino" ADD CONSTRAINT "tipo de vino_id_tipo_vino_primary" PRIMARY KEY("ID_Tipo_Vino");
CREATE TABLE "Color"(
    "ID_Color" TINYINT NOT NULL,
    "Color" VARCHAR(25) NOT NULL
);
ALTER TABLE
    "Color" ADD CONSTRAINT "color_id_color_primary" PRIMARY KEY("ID_Color");
CREATE TABLE "Bodega"(
    "ID_Bodega" SMALLINT NOT NULL,
    "Bodega" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "Bodega" ADD CONSTRAINT "bodega_id_bodega_primary" PRIMARY KEY("ID_Bodega");
CREATE TABLE "Provincia_Origen"(
    "ID_Provincia_Origen" TINYINT NOT NULL,
    "Provincia_Orgien" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Provincia_Origen" ADD CONSTRAINT "provincia_origen_id_provincia_origen_primary" PRIMARY KEY("ID_Provincia_Origen");
CREATE TABLE "Certificacion"(
    "ID_Certificacion" TINYINT NOT NULL,
    "Certificacion" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Certificacion" ADD CONSTRAINT "certificacion_id_certificacion_primary" PRIMARY KEY("ID_Certificacion");
CREATE TABLE "Segmento Precio"(
    "ID_Segmento_Precio" TINYINT NOT NULL,
    "Segmento_Precio" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Segmento Precio" ADD CONSTRAINT "segmento precio_id_segmento_precio_primary" PRIMARY KEY("ID_Segmento_Precio");
CREATE TABLE "Canal de Distribucion"(
    "ID_Canal_Distribucion" TINYINT NOT NULL,
    "Canal_Distribucion" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Canal de Distribucion" ADD CONSTRAINT "canal de distribucion_id_canal_distribucion_primary" PRIMARY KEY("ID_Canal_Distribucion");
CREATE TABLE "Contingente Arancelario"(
    "ID_Contingente_Arancelario" TINYINT NOT NULL,
    "Contingente_Arabigintncelario" VARCHAR(10) NOT NULL
);
ALTER TABLE
    "Contingente Arancelario" ADD CONSTRAINT "contingente arancelario_id_contingente_arancelario_primary" PRIMARY KEY("ID_Contingente_Arancelario");
CREATE TABLE "Formato de Fraccionamiento"(
    "ID_Formato_Fraccionamiento" TINYINT NOT NULL,
    "Formato_Fraccionamiento" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "Formato de Fraccionamiento" ADD CONSTRAINT "formato de fraccionamiento_id_formato_fraccionamiento_primary" PRIMARY KEY("ID_Formato_Fraccionamiento");
CREATE TABLE "Tipo de Exportacion"(
    "ID_Exportacion_Tipo" TINYINT NOT NULL,
    "Exportacion_Tipo" VARCHAR(30) NOT NULL
);
ALTER TABLE
    "Tipo de Exportacion" ADD CONSTRAINT "tipo de exportacion_id_exportacion_tipo_primary" PRIMARY KEY("ID_Exportacion_Tipo");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_tipo_envase_foreign" FOREIGN KEY("id_tipo_envase") REFERENCES "Tipo Envase"("ID_Tipo_Envase");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_canal_distribucion_foreign" FOREIGN KEY("id_canal_distribucion") REFERENCES "Canal de Distribucion"("ID_Canal_Distribucion");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_pais_destino_foreign" FOREIGN KEY("id_pais_destino") REFERENCES "Pais Destino"("ID_Pais_Destino");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_varietal_foreign" FOREIGN KEY("id_varietal") REFERENCES "Varietal"("ID_Varietal");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_bodega_foreign" FOREIGN KEY("id_bodega") REFERENCES "Bodega"("ID_Bodega");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_exportacion_tipo_foreign" FOREIGN KEY("id_exportacion_tipo") REFERENCES "Tipo de Exportacion"("ID_Exportacion_Tipo");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_tipo_vino_foreign" FOREIGN KEY("id_tipo_vino") REFERENCES "Tipo de Vino"("ID_Tipo_Vino");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_color_foreign" FOREIGN KEY("id_color") REFERENCES "Color"("ID_Color");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_certificacion_foreign" FOREIGN KEY("id_certificacion") REFERENCES "Certificacion"("ID_Certificacion");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_zona_produccion_foreign" FOREIGN KEY("id_zona_produccion") REFERENCES "Zona Produccion"("ID_Zona_Produccion");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_formato_fraccionamiento_foreign" FOREIGN KEY("id_formato_fraccionamiento") REFERENCES "Formato de Fraccionamiento"("ID_Formato_Fraccionamiento");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_provincia_origen_foreign" FOREIGN KEY("id_provincia_origen") REFERENCES "Provincia_Origen"("ID_Provincia_Origen");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_segmento_precio_foreign" FOREIGN KEY("id_segmento_precio") REFERENCES "Segmento Precio"("ID_Segmento_Precio");
ALTER TABLE
    "Tabla de Hecho" ADD CONSTRAINT "tabla de hecho_id_contingente_arancelario_foreign" FOREIGN KEY("id_contingente_arancelario") REFERENCES "Contingente Arancelario"("ID_Contingente_Arancelario");


SELECT * FROM "Tabla de Hecho";