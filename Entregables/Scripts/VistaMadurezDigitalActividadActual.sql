CREATE VIEW MD_Actividad_VIEW
AS
SELECT datos.ruc, datos.actividad_de_microempresa,
md1.IdentificarOportunidades,
(CASE
    WHEN (md1.IdentificarOportunidades) * 4 <= 20.99 THEN 'Muy Baja'
    WHEN (md1.IdentificarOportunidades) * 4 >= 21 AND (md1.IdentificarOportunidades) * 4 <= 40.99 THEN 'Baja'
    WHEN (md1.IdentificarOportunidades) * 4 >= 41 AND (md1.IdentificarOportunidades) * 4 <= 60.99 THEN 'Mediana'
    WHEN (md1.IdentificarOportunidades) * 4 >= 61 AND (md1.IdentificarOportunidades) * 4 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS nivelmadurez1,
md2.DesarrollarEstrategia,
(CASE
    WHEN (md2.DesarrollarEstrategia) * 4 <= 20.99 THEN 'Muy Baja'
    WHEN (md2.DesarrollarEstrategia) * 4 >= 21 AND (md2.DesarrollarEstrategia) * 4 <= 40.99 THEN 'Baja'
    WHEN (md2.DesarrollarEstrategia) * 4 >= 41 AND (md2.DesarrollarEstrategia) * 4 <= 60.99 THEN 'Mediana'
    WHEN (md2.DesarrollarEstrategia) * 4 >= 61 AND (md2.DesarrollarEstrategia) * 4 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS nivelmadurez2,
md3.AprovecharOportunidades,
(CASE
    WHEN (md3.AprovecharOportunidades) * 4 <= 20.99 THEN 'Muy Baja'
    WHEN (md3.AprovecharOportunidades) * 4 >= 21 AND (md3.AprovecharOportunidades) * 4 <= 40.99 THEN 'Baja'
    WHEN (md3.AprovecharOportunidades) * 4 >= 41 AND (md3.AprovecharOportunidades) * 4 <= 60.99 THEN 'Mediana'
    WHEN (md3.AprovecharOportunidades) * 4 >= 61 AND (md3.AprovecharOportunidades) * 4 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS nivelmadurez3,
md4.GestionarRecursos,
(CASE
    WHEN (md4.GestionarRecursos) * 4 <= 20.99 THEN 'Muy Baja'
    WHEN (md4.GestionarRecursos) * 4 >= 21 AND (md4.GestionarRecursos) * 4 <= 40.99 THEN 'Baja'
    WHEN (md4.GestionarRecursos) * 4 >= 41 AND (md4.GestionarRecursos) * 4 <= 60.99 THEN 'Mediana'
    WHEN (md4.GestionarRecursos) * 4 >= 61 AND (md4.GestionarRecursos) * 4 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS nivelmadurez4,
mdtotal.MadurezTotal,
(CASE
    WHEN (mdtotal.MadurezTotal) <= 20.99 THEN 'Muy Baja'
    WHEN (mdtotal.MadurezTotal) >= 21 AND (mdtotal.MadurezTotal) <= 40.99 THEN 'Baja'
    WHEN (mdtotal.MadurezTotal) >= 41 AND (mdtotal.MadurezTotal) <= 60.99 THEN 'Mediana'
    WHEN (mdtotal.MadurezTotal) >= 61 AND (mdtotal.MadurezTotal) <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS nivelmadureztotal
FROM obtenerDatosEmpresaActual() datos FULL JOIN ObtenerMadurezDigital1Actual() md1
ON datos.ruc = md1.ruc
FULL JOIN ObtenerMadurezDigital2Actual() md2
ON md1.ruc = md2.ruc
FULL JOIN ObtenerMadurezDigital3Atual() md3
ON md2.ruc = md3.ruc
FULL JOIN ObtenerMadurezDigital4Actual() md4
ON md3.ruc = md4.ruc
FULL JOIN ObtenerMadurezDigitalTotalActual() mdtotal
ON md4.ruc = mdtotal.ruc