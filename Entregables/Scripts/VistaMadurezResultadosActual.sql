CREATE VIEW MDVIEW_RESULT
AS
SELECT datos.ruc, datos.actividad_de_microempresa, datos.fecha,
datos.direccion, datos.telefono, datos.correo, datos.pagina_web, datos.empleados_hombres,
datos.empleados_mujeres, datos.pertenece_a_asociacion, datos.quirere_pertenecer_a_asociacion,
datos.ultimo_nivel_estudios, datos.genero, datos.relacion_con_empresa, datos.anios_experiencia_cargo,
c1.P1_1, c1.P1_2, c1.P1_3, c1.P1_4, c1.P1_5, c1.P1_6, c1.P1_7, c1.P1_8,c1.P1_9, c1.P1_10, c1.P1_11, c1.P1_12, c1.P1_13,
c1.P1_14, c1.P1_15, c1.P1_16, ctotal.MadurezTotal
FROM obtenerDatosEmpresaActualResultados() datos FULL JOIN ObtenerMadurezResultados() c1
ON datos.ruc = c1.ruc
FULL JOIN ObtenerMadurezDigitalTotalActualResultados() ctotal
ON c1.ruc = ctotal.ruc