SELECT t1.rutPropietario, t1.nombre FROM Propietarios t1
INTERSECT
SELECT t1.rutArrendatario, t1.nombre FROM Arrendatario t1
