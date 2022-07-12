CREATE FUNCTION obtenerDatosEmpresas()
RETURNS TABLE
AS
RETURN(
 SELECT 
        DISTINCT(JSON_VALUE(jsonContent, '$.attributes.ruc')) AS ruc,
        JSON_VALUE(jsonContent, '$.attributes.fecha') AS fecha,
        JSON_VALUE(jsonContent, '$.attributes.razon_social') AS empresa,
        JSON_VALUE(jsonContent, '$.attributes.actividad_de_microempresa') AS actividad_de_microempresa,
        JSON_VALUE(jsonContent, '$.attributes.tipo_microempresa') AS tipo_microempresa,
        JSON_VALUE(jsonContent, '$.attributes.provincia') AS provincia,
        JSON_VALUE(jsonContent, '$.geometry.y') AS latitud,
        JSON_VALUE(jsonContent, '$.geometry.x') AS longitud
    FROM
    OPENROWSET(
        BULK 'https://adlsutpl.dfs.core.windows.net/cmd-historico/*/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b'
    )
    WITH (
        jsonContent varchar(max)
    ) AS [result]
    );
GO;