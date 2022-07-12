/*Funcion datos empresa*/
CREATE FUNCTION obtenerDatosEmpresaActualResultados()
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
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/madurez_digital/*.json',
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
CREATE FUNCTION ObtenerMadurezResultados()
RETURNS TABLE
AS
RETURN(
    SELECT 
    JSON_VALUE(jsonContent, '$.attributes.md3_1') AS P1_1,
    JSON_VALUE(jsonContent, '$.attributes.md3_2') AS P1_2,
    JSON_VALUE(jsonContent, '$.attributes.md3_3') AS P1_3,
    JSON_VALUE(jsonContent, '$.attributes.md3_4') AS P1_4,
    JSON_VALUE(jsonContent, '$.attributes.md3_5') AS P1_5,
    JSON_VALUE(jsonContent, '$.attributes.md3_6') AS P1_6,
    JSON_VALUE(jsonContent, '$.attributes.md3_7') AS P1_7,
    JSON_VALUE(jsonContent, '$.attributes.md3_8') AS P1_8,
    JSON_VALUE(jsonContent, '$.attributes.md3_9') AS P1_9,
    JSON_VALUE(jsonContent, '$.attributes.md3_10') AS P1_10,
    JSON_VALUE(jsonContent, '$.attributes.md3_11') AS P1_11,
    JSON_VALUE(jsonContent, '$.attributes.md3_12') AS P1_12,
    JSON_VALUE(jsonContent, '$.attributes.md3_13') AS P1_13,
    JSON_VALUE(jsonContent, '$.attributes.md3_14') AS P1_14,
    JSON_VALUE(jsonContent, '$.attributes.md3_15') AS P1_15,
    JSON_VALUE(jsonContent, '$.attributes.md3_16') AS P1_16,
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/madurez_digital/*.json',
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
CREATE FUNCTION ObtenerMadurezDigitalTotalActualResultados()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_8') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_10') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_12') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_14') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_15') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_16') AS DECIMAL(12,2))
    ) AS MadurezTotal, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;