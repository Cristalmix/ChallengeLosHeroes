SELECT TOP 10 t2.nomSucursal, t3.nomComuna, t4.nomRegion, COUNT(t1.iddocumentoXLicencia) cantDocumentos
FROM documentoXlicencia t1
INNER JOIN sucursal t2 ON t1.idSucursal = t2.idSucursal
INNER JOIN comuna t3 ON t2.idComuna = t3.idComuna
INNER JOIN region t4 ON t3.idRegion = t4.idRegion
GROUP BY t2.nomSucursal, t3.nomComuna, t4.nomRegion
ORDER BY COUNT(t1.iddocumentoXLicencia)
