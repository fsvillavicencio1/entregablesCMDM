CREATE VIEW CVIEW_ACTUAL
AS
SELECT datos.ruc, datos.actividad_de_microempresa, datos.fecha,
c1.PlaneacionEstrategica,
(CASE
    WHEN (c1.PlaneacionEstrategica)/0.195 <= 20.99 THEN 'Muy Baja'
    WHEN (c1.PlaneacionEstrategica)/0.195  >= 21 AND (c1.PlaneacionEstrategica)/0.195  <= 40.99 THEN 'Baja'
    WHEN (c1.PlaneacionEstrategica)/0.195  >= 41 AND (c1.PlaneacionEstrategica)/0.195  <= 60.99 THEN 'Mediana'
    WHEN (c1.PlaneacionEstrategica)/0.195  >= 61 AND (c1.PlaneacionEstrategica)/0.195  <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelPlaneacionEstrategica,
c2.AseguramientoCalidad,
(CASE
    WHEN (c2.AseguramientoCalidad)/0.052 <= 20.99 THEN 'Muy Baja'
    WHEN (c2.AseguramientoCalidad)/0.052 >= 21 AND (c2.AseguramientoCalidad)/0.052 <= 40.99 THEN 'Baja'
    WHEN (c2.AseguramientoCalidad)/0.052 >= 41 AND (c2.AseguramientoCalidad)/0.052 <= 60.99 THEN 'Mediana'
    WHEN (c2.AseguramientoCalidad)/0.052 >= 61 AND (c2.AseguramientoCalidad)/0.052 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelAseguramientoCalidad,
c3.CadenaValor,
(CASE
    WHEN (c3.CadenaValor)/0.221 <= 20.99 THEN 'Muy Baja'
    WHEN (c3.CadenaValor)/0.221 >= 21 AND (c3.CadenaValor)/0.221 <= 40.99 THEN 'Baja'
    WHEN (c3.CadenaValor)/0.221 >= 41 AND (c3.CadenaValor)/0.221 <= 60.99 THEN 'Mediana'
    WHEN (c3.CadenaValor)/0.221 >= 61 AND (c3.CadenaValor)/0.221 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelCadenaValor,
c4.Marketing,
(CASE
    WHEN (c4.Marketing)/0.104 <= 20.99 THEN 'Muy Baja'
    WHEN (c4.Marketing)/0.104 >= 21 AND (c4.Marketing)/0.104 <= 40.99 THEN 'Baja'
    WHEN (c4.Marketing)/0.104 >= 41 AND (c4.Marketing)/0.104 <= 60.99 THEN 'Mediana'
    WHEN (c4.Marketing)/0.104 >= 61 AND (c4.Marketing)/0.104 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelMarketing,
c5.ContabilidadFinanzas,
 (CASE
    WHEN (c5.ContabilidadFinanzas)/0.078 <= 20.99 THEN 'Muy Baja'
    WHEN (c5.ContabilidadFinanzas)/0.078 >= 21 AND (c5.ContabilidadFinanzas)/0.078 <= 40.99 THEN 'Baja'
    WHEN (c5.ContabilidadFinanzas)/0.078 >= 41 AND (c5.ContabilidadFinanzas)/0.078 <= 60.99 THEN 'Mediana'
    WHEN (c5.ContabilidadFinanzas)/0.078 >= 61 AND (c5.ContabilidadFinanzas)/0.078 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelContabilidadFinanzas,
c6.TalentoHumano,
(CASE
    WHEN (c6.TalentoHumano)/0.169 <= 20.99 THEN 'Muy Baja'
    WHEN (c6.TalentoHumano)/0.169 >= 21 AND (c6.TalentoHumano)/0.169 <= 40.99 THEN 'Baja'
    WHEN (c6.TalentoHumano)/0.169 >= 41 AND (c6.TalentoHumano)/0.169 <= 60.99 THEN 'Mediana'
    WHEN (c6.TalentoHumano)/0.169 >= 61 AND (c6.TalentoHumano)/0.169 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelTalentoHumano,
c7.GestionAmbiental,
(CASE
    WHEN (c7.GestionAmbiental)/0.078 <= 20.99 THEN 'Muy Baja'
    WHEN (c7.GestionAmbiental)/0.078 >= 21 AND (c7.GestionAmbiental)/0.078 <= 40.99 THEN 'Baja'
    WHEN (c7.GestionAmbiental)/0.078 >= 41 AND (c7.GestionAmbiental)/0.078 <= 60.99 THEN 'Mediana'
    WHEN (c7.GestionAmbiental)/0.078 >= 61 AND (c7.GestionAmbiental)/0.078 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelGestionAmbiental,
c8.SistemasInformacion,
(CASE
    WHEN (c8.SistemasInformacion)/0.104 <= 20.99 THEN 'Muy Baja'
    WHEN (c8.SistemasInformacion)/0.104 >= 21 AND (c8.SistemasInformacion)/0.104 <= 40.99 THEN 'Baja'
    WHEN (c8.SistemasInformacion)/0.104 >= 41 AND (c8.SistemasInformacion)/0.104 <= 60.99 THEN 'Mediana'
    WHEN (c8.SistemasInformacion)/0.104 >= 61 AND (c8.SistemasInformacion)/0.104 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelSistemasInformacion,
ctotal.CompetitividadTotal,
(CASE
    WHEN (ctotal.CompetitividadTotal) <= 20.99 THEN 'Muy Baja'
    WHEN (ctotal.CompetitividadTotal) >= 21 AND (ctotal.CompetitividadTotal) <= 40.99 THEN 'Baja'
    WHEN (ctotal.CompetitividadTotal) >= 41 AND (ctotal.CompetitividadTotal) <= 60.99 THEN 'Mediana'
    WHEN (ctotal.CompetitividadTotal) >= 61 AND (ctotal.CompetitividadTotal) <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelCompetitividadTotal
FROM obtenerDatosEmpresa2Actual() datos FULL JOIN ObtenerCompetitividad1Actual() c1
ON datos.ruc = c1.ruc
FULL JOIN ObtenerCompetitividad2Actual() c2
ON c1.ruc = c2.ruc
FULL JOIN ObtenerCompetitividad3Actual() c3
ON c2.ruc = c3.ruc
FULL JOIN ObtenerCompetitividad4Actual() c4
ON c3.ruc = c4.ruc
FULL JOIN ObtenerCompetitividad5Actual() c5
ON c4.ruc = c5.ruc
FULL JOIN ObtenerCompetitividad6Actual() c6
ON c5.ruc = c6.ruc
FULL JOIN ObtenerCompetitividad7Actual() c7
ON c6.ruc = c7.ruc
FULL JOIN ObtenerCompetitividad8Actual() c8
ON c7.ruc = c8.ruc
FULL JOIN ObtenerCompetitividadTotalActual() ctotal
ON c8.ruc = ctotal.ruc