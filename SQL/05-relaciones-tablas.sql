
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Name" , a."Title" 
from "Track"  as t 
inner join "Album" as a
on t."AlbumId" = a."AlbumId" 
order by a."Title" ;


-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a2."Name" , a."Title" 
from "Artist" as a2  
inner join "Album" as a
on a."ArtistId" = a2."ArtistId" 
order by a2."Name";


-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select  concat(c."FirstName", ' ' , c."LastName") as nombre_cliente,
		sum(i."Total")
from  "Invoice" as i 
inner join "Customer" as c 
on i."CustomerId" = c."CustomerId" 
group by concat(c."FirstName", ' ' , c."LastName")
order by sum(i."Total") desc
limit 5;


-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select  concat(e."FirstName", ' ' , e."LastName") as nombre_empleado ,
		concat(c."FirstName", ' ' , c."LastName") as nombre_cliente
from  "Customer" as c 
inner join "Employee" as e 
on c."SupportRepId" = e."EmployeeId" 
order by concat(e."FirstName", ' ' , e."LastName");


-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select  il."InvoiceId" ,
		t."Name" 
from  "InvoiceLine" as il 
inner join "Track" as  t 
on il."TrackId" = t."TrackId" 
order by il."InvoiceId" ;


-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select a2."Name" as "nombre_artista",
		g."Name" as "genero"
from "Track" as t 
inner join "Genre" as g on t."GenreId" = g."GenreId" 
inner join "Album" as a ON t."AlbumId" = a."AlbumId" 
		inner join "Artist" a2 ON a2."ArtistId" = a."ArtistId" 
order by a2."Name" ;


--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
SELECT t."Name" as nombre_pista,
		mt."Name" as medio
FROM "Track" AS t 
left JOIN "MediaType" as mt
ON t."MediaTypeId" = mt."MediaTypeId" 
order by mt."Name" ;


-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
SELECT t."Name" as "pista",
		g."Name" as "genero"
FROM "Track" AS t 
left JOIN "Genre" AS g 
ON t."GenreId" = g."GenreId" 
order by g."Name" ;


-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select concat(c."FirstName", ' ', c."LastName") as nombre_cliente,
	count(i."InvoiceId")
from "Customer" as c
right join "Invoice" as i 
on i."CustomerId" =c."CustomerId" 
group by c."CustomerId" ;


-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
SELECT a."Title" as "album",
		a2."Name" as "artista"
FROM "Album" as a 
LEFT JOIN "Artist" a2 
ON a."ArtistId" = a2."ArtistId" 
order by a2."Name" ;


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
SELECT count(t."Name") as "pistas",
		g."Name" as "genero"
FROM "Track" AS t 
left JOIN "Genre" AS g 
ON t."GenreId" = g."GenreId" 
group by g."Name" 
order by count(t."Name") desc ;


--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select a."Title" as "album",
		sum(t."Milliseconds") as "duracion"
from "Track" as t 
left join "Album" as a 
on t."AlbumId" = a."AlbumId" 
group by  a."Title"


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select concat(c."FirstName", ' ', c."LastName") as "nombre_cliente",
		sum(i."Total") as "total_gastado"
from "Customer" as c 
right join "Invoice" i 
ON c."CustomerId" = i."CustomerId" 
group by concat(c."FirstName", ' ', c."LastName");


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select concat(e."FirstName", ' ', e."LastName") as "nombre_empleado" ,
		concat(c."FirstName", ' ', c."LastName") as "nombre_cliente"
from "Employee" AS e 
full join "Customer" as c 
ON e."EmployeeId" = c."SupportRepId"
order by concat(e."FirstName", ' ', e."LastName");


