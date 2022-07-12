/*Funcion datos empresa*/
CREATE FUNCTION obtenerDatosEmpresasResultados()
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
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/competitividad/*.json',
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
CREATE FUNCTION ObtenerCompetitividadResultados()
RETURNS TABLE
AS
RETURN(
    SELECT 
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_1') AS DECIMAL(12,2)) AS P3_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_2') AS DECIMAL(12,2)) AS P3_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_3') AS DECIMAL(12,2)) AS P3_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_4') AS DECIMAL(12,2)) AS P3_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_5') AS DECIMAL(12,2)) AS P3_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_6') AS DECIMAL(12,2)) AS P3_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_7') AS DECIMAL(12,2)) AS P3_7,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_8') AS DECIMAL(12,2)) AS P3_8,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_9') AS DECIMAL(12,2)) AS P3_9,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_10') AS DECIMAL(12,2)) AS P3_10,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_11') AS DECIMAL(12,2)) AS P3_11,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_12') AS DECIMAL(12,2)) AS P3_12,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_13') AS DECIMAL(12,2)) AS P3_13,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_14') AS DECIMAL(12,2)) AS P3_14,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c3_15') AS DECIMAL(12,2)) AS P3_15,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c4_1') AS DECIMAL(12,2)) AS P4_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c4_2') AS DECIMAL(12,2)) AS P4_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c4_3') AS DECIMAL(12,2)) AS P4_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c4_4') AS DECIMAL(12,2)) AS P4_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_1') AS DECIMAL(12,2)) AS P5_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_2') AS DECIMAL(12,2)) AS P5_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_3') AS DECIMAL(12,2)) AS P5_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_4') AS DECIMAL(12,2)) AS P5_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_5') AS DECIMAL(12,2)) AS P5_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_6') AS DECIMAL(12,2)) AS P5_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_7') AS DECIMAL(12,2)) AS P5_7,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_8') AS DECIMAL(12,2)) AS P5_8,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_9') AS DECIMAL(12,2)) AS P5_9,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_10') AS DECIMAL(12,2)) AS P5_10,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_11') AS DECIMAL(12,2)) AS P5_11,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_12') AS DECIMAL(12,2)) AS P5_12,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_13') AS DECIMAL(12,2)) AS P5_13,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_20') AS DECIMAL(12,2)) AS P5_14,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_21') AS DECIMAL(12,2)) AS P5_15,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_38') AS DECIMAL(12,2)) AS P5_16,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c5_39') AS DECIMAL(12,2)) AS P5_17,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_1') AS DECIMAL(12,2)) AS P6_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_2') AS DECIMAL(12,2)) AS P6_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_3') AS DECIMAL(12,2)) AS P6_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_4') AS DECIMAL(12,2)) AS P6_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_5') AS DECIMAL(12,2)) AS P6_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_6') AS DECIMAL(12,2)) AS P6_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_7') AS DECIMAL(12,2)) AS P6_7,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_8') AS DECIMAL(12,2)) AS P6_8,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_1') AS DECIMAL(12,2)) AS P7_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_2') AS DECIMAL(12,2)) AS P7_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_3') AS DECIMAL(12,2)) AS P7_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_4') AS DECIMAL(12,2)) AS P7_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_5') AS DECIMAL(12,2)) AS P7_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c7_6') AS DECIMAL(12,2)) AS P7_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_1') AS DECIMAL(12,2)) AS P8_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_2') AS DECIMAL(12,2)) AS P8_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_3') AS DECIMAL(12,2)) AS P8_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_4') AS DECIMAL(12,2)) AS P8_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_5') AS DECIMAL(12,2)) AS P8_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_6') AS DECIMAL(12,2)) AS P8_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_7') AS DECIMAL(12,2)) AS P8_7,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_8') AS DECIMAL(12,2)) AS P8_8,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_9') AS DECIMAL(12,2)) AS P8_9,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_10') AS DECIMAL(12,2)) AS P8_10,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_11') AS DECIMAL(12,2)) AS P8_11,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_12') AS DECIMAL(12,2)) AS P8_12,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c8_13') AS DECIMAL(12,2)) AS P8_13,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_1') AS DECIMAL(12,2)) AS P9_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_2') AS DECIMAL(12,2)) AS P9_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_3') AS DECIMAL(12,2)) AS P9_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_4') AS DECIMAL(12,2)) AS P9_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_5') AS DECIMAL(12,2)) AS P9_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c9_6') AS DECIMAL(12,2)) AS P9_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_1') AS DECIMAL(12,2)) AS P10_1,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_2') AS DECIMAL(12,2)) AS P10_2,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_3') AS DECIMAL(12,2)) AS P10_3,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_4') AS DECIMAL(12,2)) AS P10_4,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_5') AS DECIMAL(12,2)) AS P10_5,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_6') AS DECIMAL(12,2)) AS P10_6,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_7') AS DECIMAL(12,2)) AS P10_7,
    CAST(JSON_VALUE(jsonContent, '$.attributes.c10_8') AS DECIMAL(12,2)) AS P10_8,
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/competitividad/*.json',
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
CREATE FUNCTION ObtenerCompetitividadTotalResultados()
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_10') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_12') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_14') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_15') AS DECIMAL(12,2)) +
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_6') AS DECIMAL(12,2)) +
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_8') AS DECIMAL(12,2))
    ) AS CompetitividadTotal, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/competitividad/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;