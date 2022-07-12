/*Funcion datos empresa*/
CREATE FUNCTION obtenerDatosEmpresa()
RETURNS TABLE
AS
RETURN(
    SELECT
        JSON_VALUE(jsonContent, '$.attributes.fecha') AS fecha,
        /*JSON_VALUE(jsonContent, '$.attributes.razon_social') AS empresa,*/
        JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc,
        JSON_VALUE(jsonContent, '$.attributes.actividad_de_microempresa') AS actividad_de_microempresa
        /*JSON_VALUE(jsonContent, '$.attributes.tipo_microempresa') AS tipo_microempresa,
        JSON_VALUE(jsonContent, '$.attributes.provincia') AS provincia,
        JSON_VALUE(jsonContent, '$.geometry.y') AS latitud,
        JSON_VALUE(jsonContent, '$.geometry.x') AS longitud*/
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
    );
GO;

/*Funcion para competitividad 1*/
CREATE FUNCTION ObtenerMadurezDigital1()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_4') AS DECIMAL(12,2))
    ) AS IdentificarOportunidades, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;

/*Funcion para competitividad 2*/
CREATE FUNCTION ObtenerMadurezDigital2()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_8') AS DECIMAL(12,2))
    ) AS DesarrollarEstrategia, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;

/*Funcion para competitividad 3*/
CREATE FUNCTION ObtenerMadurezDigital3()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_9') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_10') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_11') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_12') AS DECIMAL(12,2))
    ) AS AprovecharOportunidades, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;

/*Funcion para competitividad 4*/
CREATE FUNCTION ObtenerMadurezDigital4()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_13') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_14') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_15') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.md3_16') AS DECIMAL(12,2))
    ) AS GestionarRecursos, 
    JSON_VALUE(jsonContent, '$.attributes.ruc') AS ruc
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
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
CREATE FUNCTION ObtenerMadurezDigitalTotal()
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
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/madurez_digital/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
);
GO;