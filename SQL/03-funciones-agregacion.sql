
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT MIN("Milliseconds")
FROM "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT MAX("Milliseconds")
FROM "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
SELECT MIN("UnitPrice")
FROM "Track";

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
SELECT MAX("UnitPrice")
FROM "Track";

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
SELECT MIN("InvoiceDate")
FROM "Invoice" i ;   

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
SELECT MAX("InvoiceDate")
FROM "Invoice" i ;      

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
SELECT count(*) 
FROM "Track" t ;


-- Ejercicio 8: Contar el número de clientes en Brasil.
SELECT count("CustomerId") 
FROM "Customer" c  
WHERE "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select SUM("Milliseconds")
from "Track" t ;

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select count("Title") 
from "Employee" e 
where "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total")    
from "Invoice" i ;


/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select round(avg("Milliseconds"),0)
from "Track" t ;

-- Ejercicio 13: Calcular el precio medio de las pistas.
select avg("UnitPrice")
from "Track" t ;

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select stddev("Milliseconds")    
from "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select variance("Milliseconds")    
from "Track" t ;

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select stddev("UnitPrice")    
from "Track" t ;


/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as Nombre_completo
from "Customer" c ;
