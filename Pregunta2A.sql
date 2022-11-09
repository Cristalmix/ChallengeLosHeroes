SELECT TOP 10 t1.rutEmpleador, t1.razonSocialEmpleador, COUNT(t2.idLicencia) numLicencias
FROM empleador t1
LEFT JOIN licencia t2 ON t1.idEmpleador = t2.idEmpleador
GROUP BY t1.rutEmpleador, t1.razonSocialEmpleador
ORDER BY COUNT(t2.idLicencia) DESC 
