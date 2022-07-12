/*Funcion datos empresa*/
CREATE FUNCTION obtenerDatosEmpresa2Actual()
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

/*Funcion para competitividad 1*/
CREATE FUNCTION ObtenerCompetitividad1Actual()
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c3_15') AS DECIMAL(12,2))
    ) AS PlaneacionEstrategica, 
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

/*Funcion para competitividad 2*/
CREATE FUNCTION ObtenerCompetitividad2Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c4_4') AS DECIMAL(12,2))
    ) AS AseguramientoCalidad, 
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

/*Funcion para competitividad 3*/
CREATE FUNCTION ObtenerCompetitividad3Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c5_39') AS DECIMAL(12,2))
    ) AS CadenaValor, 
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

/*Funcion para competitividad 4*/
CREATE FUNCTION ObtenerCompetitividad4Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c_6_8') AS DECIMAL(12,2)) 
    ) AS Marketing, 
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

/*Funcion para competitividad 5*/
CREATE FUNCTION ObtenerCompetitividad5Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c7_6') AS DECIMAL(12,2))
    ) AS ContabilidadFinanzas, 
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

/*Funcion para competitividad 6*/
CREATE FUNCTION ObtenerCompetitividad6Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
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
        CAST(JSON_VALUE(jsonContent, '$.attributes.c8_13') AS DECIMAL(12,2))
    ) AS TalentoHumano, 
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

/*Funcion para competitividad 7*/
CREATE FUNCTION ObtenerCompetitividad7Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c9_6') AS DECIMAL(12,2))
    ) AS GestionAmbiental, 
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

/*Funcion para competitividad 8*/
CREATE FUNCTION ObtenerCompetitividad8Actual()
RETURNS TABLE
AS
RETURN(
    SELECT (
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_1') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_2') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_3') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_4') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_5') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_6') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_7') AS DECIMAL(12,2)) +
        CAST(JSON_VALUE(jsonContent, '$.attributes.c10_8') AS DECIMAL(12,2)) 
    ) AS SistemasInformacion, 
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
CREATE FUNCTION ObtenerCompetitividadTotalActual()
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

