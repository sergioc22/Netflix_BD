INSERT INTO genero(id_genero, nombre, descripción)VALUES
(1,'terror',''),
(2,'suspenso',''),
(3,'comedia',''),
(4,'drama',''),
(5,'policiaco',''),
(6,'romance',''),
(7,'accion',''),

INSERT INTO Tipo_dispositivo (Id_tipo, nombre, descripción)VALUES
(1,'smartphone',''),
(2,'pc',''),
(3,'consola',''),
(4,'smarttv',''),

INSERT INTO dispositivo(id_dispositivo, Nombre_Dispositivo, id_tipo)VALUES
(1,'iphonex_112',1),
(2,'samsunggalaxyA21_455',1),
(3,'ps4_1122',3),
(4,'pc02',2),
(5,'sonybravia_101',4),

INSERT INTO Idioma (Id_idioma, NombIdioma) VALUES
(1,'ingles'),
(2,'espanol'),
(3,'frances'),
(4,'aleman'),
(5,'italiano'),
(6,'mandarin'),

INSERT INTO ClasificacionEdad (Id_edad, descripción) VALUES
(todos,'Recomendada para todos los públicos'),
(+7,'Recomendada para niños a partir de los 7 años'),
(+13,'Recomendada para niños a partir de los 13 años '),
(+16,'Recomendada para niños a partir de los 16 años '),
(+18,'Recomendada para jóvenes a partir de los 18 años'),

INSERT INTO Contenido (id_contenido, nombre, año_lanzamiento, es_contenido_original,
id_idioma, Id_edad) VALUES

(1,'la casa de papel',2017,'es original',2,+16),
(2,'dark',2017,'es original',4,+16),
(3,'stranger things',2016,'es original',1,+13),
(4,'spider-man',2002,'no es original',1,+7),
(5,'john wick',2014,'no es original',1,+18),
(6,'el laberinto del fauno',2006,'no es original',1,+16),
(7,'el irlandes',2006,'es original',1,+18),
(8,'mision rescate',2020,'es original',1,+18),
(9,'supercool',2007,'no es original',1,+18),
(10,'el resplandor',1980,'no es original',1,+18),
(11,'forrest gump',1994,'no es original',1,+13),

 INSERT INTO Premio (Id_Premio, NombPremio, Id_pelicula_Ganadora, Año_fue_Ganadora)VALUES
(1,'Oscar a mejor pelicula',11,1994),
(2,'emmy a mejor serie internacional ',1,2018),
(3,'Oscar a mejor fotografia',6,2007),

INSERT INTO Pelicula (id_pelicula, mins_duracion, sinopsis)VALUES
(4,'2 horasy 15  minutos','Luego de sufrir la picadura de una araña genéticamente modificada, un estudiante de secundaria tímido y torpe adquiere increíbles capacidades como arácnido'),
(5,'1 hora y 45  minutos','Keanu Reeves interpreta a John Wick, un sicario retirado que vuelve a estar activo en su búsqueda de venganza.'),
(6,'1 hora y 45  minutos','En la España de 1944, la joven Ofelia y su madre enferma llegan al lugar en el que se encuentra el nuevo esposo de su madre, un sádico oficial del Ejército que intenta aplastar el levantamiento de una guerrilla.'),
(7,'3 hora y 30  minutos','En la década de 1950, el conductor de un camión Frank Sheeran se involucra con Russell Bufalino y su familia criminal de Pensilvania, en un imparable camino para ser el mejor asesino a sueldo'),
(8,'1 hora y 40 minutos','Un criminal internacional que está en prisión contrata a un mercenario para rescatar a su hijo secuestrado.'),
(9,'1 hora y 40 minutos','Seth y Evan, dos estudiantes inadaptados de preparatoria, tienen grandes esperanzas en su fiesta de graduación: los jóvenes se sienten retados por la sociedad y planean divertirse a lo grande y conseguir chicas hermosas para finalmente poder integrarse con sus compañeros'),
(10,'2 hora y 30 minutos','Jack Torrance se convierte en cuidador de invierno en el Hotel Overlook, en Colorado, con la esperanza de vencer su bloqueo con la escritura.'),
(11,'2 hora y 47 minutos','Forrest Gump, un joven sureño, tenaz e inocente, es protagonista de acontecimientos cruciales en la historia de los Estados Unidos'),

INSERT INTO Serie (id_serie, descripción)VALUES
(1,'Una banda organizada de ladrones se propone cometer el atraco del siglo en la Fábrica Nacional de Moneda y Timbre'),
(2,'La desaparición de dos niños muestra los vínculos entre cuatro familias y expone el pasado de una pequeña ciudad.'),
(3,'Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo.'),

INSERT INTO Temporada (id_temporada, numero, descripción, id_serie)VALUES
(1,1,'Una banda organizada de ladrones se propone cometer el atraco del siglo en la Fábrica Nacional de Moneda y Timbre',1),
(2,2,' El grupo de atracadores mantiene su plan de encierro con la intención de fabricar el dinero que pretenden robar.',1),
(3,1,'Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo.',3),
(4,2,'La segunda entrega se desarrolla en 1984, meses después de los eventos de la temporada debut. Will Byers regresó a casa y busca retomar su vida normal. Pero eso no será posible porque aún hay una conexión con el Upside Down la cual parece imposible de romper.',3),
(5,3,'justo al terminar las clases para las vacaciones de verano. Lejos de terminar la amenaza tas cerrar los portales en la anterior temporada, los seres del Upside Down evolucionan justo cuando el grupo de amigos está más distanciado que nunca.',3),
(6,1,'La desaparición de dos niños muestra los vínculos entre cuatro familias y expone el pasado de una pequeña ciudad.',2),
(7,2,'Jonas llega a un 2052 postapocalíptico. Noah está decidido a llevar a cabo el apocalipsis y necesita que todo salga en el momento preciso.',2),


INSERT INTO Recomendada (id_pelicula, id_perfil)VALUES
(4,2),
(4,6),
(10,9),
(11,5),
(8,7),
(5,6),
(7,7),
(9,9),
(11,2),
(6,1),

INSERT INTO Visualiza (id_perfil, id_contenido, calificación) VALUES
(4,5,9),
(1,5,8),
(2,7,7),
(3,7,8),
(4,1,9),
(5,2,6),
(6,2,7),
(6,7,10),
(11,6,10),

INSERT INTO Conecta (id_perfil, id_dispositivo)VALUES
(4,5),
(4,4),
(9,1),
(2,3),

INSERT INTO Conecta Tiene (id_contenido, id_genero) VALUES
(4,5),
(4,7),
(7,7),
(10,1),
(2,2),
(6,2),
(8,7),
(11,6),