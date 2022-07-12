/*Funcion datos empresa*/
CREATE FUNCTION obtenerDatosEmpresasResultadosHistorico()
RETURNS TABLE
AS
RETURN(
    SELECT
        JSON_VALUE(jsonContent, '$.attributes.fecha') AS fecha,
        JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc,
        JSON_VALUE(jsonContent, '$.attributes.actividad_de_microempresa') AS actividad_de_microempresa,
        JSON_VALUE(jsonContent, '$.attributes.direccion') AS direccion,
        JSON_VALUE(jsonContent, '$.attributes.telefono') AS telefono,
        JSON_VALUE(jsonContent, '$.attributes.correo') AS correo,
        JSON_VALUE(jsonContent, '$.attributes.pagina_web') AS pagina_web,
        JSON_VALUE(jsonContent, '$.attributes.empleados_hombres') AS empleados_hombres,
        JSON_VALUE(jsonContent, '$.attributes.empleados_mujeres') AS empleados_mujeres,
        JSON_VALUE(jsonContent, '$.attributes.pertenece_a_asociacion') AS pertenece_a_asociacion,
        JSON_VALUE(jsonContent, '$.attributes.quirere_pertenecer_a_asociacion') AS quirere_pertenecer_a_asociacion,
        JSON_VALUE(jsonContent, '$.attributes.ultimo_nivel_estudios') AS ultimo_nivel_estudios,
        JSON_VALUE(jsonContent, '$.attributes.genero') AS genero, 
        JSON_VALUE(jsonContent, '$.attributes.relacion_con_empresa') AS relacion_con_empresa,
        JSON_VALUE(jsonContent, '$.attributes.anios_experiencia_cargo') AS anios_experiencia_cargo
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/competitividad/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
    );
GO;

/*Funcion para competitividad resultados*/
CREATE FUNCTION ObtenerCompetitividadResultadosHistorico()
RETURNS TABLE
AS
RETURN(
  SELECT 
  JSON_VALUE(jsonContent, '$.attributes.c3_1') AS P3_1,
  JSON_VALUE(jsonContent, '$.attributes.c3_2') AS P3_2,
  JSON_VALUE(jsonContent, '$.attributes.c3_3') AS P3_3,
  JSON_VALUE(jsonContent, '$.attributes.c3_4') AS P3_4,
  JSON_VALUE(jsonContent, '$.attributes.c3_5') AS P3_5,
  JSON_VALUE(jsonContent, '$.attributes.c3_6') AS P3_6,
  JSON_VALUE(jsonContent, '$.attributes.c3_7') AS P3_7,
  JSON_VALUE(jsonContent, '$.attributes.c3_8') AS P3_8,
  JSON_VALUE(jsonContent, '$.attributes.c3_9') AS P3_9,
  JSON_VALUE(jsonContent, '$.attributes.c3_10') AS P3_10,
  JSON_VALUE(jsonContent, '$.attributes.c3_11') AS P3_11,
  JSON_VALUE(jsonContent, '$.attributes.c3_12') AS P3_12,
  JSON_VALUE(jsonContent, '$.attributes.c3_13') AS P3_13,
  JSON_VALUE(jsonContent, '$.attributes.c3_14') AS P3_14,
  JSON_VALUE(jsonContent, '$.attributes.c3_15') AS P3_15,
  JSON_VALUE(jsonContent, '$.attributes.c3_16') AS P3_16,
  JSON_VALUE(jsonContent, '$.attributes.c3_17') AS P3_17,
  JSON_VALUE(jsonContent, '$.attributes.c3_18') AS P3_18,
  JSON_VALUE(jsonContent, '$.attributes.c4_1') AS P4_1,
  JSON_VALUE(jsonContent, '$.attributes.c4_2') AS P4_2,
  JSON_VALUE(jsonContent, '$.attributes.c4_3') AS P4_3,
  JSON_VALUE(jsonContent, '$.attributes.c4_4') AS P4_4,
  JSON_VALUE(jsonContent, '$.attributes.c5_1') AS P5_1,
  JSON_VALUE(jsonContent, '$.attributes.c5_2') AS P5_2,
  JSON_VALUE(jsonContent, '$.attributes.c5_3') AS P5_3,
  JSON_VALUE(jsonContent, '$.attributes.c5_4') AS P5_4,
  JSON_VALUE(jsonContent, '$.attributes.c5_5') AS P5_5,
  JSON_VALUE(jsonContent, '$.attributes.c5_6') AS P5_6,
  JSON_VALUE(jsonContent, '$.attributes.c5_7') AS P5_7,
  JSON_VALUE(jsonContent, '$.attributes.c5_8') AS P5_8,
  JSON_VALUE(jsonContent, '$.attributes.c5_9') AS P5_9,
  JSON_VALUE(jsonContent, '$.attributes.c5_10') AS P5_10,
  JSON_VALUE(jsonContent, '$.attributes.c5_11') AS P5_11,
  JSON_VALUE(jsonContent, '$.attributes.c5_12') AS P5_12,
  JSON_VALUE(jsonContent, '$.attributes.c5_13') AS P5_13,
  JSON_VALUE(jsonContent, '$.attributes.c5_14') AS P5_14,
  JSON_VALUE(jsonContent, '$.attributes.c5_15') AS P5_15,
  JSON_VALUE(jsonContent, '$.attributes.c5_16') AS P5_16,
  JSON_VALUE(jsonContent, '$.attributes.c5_17') AS P5_17,
  JSON_VALUE(jsonContent, '$.attributes.c5_18') AS P5_18,
  JSON_VALUE(jsonContent, '$.attributes.c5_19') AS P5_19,
  JSON_VALUE(jsonContent, '$.attributes.c5_20') AS P5_20,
  JSON_VALUE(jsonContent, '$.attributes.c5_21') AS P5_21,
  JSON_VALUE(jsonContent, '$.attributes.c5_22') AS P5_22,
  JSON_VALUE(jsonContent, '$.attributes.c5_23') AS P5_23,
  JSON_VALUE(jsonContent, '$.attributes.c5_24') AS P5_24,
  JSON_VALUE(jsonContent, '$.attributes.c5_25') AS P5_25,
  JSON_VALUE(jsonContent, '$.attributes.c5_26') AS P5_26,
  JSON_VALUE(jsonContent, '$.attributes.c5_27') AS P5_27,
  JSON_VALUE(jsonContent, '$.attributes.c5_28') AS P5_28,
  JSON_VALUE(jsonContent, '$.attributes.c5_29') AS P5_29,
  JSON_VALUE(jsonContent, '$.attributes.c5_30') AS P5_30,
  JSON_VALUE(jsonContent, '$.attributes.c5_31') AS P5_31,
  JSON_VALUE(jsonContent, '$.attributes.c5_32') AS P5_32,
  JSON_VALUE(jsonContent, '$.attributes.c5_33') AS P5_33,
  JSON_VALUE(jsonContent, '$.attributes.c5_34') AS P5_34,
  JSON_VALUE(jsonContent, '$.attributes.c5_35') AS P5_35,
  JSON_VALUE(jsonContent, '$.attributes.c5_36') AS P5_36,
  JSON_VALUE(jsonContent, '$.attributes.c5_37') AS P5_37,
  JSON_VALUE(jsonContent, '$.attributes.c5_38') AS P5_38,
  JSON_VALUE(jsonContent, '$.attributes.c5_39') AS P5_39,
  JSON_VALUE(jsonContent, '$.attributes.c5_40') AS P5_40,
  JSON_VALUE(jsonContent, '$.attributes.c5_41') AS P5_41,
  JSON_VALUE(jsonContent, '$.attributes.c6_1') AS P6_1,
  JSON_VALUE(jsonContent, '$.attributes.c6_2') AS P6_2,
  JSON_VALUE(jsonContent, '$.attributes.c6_3') AS P6_3,
  JSON_VALUE(jsonContent, '$.attributes.c6_4') AS P6_4,
  JSON_VALUE(jsonContent, '$.attributes.c6_5') AS P6_5,
  JSON_VALUE(jsonContent, '$.attributes.c6_6') AS P6_6,
  JSON_VALUE(jsonContent, '$.attributes.c6_7') AS P6_7,
  JSON_VALUE(jsonContent, '$.attributes.c6_8') AS P6_8,
  JSON_VALUE(jsonContent, '$.attributes.c6_9') AS P6_9,
  JSON_VALUE(jsonContent, '$.attributes.c6_10') AS P6_10,
  JSON_VALUE(jsonContent, '$.attributes.c6_11') AS P6_11,
  CAST(JSON_VALUE(jsonContent, '$.attributes.c7_1') AS DECIMAL(12,2))/6 AS P7_1,
  JSON_VALUE(jsonContent, '$.attributes.c7_7') AS P7_2,
  JSON_VALUE(jsonContent, '$.attributes.c7_8') AS P7_3,
  JSON_VALUE(jsonContent, '$.attributes.c7_9') AS P7_4,
  JSON_VALUE(jsonContent, '$.attributes.c7_10') AS P7_5,
  JSON_VALUE(jsonContent, '$.attributes.c7_11') AS P7_6,
  JSON_VALUE(jsonContent, '$.attributes.c7_12') AS P7_7,
  JSON_VALUE(jsonContent, '$.attributes.c7_13') AS P7_8,
  JSON_VALUE(jsonContent, '$.attributes.c7_14') AS P7_9,
  JSON_VALUE(jsonContent, '$.attributes.c7_15') AS P7_10,
  JSON_VALUE(jsonContent, '$.attributes.c7_16') AS P7_11,
  JSON_VALUE(jsonContent, '$.attributes.c7_17') AS P7_12,
  JSON_VALUE(jsonContent, '$.attributes.c7_18') AS P7_13,
  JSON_VALUE(jsonContent, '$.attributes.c7_19') AS P7_14,
  JSON_VALUE(jsonContent, '$.attributes.c7_20') AS P7_15,
  JSON_VALUE(jsonContent, '$.attributes.c7_21') AS P7_16,
  JSON_VALUE(jsonContent, '$.attributes.c7_22') AS P7_17,
  JSON_VALUE(jsonContent, '$.attributes.c7_23') AS P7_18,
  JSON_VALUE(jsonContent, '$.attributes.c7_24') AS P7_19,
  JSON_VALUE(jsonContent, '$.attributes.c7_25') AS P7_20,
  JSON_VALUE(jsonContent, '$.attributes.c7_26') AS P7_21,
  JSON_VALUE(jsonContent, '$.attributes.c8_1') AS P8_1,
  JSON_VALUE(jsonContent, '$.attributes.c8_2') AS P8_2,
  JSON_VALUE(jsonContent, '$.attributes.c8_3') AS P8_3,
  JSON_VALUE(jsonContent, '$.attributes.c8_4') AS P8_4,
  JSON_VALUE(jsonContent, '$.attributes.c8_5') AS P8_5,
  JSON_VALUE(jsonContent, '$.attributes.c8_6') AS P8_6,
  JSON_VALUE(jsonContent, '$.attributes.c8_7') AS P8_7,
  JSON_VALUE(jsonContent, '$.attributes.c8_8') AS P8_8,
  JSON_VALUE(jsonContent, '$.attributes.c8_9') AS P8_9,
  JSON_VALUE(jsonContent, '$.attributes.c8_10') AS P8_10,
  JSON_VALUE(jsonContent, '$.attributes.c8_11') AS P8_11,
  JSON_VALUE(jsonContent, '$.attributes.c8_12') AS P8_12,
  JSON_VALUE(jsonContent, '$.attributes.c8_13') AS P8_13,
  JSON_VALUE(jsonContent, '$.attributes.c9_1') AS P9_1,
  JSON_VALUE(jsonContent, '$.attributes.c10_1') AS P10_1,
  JSON_VALUE(jsonContent, '$.attributes.c10_2') AS P10_2,
  JSON_VALUE(jsonContent, '$.attributes.c10_3') AS P10_3,
  JSON_VALUE(jsonContent, '$.attributes.c10_4') AS P10_4,
  JSON_VALUE(jsonContent, '$.attributes.c10_5') AS P10_5,
  JSON_VALUE(jsonContent, '$.attributes.c10_6') AS P10_6,
  JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
  FROM
  OPENROWSET(
    BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/competitividad/*.json',
    FORMAT = 'CSV',
    FIELDQUOTE = '0x0b',
    FIELDTERMINATOR ='0x0b'
  )
  WITH (
    jsonContent varchar(max)
  ) AS [result]
);
GO;

/*Funcion para competitividad total*/
CREATE FUNCTION ObtenerCompetitividadTotalResultadosHistorico()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_7') AS DECIMAL(12,2)) +
        CASE 
            WHEN JSON_VALUE(jsonContent, '$.attributes.c3_8') IS NULL
            OR JSON_VALUE(jsonContent, '$.attributes.c3_8') = ''
            THEN 0
            ELSE CAST(JSON_VALUE(jsonContent, '$.attributes.c3_8') AS DECIMAL(12,2))
            END +
        CASE 
            WHEN JSON_VALUE(jsonContent, '$.attributes.c3_9') IS NULL
            OR JSON_VALUE(jsonContent, '$.attributes.c3_8') = ''
            THEN 0
            ELSE CAST(JSON_VALUE(jsonContent, '$.attributes.c3_9') AS DECIMAL(12,2))
            END +
        CASE 
            WHEN JSON_VALUE(jsonContent, '$.attributes.c3_10') IS NULL
            OR JSON_VALUE(jsonContent, '$.attributes.c3_8') = ''
            THEN 0
            ELSE CAST(JSON_VALUE(jsonContent, '$.attributes.c3_10') AS DECIMAL(12,2))
            END +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_12') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_10') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_12') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_20') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_21') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_38') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_39') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c6_10') AS DECIMAL(12,2)) +
        CASE 
            WHEN JSON_VALUE(jsonContent, '$.attributes.c6_11') IS NULL
            OR JSON_VALUE(jsonContent, '$.attributes.c3_8') = ''
            THEN 0
            ELSE 1.30
            END +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_1') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_2') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_3') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_4') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_5') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_6') AS DECIMAL(12,2)) *2.33 +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_10') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_12') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_6') AS DECIMAL(12,2))
    ) AS CompetitividadTotal, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/competitividad/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;