INSERT INTO plan (Nombre_Plan) VALUES 
	('Plan Basico'), 
	('Plan Estandar'), 
	('Plan Premium');
INSERT INTO suscripcion (Nombre, Tipo, Descripcion, Tarifa, Id_Plan) VALUES
	('Gold', 'Para un dispositivo', 'Te da acceso una pequeña parte de nuestro catalago', 8, 1),
    ('Premium', 'Para dos dispositivo', 'Te da acceso a la mayor parte de nuestro catalogo', 12, 1),
    ('VIP', 'Para cuatros dispositivo', 'Todo nuestro catalogo esta disponible', 18, 1),
    ('Gold', 'Para un dispositivo', 'Te da acceso una pequeña parte de nuestro catalago', 8, 2),
    ('Premium', 'Para dos dispositivo', 'Te da acceso a la mayor parte de nuestro catalogo', 12, 2),
    ('VIP', 'Para cuatros dispositivo', 'Todo nuestro catalogo esta disponible', 18, 2),
    ('Gold', 'Para un dispositivo', 'Te da acceso una pequeña parte de nuestro catalago', 8, 3),
    ('Premium', 'Para dos dispositivo', 'Te da acceso a la mayor parte de nuestro catalogo', 12, 3),
    ('VIP', 'Para cuatros dispositivo', 'Todo nuestro catalogo esta disponible', 18, 3)