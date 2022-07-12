CREATE VIEW CVIEW_RESULT
AS
SELECT datos.ruc, datos.actividad_de_microempresa, datos.fecha,
datos.direccion, datos.telefono, datos.correo, datos.pagina_web, datos.empleados_hombres,
datos.empleados_mujeres, datos.pertenece_a_asociacion, datos.quirere_pertenecer_a_asociacion,
datos.ultimo_nivel_estudios, datos.genero, datos.relacion_con_empresa, datos.anios_experiencia_cargo,
c1.P3_1, c1.P3_2, c1.P3_3, c1.P3_4, c1.P3_5, c1.P3_6, c1.P3_7, c1.P3_8, c1.P3_9, c1.P3_10, c1.P3_11,
c1.P3_12, c1.P3_13, c1.P3_14, c1.P3_15, c1.P4_1, c1.P4_2, c1.P4_3, c1.P4_4, c1.P5_1, c1.P5_2, c1.P5_3,
c1.P5_4, c1.P5_5, c1.P5_6, c1.P5_7, c1.P5_8, c1.P5_9, c1.P5_10, c1.P5_11, c1.P5_12, c1.P5_13, c1.P5_14, c1.P5_15,
c1.P5_16, c1.P5_17, c1.P6_1, c1.P6_2, c1.P6_3, c1.P6_4, c1.P6_5, c1.P6_6, c1.P6_7, c1.P6_8, c1.P7_1, c1.P7_2, c1.P7_3,
c1.P7_4, c1.P7_5, c1.P7_6, c1.P8_1, c1.P8_2, c1.P8_3, c1.P8_4, c1.P8_5, c1.P8_6, c1.P8_7, c1.P8_8, c1.P8_9, c1.P8_10,
c1.P8_11, c1.P8_12, c1.P8_13, c1.P9_1, c1.P9_2, c1.P9_3, c1.P9_4, c1.P9_5, c1.P9_6, c1.P10_1, c1.P10_2, c1.P10_3, c1.P10_4,
c1.P10_5, c1.P10_6, c1.P10_7, c1.P10_8, ctotal.CompetitividadTotal
FROM obtenerDatosEmpresasResultados() datos FULL JOIN ObtenerCompetitividadResultados() c1
ON datos.ruc = c1.ruc
FULL JOIN ObtenerCompetitividadTotalResultados() ctotal
ON c1.ruc = ctotal.ruc