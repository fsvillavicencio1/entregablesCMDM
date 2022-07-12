CREATE VIEW CVIEW
AS
SELECT datos.ruc, datos.actividad_de_microempresa, datos.fecha,
c1.PlaneacionEstrategica,
(CASE
    WHEN (c1.PlaneacionEstrategica)/0.169 <= 20.99 THEN 'Muy Baja'
    WHEN (c1.PlaneacionEstrategica)/0.169  >= 21 AND (c1.PlaneacionEstrategica)/0.169  <= 40.99 THEN 'Baja'
    WHEN (c1.PlaneacionEstrategica)/0.169  >= 41 AND (c1.PlaneacionEstrategica)/0.169  <= 60.99 THEN 'Mediana'
    WHEN (c1.PlaneacionEstrategica)/0.169  >= 61 AND (c1.PlaneacionEstrategica)/0.169  <= 80.99 THEN 'Alta'
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
c4.Merchandishing,
(CASE
    WHEN (c4.Merchandishing)/0.117 <= 20.99 THEN 'Muy Baja'
    WHEN (c4.Merchandishing)/0.117 >= 21 AND (c4.Merchandishing)/0.117 <= 40.99 THEN 'Baja'
    WHEN (c4.Merchandishing)/0.117 >= 41 AND (c4.Merchandishing)/0.117 <= 60.99 THEN 'Mediana'
    WHEN (c4.Merchandishing)/0.117 >= 61 AND (c4.Merchandishing)/0.117 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelMerchandishing,
c5.ContabilidadFinanzas,
 (CASE
    WHEN (c5.ContabilidadFinanzas)/0.182 <= 20.99 THEN 'Muy Baja'
    WHEN (c5.ContabilidadFinanzas)/0.182 >= 21 AND (c5.ContabilidadFinanzas)/0.182 <= 40.99 THEN 'Baja'
    WHEN (c5.ContabilidadFinanzas)/0.182 >= 41 AND (c5.ContabilidadFinanzas)/0.182 <= 60.99 THEN 'Mediana'
    WHEN (c5.ContabilidadFinanzas)/0.182 >= 61 AND (c5.ContabilidadFinanzas)/0.182 <= 80.99 THEN 'Alta'
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
    WHEN (c7.GestionAmbiental)/0.013 <= 20.99 THEN 'Muy Baja'
    WHEN (c7.GestionAmbiental)/0.013 >= 21 AND (c7.GestionAmbiental)/0.013 <= 40.99 THEN 'Baja'
    WHEN (c7.GestionAmbiental)/0.013 >= 41 AND (c7.GestionAmbiental)/0.013 <= 60.99 THEN 'Mediana'
    WHEN (c7.GestionAmbiental)/0.013 >= 61 AND (c7.GestionAmbiental)/0.013 <= 80.99 THEN 'Alta'
    ELSE 'Muy Alta'
    END) AS NivelGestionAmbiental,
c8.SistemasInformacion,
(CASE
    WHEN (c8.SistemasInformacion)/0.078 <= 20.99 THEN 'Muy Baja'
    WHEN (c8.SistemasInformacion)/0.078 >= 21 AND (c8.SistemasInformacion)/0.078 <= 40.99 THEN 'Baja'
    WHEN (c8.SistemasInformacion)/0.078 >= 41 AND (c8.SistemasInformacion)/0.078 <= 60.99 THEN 'Mediana'
    WHEN (c8.SistemasInformacion)/0.078 >= 61 AND (c8.SistemasInformacion)/0.078 <= 80.99 THEN 'Alta'
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
FROM obtenerDatosEmpresa2() datos FULL JOIN ObtenerCompetitividad1() c1
ON datos.ruc = c1.ruc
FULL JOIN ObtenerCompetitividad2() c2
ON c1.ruc = c2.ruc
FULL JOIN ObtenerCompetitividad3() c3
ON c2.ruc = c3.ruc
FULL JOIN ObtenerCompetitividad4() c4
ON c3.ruc = c4.ruc
FULL JOIN ObtenerCompetitividad5() c5
ON c4.ruc = c5.ruc
FULL JOIN ObtenerCompetitividad6() c6
ON c5.ruc = c6.ruc
FULL JOIN ObtenerCompetitividad7() c7
ON c6.ruc = c7.ruc
FULL JOIN ObtenerCompetitividad8() c8
ON c7.ruc = c8.ruc
FULL JOIN ObtenerCompetitividadTotal() ctotal
ON c8.ruc = ctotal.ruc