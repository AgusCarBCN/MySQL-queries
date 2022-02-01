-- 1.Llista el nom de tots els productos que hi ha en la taula producto.

	 SELECT nombre FROM producto

-- 2.Llista els noms i els preus de tots els productos de la taula producto.

	-- SELECT nombre,precio FROM producto

-- 3.Llista totes les columnes de la taula producto.

	-- SELECT * FROM producto

-- 4.Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD).
-- 1 euro = 1.13 dolares estadounidenses al realizar el ejercicio.
   
	 -- SELECT precio AS 'precio(EUR)' ,round(precio*1.13,2) AS 'precio(USD)' FROM producto
    
-- 5. Llista el nom dels productos, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dolars.

	-- SELECT nombre AS 'nom de producte',precio AS 'euros',round(precio*1.13) AS 'dolars' FROM producto

-- 6.Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a majúscula.

	-- SELECT upper(nombre),precio FROM producto

-- 7.Llista els noms i els preus de tots els productos de la taula producto, convertint els noms a minúscula.

	-- SELECT lower(nombre),precio FROM producto

-- 8.Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.

	 -- SELECT nombre,upper(left(nombre,2)) FROM fabricante

-- 9.Llista els noms i els preus de tots els productos de la taula producto, arrodonint el valor del preu.

	-- SELECT nombre,round(precio) FROM producto
	
-- 10.Llista els noms i els preus de tots els productos de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
	
	-- SELECT nombre,truncate(precio,0) FROM producto
   
-- 11.Llista el codi dels fabricants que tenen productos en la taula producto
    
	-- SELECT codigo_fabricante FROM producto

-- 12. Llista el codi dels fabricants que tenen productos en la taula producto, eliminant els codis que apareixen repetits.

	-- SELECT DISTINCT codigo_fabricante FROM producto

-- 13.Llista els noms dels fabricants ordenats de manera ascendent.

	-- SELECT nombre FROM fabricante ORDER BY nombre

-- 14.Llista els noms dels fabricants ordenats de manera descendent.

	-- SELECT nombre FROM fabricante ORDER BY nombre DESC

-- 15.Llista els noms dels productos ordenats en primer lloc pel nom de manera ascendent i en segon lloc pel preu de manera descendent.

	-- SELECT nombre,precio FROM producto ORDER BY nombre ASC,precio DESC

-- 16.Retorna una llista amb les 5 primeres files de la taula fabricante.

	-- SELECT * FROM fabricante LIMIT 5
    
-- 17.Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta. 
    
	-- SELECT * FROM fabricante LIMIT 3,2
   
 -- 18.Llista el nom i el preu del producto més barat. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY

	-- SELECT nombre,precio FROM producto ORDER BY precio LIMIT 1

-- 19.Llista el nom i el preu del producto més car. (Utilitzi solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.

	-- SELECT nombre,precio FROM producto ORDER BY precio DESC LIMIT 1
    
-- 20.Llista el nom de tots els productos del fabricant el codi de fabricant del qual és igual a 2.

	-- SELECT nombre FROM producto WHERE codigo_fabricante=2
    
-- 21.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.

	-- SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo 
    
-- 22.Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordeni el resultat pel nom del fabricador, per ordre alfabètic.
    
  	--  SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY f.nombre
   
 --  23.Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.
    
   	--  SELECT p.codigo,p.nombre,f.codigo,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo 

-- 24.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.

	-- SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY p.precio LIMIT 1

-- 25.Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car

   	--  SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo ORDER BY p.precio DESC LIMIT 1
    
-- 26.Retorna una llista de tots els productes del fabricador Lenovo.

	-- SELECT p.nombre FROM producto p JOIN fabricante f ON  p.codigo_fabricante=f.codigo WHERE f.nombre='Lenovo'

-- 27.Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200€.

	-- SELECT nombre FROM producto WHERE precio >200

-- 28.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador IN.

	-- SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE  f.nombre='Asus' OR f.nombre='Hewlett-Packard' OR f.nombre='Seagate'

-- 29.Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Utilitzant l'operador IN.

	-- SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre IN('Asus', 'Hewlett-Packard', 'Seagate')

-- 30.Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.

	-- SELECT nombre,precio FROM producto WHERE nombre LIKE '%e'

-- 31.Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.

	-- SELECT nombre,precio FROM producto WHERE nombre LIKE '%w%'

-- 32.Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180€. 
-- Ordeni el resultat en primer lloc pel preu (en ordre descendent) i en segon lloc pel nom (en ordre ascendent) 

	
	-- SELECT p.nombre,p.precio,f.nombre FROM producto p JOIN fabricante f ON  p.codigo_fabricante=f.codigo WHERE p.precio>=180 ORDER BY p.precio DESC, p.nombre

-- 33.Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.

	-- SELECT DISTINCT f.codigo,f.nombre FROM fabricante f JOIN producto p ON p.codigo_fabricante=f.codigo 

-- 34.Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.

	-- SELECT f.nombre,p.nombre  FROM fabricante f  LEFT JOIN producto p ON p.codigo_fabricante=f.codigo 

-- 35.Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.

	-- SELECT f.nombre,p.nombre  FROM fabricante f LEFT JOIN  producto p ON p.codigo_fabricante=f.codigo WHERE p.nombre IS NULL
 
 -- 36. Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).  
    
  	-- SELECT nombre FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre='lenovo')
  
-- 37.Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricador Lenovo. (Sense utilitzar INNER JOIN).
  
  	-- SELECT * FROM producto WHERE codigo_fabricante=(SELECT codigo FROM fabricante WHERE nombre='lenovo') ORDER BY precio DESC LIMIT 1

-- 38.Llista el nom del producte més car del fabricador Lenovo.

	-- SELECT nombre FROM producto WHERE codigo_fabricante=(SELECT codigo FROM fabricante WHERE nombre='lenovo') ORDER BY precio DESC LIMIT 1

-- 39.Llista el nom del producte més barat del fabricant Hewlett-Packard.
   
   -- SELECT nombre FROM producto WHERE codigo_fabricante=(SELECT codigo FROM fabricante WHERE nombre='Hewlett-Packard') ORDER BY precio LIMIT 1
   
-- 40.Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricador Lenovo.

	-- SELECT * FROM producto WHERE precio>=(SELECT precio FROM producto WHERE codigo_fabricante=(SELECT codigo FROM fabricante WHERE nombre='lenovo') ORDER BY precio DESC LIMIT 1)

-- 41. Llesta tots els productes del fabricador Asus que tenen un preu superior al preu mitjà de tots els seus productes.	
	
-- Con este query se consigue la media de los precios del frabricante de Asus ,224 redondeando	    
    
	-- SELECT round(avg(precio),2)as media FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre='Asus' 

-- y con este conseguimos el listado.

   -- SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre='Asus' AND p.precio>=(SELECT round(avg(precio),2)as media FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo WHERE f.nombre='Asus')
        

-- BASE DE DADES UNIVERSIDAD

-- 1.Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.

	 -- SELECT apellido1, apellido2, nombre FROM persona WHERE tipo='alumno' ORDER BY apellido1, apellido2, nombre

-- 2.Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.

	-- SELECT nombre,apellido1,apellido2 FROM persona WHERE tipo='alumno' AND telefono IS NULL

-- 3.Retorna el llistat dels alumnes que van néixer en 1999.

	-- SELECT nombre,apellido1,apellido2,fecha_nacimiento FROM persona WHERE fecha_nacimiento>= '1999-01-01' AND fecha_nacimiento<= '1999-12-31' AND tipo='alumno' 
 
 -- 4.Retorna el llistat de professors que no han donat d'alta el seu número de telèfon en la base de dades i a més la seva nif acaba en K.
 
	-- SELECT nombre,apellido1,apellido2 FROM persona WHERE telefono IS NULL AND nif LIKE '%K' AND tipo='profesor'
 
 -- 5.Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
 
	-- SELECT nombre FROM asignatura WHERE cuatrimestre='1' AND curso='3' AND id_grado='7'
 
 -- 6.Retorna un llistat dels professors juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
 
	-- SELECT p.apellido1,p.apellido2,p.nombre,d.nombre FROM persona p JOIN profesor pr ON p.id=pr.id_profesor JOIN departamento d ON pr.id_departamento=d.id ORDER BY p.apellido1,p.nombre

 -- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne amb nif 26902806M.

	-- SELECT  ce.anyo_inicio,ce.anyo_fin,a.nombre FROM persona p JOIN alumno_se_matricula_asignatura am ON p.id=am.id_alumno JOIN curso_escolar ce ON am.id_curso_escolar=ce.id JOIN asignatura a ON id_asignatura=a.id WHERE p.nif='26902806M'
    
 -- 8.Retorna un llistat amb el nom de tots els departaments que tenen professors que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015). 
      
    -- SELECT DISTINCT  d.nombre FROM grado g JOIN asignatura a ON g.id=a.id_grado JOIN profesor pr ON a.id_profesor=pr.id_profesor JOIN departamento d ON pr.id_departamento=d.id

      
-- 9.Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
     
    -- SELECT DISTINCT p.nombre,p.apellido1,p.apellido2 FROM curso_escolar cs JOIN alumno_se_matricula_asignatura am ON cs.id=am.id_curso_escolar JOIN persona p ON am.id_alumno=p.id  WHERE anyo_inicio='2018'
    
-- Resolgui les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN
  
-- 1.Retorna un llistat amb els noms de tots els professors i els departaments que tenen vinculats. El llistat també ha de mostrar
-- aquells professors que no tenen cap departament associat. El llistat ha de retornar quatre columnes, 
-- nom del departament, primer cognom, segon cognom i nom del professor. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament,
-- cognoms i el nom.
   
	  -- SELECT d.nombre,p.apellido1,p.apellido2,p.nombre FROM persona p LEFT JOIN profesor pr ON p.id=pr.id_profesor LEFT JOIN departamento d ON pr.id_departamento=d.id WHERE tipo='profesor' ORDER BY d.nombre,p.apellido1,p.apellido2,p.nombre
   
-- 2.Retorna un llistat amb els professors que no estan associats a un departament
   
	-- SELECT d.nombre,p.apellido1,p.apellido2,p.nombre FROM persona p LEFT JOIN profesor pr ON p.id=pr.id_profesor LEFT JOIN departamento d ON pr.id_departamento=d.id WHERE tipo='profesor' AND d.nombre IS NULL  ORDER BY d.nombre,p.apellido1,p.apellido2,p.nombre
    
-- 3.Retorna un llistat amb els departaments que no tenen professors associats. 
    
	-- SELECT DISTINCT d.nombre FROM departamento d LEFT JOIN  profesor p ON p.id_departamento=d.id WHERE p.id_departamento IS NULL
        
 -- 4.Retorna un llistat amb els professors que no imparteixen cap assignatura.
    
	-- SELECT DISTINCT p.nombre,p.apellido1,p.apellido2 FROM persona p LEFT JOIN asignatura a ON p.id=a.id_profesor  WHERE a.id_profesor IS NULL AND p.tipo='profesor'		
  
-- 5.Retorna un llistat amb les assignatures que no tenen un professor assignat.
  
	-- SELECT nombre FROM asignatura WHERE id_profesor IS NULL 
	
--  6.Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
    
	-- SELECT DISTINCT d.nombre FROM departamento d LEFT JOIN  profesor p ON p.id_departamento=d.id WHERE p.id_departamento IS NULL
		
    
-- Consultes Resum
    
-- 1.Retorna el nombre total d'alumnes que hi ha.
    
    -- SELECT count(nombre) FROM persona WHERE tipo='alumno'
    
-- 2.Calcula quants alumnes van néixer en 1999. 
    
    -- SELECT count(nombre) FROM persona WHERE tipo='alumno' AND fecha_nacimiento>='1999-01-01' AND fecha_nacimiento<='1999-12-31' 
    
-- 3.Calcula quants professors hi ha en cada departament. El resultat només ha de mostrar dues columnes,
-- una amb el nom del departament i una altra amb el nombre de professors que hi ha en aquest departament. 
 -- El resultat només ha d'incloure els departaments que tenen professors associats i haurà d'estar ordenat de major a menor pel nombre de professors.

	-- SELECT d.nombre AS 'nombre del departamento' ,COUNT(p.id_profesor) AS 'numero de profesores' FROM departamento d JOIN profesor p ON p.id_departamento=d.id GROUP BY d.nombre ORDER by COUNT(p.id_profesor) DESC

-- 4.Retorna un llistat amb tots els departaments i el nombre de professors que hi ha en cadascun d'ells. 
-- Tingui en compte que poden existir departaments que no tenen professors associats. Aquests departaments també han d'aparèixer en el llistat. 

      -- SELECT d.nombre,COUNT(p.nombre) AS 'numero profesores' FROM departamento d LEFT JOIN profesor pr ON d.id=pr.id_departamento LEFT JOIN persona p ON p.id=pr.id_profesor GROUP BY d.nombre
	
-- 5.Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. 
-- Tingui en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. 
-- El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.
    
     -- SELECT g.nombre,COUNT(a.nombre) AS 'numero asignaturas' FROM grado g LEFT JOIN asignatura a ON g.id=a.id_grado GROUP BY g.nombre ORDER BY COUNT(a.nombre)DESC

-- 6.Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, 
-- dels graus que tinguin més de 40 assignatures associades.

     -- SELECT g.nombre,COUNT(a.nombre) AS 'numero asignaturas' FROM grado g LEFT JOIN asignatura a ON g.id=a.id_grado GROUP BY g.nombre HAVING COUNT(a.nombre)>40  

-- 7.Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. 
-- El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.
    
     -- SELECT g.nombre AS 'nom del grau',a.tipo AS 'tipus assignatura', sum(a.creditos) AS 'suma de creditos' FROM asignatura a  JOIN grado g ON  g.id=a.id_grado GROUP BY g.nombre ,a.tipo
	
-- 8.Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. 
-- El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.
	
     -- SELECT  ce.anyo_inicio,COUNT(am.id_curso_escolar) AS 'alumnos matriculadros' FROM alumno_se_matricula_asignatura am JOIN curso_escolar ce ON ce.id=am.id_curso_escolar GROUP BY ce.anyo_inicio
    
    
-- 9.Retorna un llistat amb el nombre d'assignatures que imparteix cada professor. El llistat ha de tenir en compte
--  aquells professors que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i 
-- nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
       
    -- SELECT p.id,p.nombre,p.apellido1,p.apellido2,COUNT(a.id_profesor) AS 'numero asignaturas' FROM persona p LEFT JOIN asignatura a ON p.id=a.id_profesor WHERE p.tipo='profesor' GROUP BY p.id ORDER BY COUNT(a.id_profesor) DESC

-- 10.Retorna totes les dades de l'alumne més jove.
    
	-- SELECT * FROM persona WHERE fecha_nacimiento=(SELECT max(fecha_nacimiento)  FROM persona WHERE tipo='alumno')
   
-- 11.Retorna un llistat amb els professors que tenen un departament associat i que no imparteixen cap assignatura.

	-- SELECT p.nombre,p.apellido1,p.apellido2 FROM persona p JOIN profesor pr ON p.id=pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor=a.id_profesor WHERE a.id_profesor IS NULL



























 
    
    
    
    
    
