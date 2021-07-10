INSERT INTO usuario (Nombre_Usuario, Email, Contraseña, Nombre, Apellido, Edad, Sexo, id_Ciudad) VALUES 
	('Andres123', 'andres123@gmail.com', 'carrito1', 'Andres', 'Perez', 18, 'M', 3),
    	('LuisC', 'luisc26@gmail.com', 'contra56', 'Luis', 'Castillo', 25, 'M', 7),
    	('MariaD96', 'maridani@gmail.com', 'danicontra', 'Maria', 'Rios', 30, 'F', 5),
    	('Adri55', 'andriana15@gmail.com', 'a68999', 'aDri', 'Rojas', 19, 'F', 19),
    	('Rodrixx', 'rodrip1@gmail.com', 'futbol17', 'Rodrigo', 'Porras', 27, 'M', 10),
    	('Chesca12', 'chescar2@gmail.com', 'rubino55', 'Francesca', 'Rubino', 24, 'F', 1),
    	('Johnba', 'john.b@gmail.com', 'barrios.55', 'Luis', 'Castillo', 25, 'M', 5),
    	('Dani.11', 'dani-m@gmail.com', 'mora.dani', 'Daniela', 'Morales', 21, 'F', 1),
    	('Adrir16', 'adrih10@gmail.com', 'hernandez1', 'aDri', 'Hernandez', 36, 'F', 3),
    	('GilberG', 'gguerra.1@gmail.com', 'guerra22', 'Gilberto', 'Guerra', 38, 'M', 1)

INSERT INTO perfil (Id_Usuario, Nombre_Perfil) VALUES
	(2, 'andres'),
    (2, 'daniela'),
    (3, 'luis'),
    (4, 'maria'),
    (4, 'rosa'),
    (5, 'adri'),
    (5, 'rodri'),
    (6, 'rodirgo'),
    (7, 'chesca'),
    (7, 'omar'),
    (8, 'john'),
    (8, 'ana'),
    (9, 'daniela'),
    (10, 'andriana'),
    (11, 'gilberto')

INSERT INTO tarjeta_credito (Id_Tarjeta, Cvv, Fecha_Vencimiento) VALUES 
	(567328, 342, '12/10/2022'),
    (89912121, 576, '17/5/2024'),
    (9428232, 908, '23/11/2023'),
    (0129031, 142, '5/9/2021'),
    (65464312, 634, '6/1/2024'),
    (431212, 560, '11/4/2022'),
    (543231, 173, '13/6/2026'),
    (983137, 642, '12/2/2025'),
    (0137127, 971, '1/9/2023'),
    (0497321, 765, '26/11/2025')


INSERT INTO contrata (Id_Usuario, Id_Suscripcion, Id_Tarjeta, Fecha_Inicio, Fecha_Fin) VALUES 
	(2, 9, 567328, '2021-07-01', '2021-08-01'),
    (3, 9, 89912121, '2021-07-05', '2021-08-05'),
    (4, 9, 9428232, '2021-07-09', '2021-08-09'),
    (5, 3, 0129031, '2021-07-06', '2021-08-06'),
    (6, 3, 65464312, '2021-07-06', '2021-08-06'),
    (7, 6, 431212, '2021-07-10', '2021-08-10'),
    (8, 6, 543231, '2021-07-11', '2021-08-11'),
	(10, 9, 0497321, '2021-07-02', '2021-08-02')