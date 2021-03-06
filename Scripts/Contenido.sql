INSERT INTO genero (Nombre, Descripcion) VALUES
	('Acción','En este género prevalecen altas dosis de adrenalina con una buena carga de movimiento'),
    ('Aventura','Similares a las de acción, predominan las nuevas experiencias y situaciones.'),
    ('Ciencia Ficción','Basados en fenómenos imaginarios, en la ciencia ficción son usuales los extraterrestres'),
    ('Comedia','Diseñadas específicamente para provocar la risa o la alegría entre los espectadores.'),
    ('Documental','Este género analiza un hecho o situación real sin ficcionarlo.'),
    ('Drama','Los dramas se centran en desarrollar el problema o problemas entre los diferentes protagonistas'),
    ('Fantasia','En ellas se incluyen personajes irreales o totalmente inventados, inexistentes en nuestra realidad'),
    ('Musical','Las películas que cortan su desarrollo natural con fragmentos musicales'),
    ('Suspenso','Conocido también como intriga, estas películas se desarrollan rápidamente, y todos sus elementos giran entorno un mismo elemento intrigante'),
    ('Terror','Su principal objetivo es causar miedo, horror, incomodidad o preocupación'),
	('Animacion', 'Películas que se componen de fotogramas hechos a mano y que, pasados rápidamente uno detrás de otro'),
	("Romance", "Peliculas que se centran en la relacion amorosa de dos personas");

INSERT INTO clasificacionedad (Descripcion) VALUES
	('+7 Todo Publico'),
    ('+13 Para niños a partir de los 13 años'),
    ('+16 Recomendada a partir de los 16 años'),
    ('+18 Recomendada para mayores de edad');

INSERT INTO idioma (NombIdioma) VALUES
	('Ingles'),
    	('Español');
INSERT INTO contenido (Nombre, Año_Lanzamiento, Es_Contenido_Original, Id_idioma, Id_Edad) VALUES 
	('Colonia', 2015, false, 1, 3),
    ('Marriage Story', 2019, true, 1, 2),
    ('Gerald`s Game', 2017, true, 1, 4),
    ('The two Pops', 2019, true, 1, 2),
    ('El camino', 2019, true, 1, 3),
    ('In the tall grass', 2019, true, 1, 4),
    ('The impossible', 2012, false, 1, 2),
    ('Lady Bird', 2017, false, 1, 4),
    ('Army of the dead', 2021, false, 1, 4),
    ('Roma', 2018, false, 2, 4),
    ('Nocturnal Animals', 2016, false, 1, 4),
    ('Shrek', 2001, false, 2, 1),
    ('Baby', 2017, false, 1, 4),
    ('War Dogs', 2016, false, 1, 3),
    ('inglourious basterds', 2009, false, 1, 4),
    ('Kung fu Panda', 2008, false, 2, 1), 
    ('Suicide Squad', 2016, false, 1, 3),
    ('Arrival', 2016, false, 1, 2),
    ('V for Vendetta', 2006, false, 1, 4),
    ('Forrest Gump', 1994, false, 1, 4)
	('Brooklyn 99', 2019, false, 1, 3),
    ('Breaking Bad', 2013, false, 1, 4),
    ('Vikings', 2013, false, 1, 4),
    ('Dark', 2020, true, 1, 4),
    ('Ozark', 2020, true, 1, 4),
    ('The Queen`s Gambit', 2020, true, 1, 4),
    ('Modern Family', 2019, false, 1, 2),
    ('Pablo Escobar', 2012, false, 2, 4),
    ('Psycho Pass', 2014, false, 1, 3),
    ('Paeky Blinders', 2918, true, 1, 4);

INSERT INTO pelicula (Id_Pelicula, Mins_Duracion, Sinopsis) VALUES 
	(1, 110, 'La película narra la historia de una azafata alemana, Lena, que visita a su pareja, Daniel, un joven, también alemán, fotógrafo y artista gráfico que se encuentra desde hace unos meses en Chile.'),
    (2, 136, 'Un director de teatro y una actriz, luchan por superar su divorcio, el cual les lleva al extremo tanto en lo personal como en lo creativo. Además de aprender a convivir para lograr una estabilidad en la vida de su pequeño hijo.'),
    (3, 103, 'Jessie y Gerald son un matrimonio que viaja a una remota cabaña con la esperanza de revitalizar su deteriorada relación en un sitio apartado y tranquilo. Allí, Gerald le propone a su mujer un juego sexual: esposarla a la cama para incrementar las sensaciones. Pero cuando él muere de un infarto, Jessie tendrá que luchar por su supervivencia.'),
    (4, 125, 'La relación entre los papas Benedicto XVI y Francisco, quienes deben afrontar sus propios pasados y las demandas del mundo moderno para forjar un nuevo camino para la Iglesia Católica.'),
    (5, 122,'Tras un dramático escape de su cautiverio, Jesse Pinkman debe lidiar con su pasado para pensar en un futuro.'),
    (6, 101, 'Una mujer embarazada y su hermano entran en un campo de hierba alta para rescatar a un niño, pero pronto se dan cuenta de que no pueden escapar y algo malo acecha entre las malezas.'),
    (7, 114, 'En unas vacaciones de Navidad en Tailandia, Maria, Henry, Lucas, Thomas y Simon, se encuentran justo en el medio de el catastrófico tsunami del Océano Índico de 2004. '),
    (8, 93, 'Christine «Lady Bird» McPherson tiene una relación complicada con su madre porque son casi exactamente iguales en sus formas de ser.'),
    (9, 148, 'Zack Snyder regresa al género zombi con esta película de terror que presenta a Dave Bautista como un ex héroe de guerra reclutado para dirigir una misión en las profundidades de Las Vegas, ahora una ciudad amurallada e infestada de muertos vivientes.'),
    (10, 148, 'La película de Alfonso Cuarón sigue a Cleo, una sirvienta que trabaja en la casa de un médico rico, Antonio, y su esposa, Sofía. '),
    (11, 116, 'En Nocturnal Animals de Tom Ford, Amy Adams es Susan Morrow, la exitosa propietaria de una galería de arte de Los Ángeles. Una mañana, Susan recibe un manuscrito de la última novela de su ex marido Edward, titulada Nocturnal Animals, junto con una invitación para cenar.'),
    (12, 90, 'Shrek es un ogro verde, gruñón y altamente territorial que ama la soledad. Todos estén en su contra, por lo que asusta a los aldeanos que entran al pantano en el que vive. Un día conoce a un burro parlante que huía de su dueña. '),
    (13, 113, 'Baby es un chofer especializado en fugas que, enamorado, pretende dejar la vida criminal y empezar de cero con la mujer que ama.'),
    (14,114, 'Con la guerra en Irak en toda su furia, un joven ofrece a su amigo de la infancia la oportunidad de ganar mucho dinero al convertirse en un vendedor internacional de armas.'),
    (15, 152, 'Es el primer año de la ocupación alemana de Francia. El oficial aliado, teniente Aldo Raine, ensambla un equipo de soldados judíos para cometer actos violentos en contra de los nazis, incluyendo la toma de cabelleras.'),
    (16, 94, 'En el Valle de la Paz, una tierra de la Antigua China habitada por animales antropomórficos, el panda Po es fanático del kung fu e idolatra a los Cinco Furiosos: Tigresa, Mono, Grulla, Víbora y Mantis, un grupo de maestros de kung fu entrenados por el Maestro Shifu.'),
    (17, 122, 'Un nuevo día rutinario comienza en la penitenciaría Belle Reve. Floyd Lawton entrena con un saco de boxeo hasta que el capitán Griggs lo interrumpe para traerle comida en mal estado. Él se molesta y le promete a Griggs que cuando salga lo haría sufrir, pero el capitán retribuye su amenaza golpeándolo junto a sus compañeros.'),
    (18, 116, 'El gobierno contrata a la prestigiosa lingüista Louise Banks para que se comunique con unos alienígenas que han llegado a la Tierra.'),
    (19, 132, 'Historia de un futuro ficticio donde Inglaterra es un estado fascista y totalitario. Evey, una joven proveniente de la clase trabajadora, es rescatada por "V", un misterioso enmascarado que busca la destrucción del gobierno cruel y corrupto, y la libertad del pueblo.'),
    (20, 143, 'Forrest Gump, un joven sureño, tenaz e inocente, es protagonista de acontecimientos cruciales en la historia de los Estados Unidos.');

INSERT INTO serie (Id_Serie, Descripcion) VALUES
	(21, 'Los detectives Jake Peralta, Amy Santiago, Rosa Diaz y la...'),
	(22, 'El profesor calmado de química de una secundaria, Walter...'),
	(23, 'El vikingo Ragnar Lothbrok es un joven agricultor y hombre...'),
	(24, 'La desaparición de dos niños muestra los vínculos entre ...'),
	(25, 'Un financista traslada a su familia a Ozarks...'),
	(26, 'La huérfana y prodigio del ajedrez, Beth Harmon, lucha...'),
	(27, 'Narrada desde la perspectiva de un cineasta de documental...'),
	(28, 'La vida del narcotraficante más temido en la historia de...'),
	(29, 'En el futuro cercano, es posible medir el potencial...'),
	(30, 'Gran Bretaña vive la posguerra. Los soldados regresan...');

INSERT INTO temporada (Numero, Descripcion, Id_Serie) VALUES 
	(1, 'Primera temporada de Brooklyn 99', 21),
    (2, 'Segunda temporada de Brooklyn 99', 21),
    (3, 'Tercera temporada de Brooklyn 99', 21),
    (4, 'Cuarta temporada de Brooklyn 99', 21),
    (5, 'Quinta temporada de Brooklyn 99', 21),
    (6, 'Sexta temporada de Brooklyn 99', 21),
    (1, 'Primera temporada de Breaking Bad', 22),
    (2, 'Segunda temporada de Breaking Bad', 22),
    (3, 'Tercera temporada de Breaking Bad', 22),
    (4, 'Cuarta temporada de Breaking Bad', 22),
    (5, 'Quinta temporada de Breaking Bad', 22),
    (1, 'Primera temporada de Vikings', 23),
    (2, 'Segunda temporada de Vikings', 23),
    (3, 'Tercera temporada de Vikings', 23),
    (4, 'Cuarta temporada de Vikings', 23),
    (5, 'Quinta temporada de Vikings', 23),
    (6, 'Sexta temporada de Vikings', 23),
    (1, 'Primera temporada de Dark', 24),
    (2, 'Segunda temporada de Dark', 24),
    (3, 'Tercera temporada de Dark', 24),
    (1, 'Primera temporada de Ozark', 25),
    (2, 'Segunda temporada de Ozark', 25),
    (3, 'Tercera temporada de Ozark', 25),
    (1, 'Primera temporada de The Queens', 26),
    (1, 'Primera temporada de Modern Family', 27),
    (2, 'Segunda temporada de Modern Family', 27),
    (3, 'Tercera temporada de Modern Family', 27),
    (1, 'Primera temporada de Pablo Escobar', 28),
    (1, 'Primera temporada de Psycho Pass', 29),
    (2, 'Segunda temporada de Psycho Pass', 29),
    (1, 'Primera temporada de Peaky Blinders', 30),
    (2, 'Segunda temporada de Peaky Blinders', 30),
    (3, 'Tercera temporada de Peaky Blinders', 30),
    (4, 'Cuarta temporada de Peaky Blinders', 30),
    (5, 'Quinta temporada de Peaky Blinders', 30);


INSERT INTO episodio (Nombre, Numero, Descripcion, Id_Temporada) VALUES 
	('Episodio 1', 1, 'Primer Episodio de Brooklyn 99', 1),
    ('Episodio 2', 2, 'Segundo Episodio de Brooklyn 99', 1),
    ('Episodio 3', 3, 'Tercero Episodio de Brooklyn 99', 1),
    ('Episodio 4', 4, 'Cuarto Episodio de Brooklyn 99', 1),
    ('Episodio 5', 5, 'Quinto Episodio de Brooklyn 99', 1),
    ('Episodio 6', 6, 'Sexto Episodio de Brooklyn 99', 1),
    ('Episodio 7', 7, 'Septimo Episodio de Brooklyn 99', 1),
    ('Episodio 1', 1, 'Primer Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 2', 2, 'Segundo Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 3', 3, 'Tercer Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 4', 4, 'Cuarto Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 5', 5, 'Quinto Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 6', 6, 'Sexto Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 7', 7, 'Septimo Episodio de la segunda temporada de Brooklyn 99', 2),
    ('Episodio 1', 1, 'Primer Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 2', 2, 'Segundo Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 3', 3, 'Tercer Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 4', 4, 'Cuarto Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 5', 5, 'Quinto Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 6', 6, 'Sexto Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 7', 7, 'Septimo Episodio de la tercera temporada de Brooklyn 99', 3),
    ('Episodio 1', 1, 'Primer Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 2', 2, 'Segundo Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 3', 3, 'Tercer Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 4', 4, 'Cuarto Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 5', 5, 'Quinto Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 6', 6, 'Sexto Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 7', 7, 'Septimo Episodio de la cuarta temporada de Brooklyn 99', 4),
    ('Episodio 1', 1, 'Primer Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 2', 2, 'Segundo Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 3', 3, 'Tercer Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 4', 4, 'Cuarto Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 5', 5, 'Quinto Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 6', 6, 'Sexto Episodio de la quinta temporada de Brooklyn 99', 5),
    ('Episodio 7', 7, 'Septimo Episodio de la quinta temporada de Brooklyn 99', 5),
	('Episodio 1', 1, 'Primer Episodio de Breaking Bad', 7),
    ('Episodio 2', 2, 'Segundo Episodio de Breaking Bad', 7),
    ('Episodio 3', 3, 'Tercero Episodio de Breaking Bad', 7),
    ('Episodio 4', 4, 'Cuarto Episodio de Breaking Bad', 7),
    ('Episodio 5', 5, 'Quinto Episodio de Breaking Bad', 7),
    ('Episodio 6', 6, 'Sexto Episodio de Breaking Bad', 7),
    ('Episodio 7', 7, 'Septimo Episodio de Breaking Bad', 7),
    ('Episodio 1', 1, 'Primer Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 2', 2, 'Segundo Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 3', 3, 'Tercer Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 4', 4, 'Cuarto Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 5', 5, 'Quinto Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 6', 6, 'Sexto Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 7', 7, 'Septimo Episodio de la segunda temporada de Breaking Bad', 8),
    ('Episodio 1', 1, 'Primer Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 2', 2, 'Segundo Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 3', 3, 'Tercer Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 4', 4, 'Cuarto Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 5', 5, 'Quinto Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 6', 6, 'Sexto Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 7', 7, 'Septimo Episodio de la tercer temporada de Breaking Bad', 9),
    ('Episodio 1', 1, 'Primer Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 2', 2, 'Segundo Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 3', 3, 'Tercer Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 4', 4, 'Cuarto Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 5', 5, 'Quinto Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 6', 6, 'Sexto Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 7', 7, 'Septimo Episodio de la 4° temporada de Breaking Bad', 10),
    ('Episodio 1', 1, 'Primer Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 2', 2, 'Segundo Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 3', 3, 'Tercer Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 4', 4, 'Cuarto Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 5', 5, 'Quinto Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 6', 6, 'Sexto Episodio de la 5° temporada de Breaking Bad', 11),
    ('Episodio 7', 7, 'Septimo Episodio de la 5° temporada de Breaking Bad', 11),
	('Episodio 1', 1, 'Primer Episodio de Vikings', 12),
    ('Episodio 2', 2, 'Segundo Episodio de Vikings', 12),
    ('Episodio 3', 3, 'Tercero Episodio de Vikings', 12),
    ('Episodio 4', 4, 'Cuarto Episodio de Vikings', 12),
    ('Episodio 5', 5, 'Quinto Episodio de Vikings', 12),
    ('Episodio 6', 6, 'Sexto Episodio de Vikings', 12),
    ('Episodio 7', 7, 'Septimo Episodio de Vikings', 12),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Vikings', 13),
    ('Episodio 1', 1, 'Primer Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 2', 2, 'Segundo Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 3', 3, 'Tercer Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 4', 4, 'Cuarto Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 5', 5, 'Quinto Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 6', 6, 'Sexto Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 7', 7, 'Septimo Episodio de la 3° temporada de Vikings', 14),
    ('Episodio 1', 1, 'Primer Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 2', 2, 'Segundo Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 3', 3, 'Tercer Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 4', 4, 'Cuarto Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 5', 5, 'Quinto Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 6', 6, 'Sexto Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 7', 7, 'Septimo Episodio de la 4° temporada de Vikings', 15),
    ('Episodio 1', 1, 'Primer Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 2', 2, 'Segundo Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 3', 3, 'Tercer Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 4', 4, 'Cuarto Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 5', 5, 'Quinto Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 6', 6, 'Sexto Episodio de la 5° temporada de Vikings', 16),
    ('Episodio 7', 7, 'Septimo Episodio de la 5° temporada de Vikings', 16),
	('Episodio 1', 1, 'Primer Episodio de Dark', 18),
    ('Episodio 2', 2, 'Segundo Episodio de Dark', 18),
    ('Episodio 3', 3, 'Tercero Episodio de Dark', 18),
    ('Episodio 4', 4, 'Cuarto Episodio de Dark', 18),
    ('Episodio 5', 5, 'Quinto Episodio de Dark', 18),
    ('Episodio 6', 6, 'Sexto Episodio de Dark', 18),
    ('Episodio 7', 7, 'Septimo Episodio de Dark', 18),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Dark', 19),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Dark', 19),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Dark', 19),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Dark', 19),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Dark', 19),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Dark', 19),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Dark', 19),
    ('Episodio 1', 1, 'Primer Episodio de la 3° temporada de Dark', 20),
    ('Episodio 2', 2, 'Segundo Episodio de la 3° temporada de Dark', 20),
    ('Episodio 3', 3, 'Tercer Episodio de la 3° temporada de Dark', 20),
    ('Episodio 4', 4, 'Cuarto Episodio de la 3° temporada de Dark', 20),
    ('Episodio 5', 5, 'Quinto Episodio de la 3° temporada de Dark', 20),
    ('Episodio 6', 6, 'Sexto Episodio de la 3° temporada de Dark', 20),
    ('Episodio 7', 7, 'Septimo Episodio de la 3° temporada de Dark', 20),
('Episodio 1', 1, 'Primer Episodio de Ozark', 21),
    ('Episodio 2', 2, 'Segundo Episodio de Ozark', 21),
    ('Episodio 3', 3, 'Tercero Episodio de Ozark', 21),
    ('Episodio 4', 4, 'Cuarto Episodio de Ozark', 21),
    ('Episodio 5', 5, 'Quinto Episodio de Ozark', 21),
    ('Episodio 6', 6, 'Sexto Episodio de Ozark', 21),
    ('Episodio 7', 7, 'Septimo Episodio de Ozark', 21),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Ozark', 22),
    ('Episodio 1', 1, 'Primer Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 2', 2, 'Segundo Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 3', 3, 'Tercer Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 4', 4, 'Cuarto Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 5', 5, 'Quinto Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 6', 6, 'Sexto Episodio de la 3° temporada de Ozark', 23),
    ('Episodio 7', 7, 'Septimo Episodio de la 3° temporada de Ozark', 23),
('Episodio 1', 1, 'Primer Episodio de The Queen`s Gambit', 24),
    ('Episodio 2', 2, 'Segundo Episodio de The Queen`s Gambit', 24),
    ('Episodio 3', 3, 'Tercero Episodio de The Queen`s Gambit', 24),
    ('Episodio 4', 4, 'Cuarto Episodio de The Queen`s Gambit', 24),
    ('Episodio 5', 5, 'Quinto Episodio de The Queen`s Gambit', 24),
    ('Episodio 6', 6, 'Sexto Episodio de The Queen`s Gambit', 24),
    ('Episodio 7', 7, 'Septimo Episodio de The Queen`s Gambit', 24),
('Episodio 1', 1, 'Primer Episodio de Modern Family', 25),
    ('Episodio 2', 2, 'Segundo Episodio de Modern Family', 25),
    ('Episodio 3', 3, 'Tercero Episodio de Modern Family', 25),
    ('Episodio 4', 4, 'Cuarto Episodio de Modern Family', 25),
    ('Episodio 5', 5, 'Quinto Episodio de Modern Family', 25),
    ('Episodio 6', 6, 'Sexto Episodio de Modern Family', 25),
    ('Episodio 7', 7, 'Septimo Episodio de Modern Family', 25),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Modern Family', 26),
    ('Episodio 1', 1, 'Primer Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 2', 2, 'Segundo Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 3', 3, 'Tercer Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 4', 4, 'Cuarto Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 5', 5, 'Quinto Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 6', 6, 'Sexto Episodio de la 3° temporada de Modern Family', 27),
    ('Episodio 7', 7, 'Septimo Episodio de la 3° temporada de Modern Family', 27),
('Episodio 1', 1, 'Primer Episodio de Pablo Escobar', 28),
    ('Episodio 2', 2, 'Segundo Episodio de Pablo Escobar', 28),
    ('Episodio 3', 3, 'Tercero Episodio de Pablo Escobar', 28),
    ('Episodio 4', 4, 'Cuarto Episodio de Pablo Escobar', 28),
    ('Episodio 5', 5, 'Quinto Episodio de Pablo Escobar', 28),
    ('Episodio 6', 6, 'Sexto Episodio de Pablo Escobar', 28),
    ('Episodio 7', 7, 'Septimo Episodio de Pablo Escobar', 28),
('Episodio 1', 1, 'Primer Episodio de Psycho Pass', 29),
    ('Episodio 2', 2, 'Segundo Episodio de Psycho Pass', 29),
    ('Episodio 3', 3, 'Tercero Episodio de Psycho Pass', 29),
    ('Episodio 4', 4, 'Cuarto Episodio de Psycho Pass', 29),
    ('Episodio 5', 5, 'Quinto Episodio de Psycho Pass', 29),
    ('Episodio 6', 6, 'Sexto Episodio de Psycho Pass', 29),
    ('Episodio 7', 7, 'Septimo Episodio de Psycho Pass', 29),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Psycho Pass', 30),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Psycho Pass', 30),
('Episodio 1', 1, 'Primer Episodio de Peaky Blinders', 31),
    ('Episodio 2', 2, 'Segundo Episodio de Peaky Blinders', 31),
    ('Episodio 3', 3, 'Tercero Episodio de Peaky Blinders', 31),
    ('Episodio 4', 4, 'Cuarto Episodio de Peaky Blinders', 31),
    ('Episodio 5', 5, 'Quinto Episodio de Peaky Blinders', 31),
    ('Episodio 6', 6, 'Sexto Episodio de Peaky Blinders', 31),
    ('Episodio 7', 7, 'Septimo Episodio de Peaky Blinders', 31),
    ('Episodio 1', 1, 'Primer Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 2', 2, 'Segundo Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 3', 3, 'Tercer Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 4', 4, 'Cuarto Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 5', 5, 'Quinto Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 6', 6, 'Sexto Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 7', 7, 'Septimo Episodio de la 2° temporada de Peaky Blinders', 32),
    ('Episodio 1', 1, 'Primer Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 2', 2, 'Segundo Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 3', 3, 'Tercer Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 4', 4, 'Cuarto Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 5', 5, 'Quinto Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 6', 6, 'Sexto Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 7', 7, 'Septimo Episodio de la 3° temporada de Peaky Blinders', 33),
    ('Episodio 1', 1, 'Primer Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 2', 2, 'Segundo Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 3', 3, 'Tercer Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 4', 4, 'Cuarto Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 5', 5, 'Quinto Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 6', 6, 'Sexto Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 7', 7, 'Septimo Episodio de la 4° temporada de Peaky Blinders', 34),
    ('Episodio 1', 1, 'Primer Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 2', 2, 'Segundo Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 3', 3, 'Tercer Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 4', 4, 'Cuarto Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 5', 5, 'Quinto Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 6', 6, 'Sexto Episodio de la 5° temporada de Peaky Blinders', 35),
    ('Episodio 7', 7, 'Septimo Episodio de la 5° temporada de Peaky Blinders', 35);