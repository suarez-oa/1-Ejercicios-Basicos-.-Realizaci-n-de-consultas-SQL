/* Tienda de informática */
/* Consultas sobre una tabla
1 ¿Cómo se lista el nombre de todos los productos en la tabla producto? */
SELECT nombre FROM producto;
/* 2 ¿Cómo se listan los nombres y los precios de todos los productos en la tabla producto? */
SELECT nombre, precio FROM producto;
/* 3 ¿Cómo se listan todas las columnas de la tabla producto? */
SELECT * FROM producto;
/* 4 ¿Cómo se lista el nombre de los productos junto con su precio en euros y en dólares estadounidenses (USD)?*/
SELECT nombre, precio, precio * 1.2 AS precio_usd FROM producto;
/* 5 ¿Cómo se lista el nombre de los productos y su precio en euros y dólares estadounidenses usando los alias "nombre de producto", "euros" y "dólares"?*/
SELECT nombre AS 'nombre de producto', precio AS euros, precio * 1.2 AS dólares FROM producto;
/* 6 ¿Cómo se listan los nombres y los precios de todos los productos en la tabla producto, convirtiendo los nombres a mayúsculas? */
SELECT UPPER(nombre) AS nombre, precio FROM producto;
/*7 ¿Cómo se listan los nombres y los precios de todos los productos en la tabla producto, convirtiendo los nombres a minúsculas?*/
SELECT LOWER(nombre) AS nombre, precio FROM producto;
/*8 ¿Cómo se lista el nombre de todos los fabricantes con los dos primeros caracteres del nombre en mayúsculas?*/
SELECT UPPER(SUBSTRING(nombre, 1, 2)), nombre FROM fabricante;
/*9 ¿Cómo se listan los nombres y los precios de todos los productos en la tabla producto, redondeando el precio?.*/
 SELECT nombre, ROUND(precio, 0) FROM producto;
/*10 ¿Cómo se listan los nombres y los precios de todos los productos en la tabla producto, truncando el precio para mostrarlo sin cifras decimales?.*/
SELECT nombre, TRUNCATE(precio, 0) FROM producto;
/*11 ¿Cómo se lista el identificador de los fabricantes que tienen productos en la tabla producto?*/
SELECT id_fabricante FROM producto;
/*12 ¿Cómo se lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando duplicados?.*/
SELECT DISTINCT id_fabricante FROM producto;
/*13 ¿Cómo se listan los nombres de los fabricantes ordenados de forma ascendente?*/
SELECT nombre FROM fabricante ORDER BY nombre ASC;
/*14 ¿Cómo se listan los nombres de los productos ordenados primero por nombre de forma ascendente y luego por precio de forma descendente?.*/
SELECT nombre FROM producto ORDER BY nombre ASC, precio DESC;
/*15 ¿Cómo se muestran las 5 primeras filas de la tabla fabricante?.*/
SELECT * FROM fabricante LIMIT 5;
/*16 ¿Cómo se muestran 2 filas a partir de la cuarta fila de la tabla fabricante?.*/
SELECT * FROM fabricante LIMIT 4, 2;
/*17 ¿Cómo se obtiene el nombre y el precio del producto más barato?*/
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
/*18 ¿Cómo se obtiene el nombre y el precio del producto más caro?*/
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
/*19 ¿Cómo se lista el nombre de todos los productos del fabricante cuyo identificador es 2?*/
SELECT nombre FROM producto WHERE id_fabricante = 2;
/*20 ¿Cómo se listan los nombres de los productos que tienen un precio menor o igual a 120?*/
SELECT nombre FROM producto WHERE precio <= 120;
/* 21 ¿Cómo se listan los nombres de los productos que tienen un precio mayor o igual a 400?*/
SELECT nombre FROM producto WHERE precio >= 400;
/*22 ¿Cómo se listan los nombres de los productos que no tienen un precio mayor o igual a 400?*/
SELECT nombre FROM producto WHERE precio < 400;
/*23 ¿Cómo se listan todos los productos con un precio entre 80 y 300 sin usar BETWEEN?*/
SELECT * FROM producto WHERE precio >= 80 AND precio <= 300;
/*24 ¿Cómo se listan todos los productos con un precio entre 60 y 200 utilizando BETWEEN?*/
SELECT * FROM producto WHERE precio BETWEEN 60 AND 200;
/*25 Lista todos los productos que tengan un precio mayor que 200 y que el identificador de fabricante sea igual a 6.*/
SELECT * FROM producto WHERE precio > 200 AND id_fabricante = 6;
/*26 Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.*/
SELECT * FROM producto WHERE id_fabricante = 1 OR id_fabricante = 3 OR id_fabricante = 5;
/*27 Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.*/
SELECT * FROM producto WHERE id_fabricante IN (1, 3, 5);
/*28 Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.*/
SELECT nombre, precio * 100 AS centimos FROM producto;
/*29 Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.*/
SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';
/*30 Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.*/
SELECT nombre FROM fabricante WHERE nombre LIKE '%e';
/*31 Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.*/
SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';
/*32 Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.*/
SELECT nombre FROM fabricante WHERE LENGTH(nombre) = 4;
/*33 Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.*/
SELECT nombre FROM producto WHERE nombre LIKE '%Portátil%';
/*34 Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215.*/
SELECT nombre FROM producto WHERE nombre LIKE '%Monitor%' AND precio < 215;
/*36 Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180. 
Ordene el resultado en primer lugar por el precio (en orden descendente) 
y en segundo lugar por el nombre (en orden ascendente).*/
SELECT nombre, precio FROM producto WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;