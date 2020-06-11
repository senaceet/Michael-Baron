use Eje_Netflix;

insert into TipDoc (IdDoc, Siglas, NomTipDoc) values
	('D001', 'CC', 'Cedula de ciudadanía'),
    ('D002', 'CE', 'Cedula de extranjería'),
    ('D003', 'PA', 'Pasaporte'),
    ('D004', 'RC', 'Registro Civil');
    
insert into Rol (IdRol, NomRol) values
	(001, 'Administrador'),
    (002, 'Cliente');
    
insert into Plan (IdPlan, NomPlan, Costo, CaracPlan) values
	(001, 'Básico', 16900, 'No disponible en HD ni Ultra HD; Pantallas que se pueden ver al mismo tiempo: 1; Multidispositivo: portátil, TV, teléfono y tableta; Todas las películas y series que desees; Cancela cuando quieras'),
    (002, 'Estándar', 26900, 'Disponible en HD, no Ultra HD; Pantallas que se pueden ver al mismo tiempo: 2; Multidispositivo: portátil, TV, teléfono y tableta; Todas las películas y series que desees; Cancela cuando quieras'),
    (003, 'Premium', 38900, 'Disponible en HD y Ultra HD; Pantallas que se pueden ver al mismo timepo: 4; Multidispositivo: portátil, TV, teléfono y tableta; Todas las películas y series que desees; Cancela cuando quieras');
    
insert into Tip_Pago (IdTipPago, NomPago) values
	(001, 'Targeta de credito'),
    (002, 'Targeta debito'),
    (003, 'Targeta prepagada'),
    (004, 'Targeta de regalo Netflix'),
    (005, 'iTunes'),
    (006, 'Facturación por medio de socios');
    
insert into Categoria (IdCate, NomCate) values
	(001, 'Acción'),
    (002, 'Aventura'),
    (003, 'Animación'),
    (004, 'Clasica'),
    (005, 'Familiar'),
    (006, 'Comedia'),
    (007, 'Documental'),
    (008, 'Drama'),
    (009, 'Fe y espiritualidad'),
    (010, 'Extranjeras'),
    (011, 'Tematica LGBTQ'),
    (012, 'Terror'),
    (013, 'Música'),
    (014, 'Musicales'),
    (015, 'Romántico'),
    (016, 'Ciencia ficción'),
    (017, 'Deportes'),
    (018, 'Suspenso'),
    (019, 'Fantasía'),
    (020, 'Crimen'),
    (021, 'Misterio'),
    (022, 'Super heroes');
    
insert into Idioma (IdIdioma, NomIdioma) values
	(0001, 'Español'),
	(0002, 'Inglés'),
	(0003, 'Alemán'),
	(0004, 'Portugués'),
	(0005, 'Japonés'),
	(0006, 'Holandés'),
	(0007, 'Italiano');
        
insert into Peliculas (IdPeli, NomPeli, Duracion, AñoEst, Sinopsis, Estado) values
    (1001, 'Moana', '01:47:00', '2016', 'En la antigua Polinesia, cuando una terrible maldición sufrida por Maui llega a la impetuosa isla de la hija del Jefe, ella responde al llamado del Océano para buscar al semidiós para arreglar las cosas.', 1), -- Family, Adventure, Comedy, Animation, Musical
    (1002, 'Django Unchained', '02:45:00', '2012', 'Con la ayuda de un cazarrecompensas alemán, un esclavo liberado se dispone a rescatar a su esposa del brutal propietario de una plantación de Mississippi.', 1), -- Drama
    (1003, 'Inception', '02:28:00', '2010', 'Cobb, un ladrón experto que comete espionaje corporativo al infiltrarse en el subconsciente de sus objetivos, se le ofrece la oportunidad de recuperar su antigua vida como pago por una tarea considerada imposible: "inicio", la implantación de la idea de otra persona en el subconsciente de un objetivo.', 1), -- Action, Adventure, Science Fiction
    (1004, 'Fight Club', '02:19:00', '1999', 'Un insomne de bomba de tiempo y un vendedor de jabón resbaladizo canalizan la agresión masculina primordial en una nueva forma impactante de terapia. Su concepto se pone de moda, con "clubes de lucha" subterráneos que se forman en cada ciudad, hasta que un excéntrico se interpone y enciende una espiral fuera de control hacia el olvido.', 1), -- Drama
    (1005, 'DeadPool', '01:48:24', '2016', 'Deadpool cuenta la historia de origen del antiguo agente de las Fuerzas Especiales convertido en mercenario Wade Wilson, quien luego de ser sometido a un experimento deshonesto que lo deja con poderes curativos acelerados, adopta el alter ego Deadpool. Armado con sus nuevas habilidades y un sentido del humor oscuro y retorcido, Deadpool persigue al hombre que casi destruye su vida.', 1), -- Action, Adventure, Comedy, Superhero
    (1006, 'Avatar', '02:42:00', '2009', 'En el siglo 22, un infante de marina parapléjico es enviado a la luna Pandora en una misión única, pero se debate entre seguir órdenes y proteger una civilización alienígena.', 1), -- Action, Adventure, Fantasy, Science Fiction
    (1007, 'Interstellar', '02:49:00', '2014', 'Interestelar narra las aventuras de un grupo de exploradores que hacen uso de un agujero de gusano recién descubierto para superar las limitaciones del viaje espacial humano y conquistar las vastas distancias involucradas en un viaje interestelar.', 1), -- Science Fiction, Drama, Adventure
    (1008, 'El lobo de Wall Street', '03:00:00', '2013', 'Un corredor de bolsa de Nueva York se niega a cooperar en un gran caso de fraude de valores que involucra corrupción en Wall Street, el mundo bancario corporativo y la infiltración de la mafia. Basado en la autobiografía de Jordan Belfort.', 1), -- Comedy, Crime, Drama
    (1009, 'Pasajeros', '01:56:00', '2016', 'Una nave espacial que viaja a un planeta colonia distante y transporta a miles de personas tiene un mal funcionamiento en sus cámaras de sueño. Como resultado, dos pasajeros se despiertan 90 años antes.',1), -- Science Fiction, Romance, Drama
    (1010, 'Zootopia ', '01:49:00', '2016', 'Decidida a demostrar su valía, la oficial Judy Hopps, la primera conejita de la fuerza policial de Zootopia, aprovecha la oportunidad de resolver su primer caso, incluso si eso significa asociarse con el zorro Nick Wilde para resolver el misterio.', 1), -- Adventure, Animation, Comedy, Family
    (1011, 'Batman el caballero de la noche', '02:32:00', '2008', 'Batman eleva las apuestas en su guerra contra el crimen. Con la ayuda del teniente Jim Gordon y el fiscal de distrito Harvey Dent, Batman se propone desmantelar las organizaciones criminales restantes que plagan las calles. La asociación demuestra ser efectiva, pero pronto se encuentran presa de un reinado de caos desatado por un cerebro criminal en ascenso conocido por los aterrorizados ciudadanos de Gotham como el Joker.', 1); -- Action, Crime, Drama, Thriller, Superhero
    
insert into Series (IdSerie, NomSerie, NumTemporadas, AñoEst, Sinopsis, Calificacion, Estado) values
	(2001, 'House', 8, '2004', 'El Dr. Gregory House es un médico inconformista que no tiene trato con los pacientes. Si bien su comportamiento puede ser antisocial, el Dr. House prospera con el desafío de resolver los acertijos médicos que otros médicos abandonan. Junto con su selecto equipo de jóvenes expertos médicos, hará lo que sea necesario en la carrera contrarreloj para resolver el caso.', 8.7, 1), -- Comedy, Drama, Mystery
    (2002, 'American Horror Story', 9, '2011', 'Una serie de antologías centradas en diferentes personajes y ubicaciones, que incluyen una casa con un pasado asesino, un manicomio, un aquelarre de brujas, un espectáculo de monstruos, un hotel embrujado, una granja poseída, un culto, el apocalipsis y un campamento de slasher.', 8.1, 1), -- Drama, Mystery, Fantasy, Science Fiction
    (2003, 'Stranger Things', 4, '2016', 'Homenaje a los clásicos misterios sobrenaturales de los años 80, "Stranger Things" es la historia de un niño que desaparece en el pequeño pueblo de Hawkins, Indiana, sin dejar rastro en 1983. En su búsqueda desesperada, tanto sus amigos como su familia y el local el sheriff está involucrado en un enigma extraordinario: experimentos de alto secreto, terribles fuerzas paranormales y una niña muy, muy rara ...', 8.8, 1), -- Drama, Fantasy, Science Fiction, Mystery
    (2004, 'Arrow', 8, '2012', 'Después de estar abandonado durante cinco años en una isla remota y presumiblemente muerto, el multimillonario playboy Oliver Queen regresa a casa con una misteriosa agenda y un conjunto letal de nuevas habilidades que usa en una guerra contra el crimen en su ciudad natal de Starling City.', 7.7, 1), -- Drama, Mystery, Action, Crime, Superhero, Adventure
    (2005, 'Sherlock', 4, '2010', 'Sherlock Holmes and his partner Dr. John Watson solve crimes in 21st century London.', 9.1, 1), -- Drama, Crime, Mystery
    (2006, 'Breaking Bad', 5, '2008', 'Walter White, un profesor de química en la escuela secundaria con dificultades, es diagnosticado con cáncer de pulmón avanzado. Se convierte en una vida de crimen, produciendo y vendiendo metanfetamina acompañado por un ex alumno, Jesse Pinkman, con el objetivo de asegurar el futuro financiero de su familia antes de morir.', 9.3, 1), -- Drama
    (2007, 'Friends', 10, '1994', 'Rachel Green, Ross Geller, Monica Geller, Joey Tribbiani, Chandler Bing y Phoebe Buffay son todos amigos y viven el uno del otro en el corazón de la ciudad de Nueva York. En el transcurso de diez años, este grupo promedio de amigos pasa por un caos masivo, problemas familiares, romances pasados y futuros, peleas, risas, lágrimas y sorpresas mientras aprenden lo que realmente significa ser un amigo.', 8.8, 1), -- Comedy, Drama
    (2008, 'Dark', 2, '2017', 'Cuando dos niños desaparecen en una pequeña ciudad alemana, su pasado pecaminoso se expone junto con la doble vida y las relaciones fracturadas que existen entre cuatro familias mientras buscan a los niños. La serie de drama y misterio presenta un intrincado rompecabezas lleno de giros que incluye una red de personajes curiosos, todos los cuales tienen una conexión con la problemática historia de la ciudad, lo sepan o no. La historia incluye elementos sobrenaturales que se vinculan a la misma ciudad en 1986.', 8.6, 1), -- Drama, Mystery, Crime, Fantasy, Science Fiction
    (2009, 'Black Mirror', 5, '2011', 'Una serie de antología televisiva que muestra el lado oscuro de la vida y la tecnología.', 8.7, 1), -- Drama, Fantasy, Science Fiction
    (2010, 'La casa de papel', 2, 2017, 'A master stroke devised and perfected for years, planned for months and executed in a few minutes so that the chosen group of thieves who enters the National Mint and Timbre at gunpoint make the police believe that their plan has failed... And that they are besieged inside the building with no other exit than their surrender.', 8.5, 1); -- Drama, Crime
    
insert into Servidor_C (IdServ, NomServ) values
	(001, 'outlook'),
    (002, 'gmail'),
    (003, 'yahoo');
    
insert into Log_Error (IdError, DesError, FechaError) values
	(101, 'Usuario y/o contraseña incorrectos', '9999-01-01 00:00:00'),
    (102, 'No se pudo conectar con el servidor', '9999-01-01 00:00:00'),
    (103, 'El E-mail no coinside con ninguna cuenta', '9999-01-01 00:00:00');
    
insert into Usuario (NumDoc, Nom1, Nom2, Ape1, Ape2, Email, Contra, FK_IdDoc, FK_IdRol, Fk_IdPlan) values 
	('1003573235', 'Cesar', 'Esteban', 'Martinez', '', 'cesar.martinez23@gmail.com', SHA('Contra'), 'D001', 002, 002),
    ('53064501', 'Martha', '', 'Castro', 'Prada', 'mcprada@hotmail.com', SHA('Contra'), 'D001', 002, 003),
    ('AM476265', 'Ana', 'Maria', 'Perez', 'Garcia', 'mariperez16@gmail.com', SHA('Contra'), 'D003', 002, 003),
    ('1002462124', 'Michael', 'Daniel', 'Baron', 'Castro', 'baron.daniel242001@gmail.com', SHA('Contra'), 'D001', 001, 003),
    ('AC123456', 'Orlando', '', 'Torres', 'Cardenas', 'Orlandomillos8.0@gmail.com', SHA('Contras'), 'D003', 002, 001),
    ('442113', 'Edgar', 'Emanuel', 'Martinez', '', 'edgar.m24@yahoo.com', SHA('Contra'), 'D002', 002, 002),
    ('90043479', 'Jhonny', 'Alexander', 'Pineda', 'Cuitiva', 'japc17@gmail.com', SHA('Contra'), 'D001', 001, 003),
    ('1001459332', 'Brayan', 'Danilo', 'Mora', '', 'elbrayan777@hotmail.com', SHA('Contra'), 'D001', 002, 002),
    ('123456', 'Wilder', 'Fernando', 'Gonzalez', 'Caro', 'fernando.gc@gmail.com', SHA('Contra'), 'D002', 002, 001),
    ('58830093', 'Daniel', 'Alejandro', 'Sosa', '', 'danielsosita20@yahoo.com', SHA('Contra'), 'D004', 002, 003),
    ('403014', 'Delphine', 'Lorey', 'Faramus', '', 'delphine.faramus14@gmail.com', SHA('Contra'), 'D002', 002, 002),
    ('1002462124', 'Cristian', 'Camilo', 'Montenegro', 'Guayacán', 'criscamogu2002@gmail.com', SHA('Contra'), 'D002', 002, 003),
    ('1000364890', 'Marisol', '', 'Garcia', 'Pedroza', 'marisolpedroza678@gmail.com', SHA('Contra'), 'D004', 001, 003),
    ('AV000000', 'Claudia', 'Marcela', 'Tobon', '', 'marcetobon.87@gmail.com', SHA('Contra'), 'D003', 002, 002),
    ('AQ120039', 'Alonso', '', 'Gamboa', 'Bohorquez', 'alonsogb56@hotmail.com', SHA('Contra'), 'D003', 002, 001),
    ('1004839928', 'Juan', 'Sebastian', 'Aguilar', 'Mora', 'juanprimeroa@yahoo.com', SHA('Contra'), 'D001', 002, 001),
    ('69032935', 'Linda', '', 'Muñoz', 'Angarita', 'Lindahermosa@gmail.com', SHA('Contra'), 'D001', 002, 002),
    ('2345678910', 'Andrés', 'Camilo', 'Garzón', '', 'acgarzon43@gmail.com', SHA('Contra'), 'D001', 002, 002),
    ('3456789102', 'Christper', '', 'Andrade', '', 'andrade.c23@hotmail.com', SHA('Contra'), 'D001', 002, 001),
    ('4567891023', 'Samuel', '', 'Correa', 'Becerra', 'Samuelin23@gmail.com', SHA('Contra'), 'D002', 002, 001);
    
insert into Perfil (IdPer, NomPer, Avatar, FK_NumDoc, FK_IdDoc) values
-- usuario1
	(01, 'CesarM', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '1003573235', 'D001'),
    (02, 'DayanaM', 'https://d2e70e9yced57e.cloudfront.net/wallethub/images/profile/avatars/Defaults/avatar1_350_Vdc18a74_.png', '1003573235', 'D001'),
-- usuario2
    (03, 'Tuchis', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f9fa8a33850498.56ba69ac2cc3a.png', '53064501', 'D001'),
    (04, 'Juan sebas', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', '53064501', 'D001'),
    (05, 'Dani', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '53064501', 'D001'),
-- usuario3
    (06, 'AnitaP', 'https://ih0.redbubble.net/image.618410871.2644/flat,800x800,075,f.u2.jpg', 'AM476265', 'D003'),
    (07, 'MarioP', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', 'AM476265', 'D003'),
-- usuario4
    (08, 'Negro', 'https://ih1.redbubble.net/image.618369215.1083/flat,800x800,075,f.u2.jpg', '1002462124', 'D001'),
    (09, 'Michael', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '1002462124', 'D001'),
    (10, 'Juanse', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '1002462124', 'D001'),
    (11, 'Mari', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f9fa8a33850498.56ba69ac2cc3a.png', '1002462124', 'D001'),
-- usuario5
    (12, 'OrlandoT', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', 'AC123456', 'D003'),
-- usuario6
    (13, 'EdiMar', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '442113', 'D002'),
-- usuario7
    (14, 'Jhonny', 'https://ih0.redbubble.net/image.618410871.2644/flat,800x800,075,f.u2.jpg', '90043479', 'D001'),
    (15, 'Mopri', 'https://d2e70e9yced57e.cloudfront.net/wallethub/images/profile/avatars/Defaults/avatar1_350_Vdc18a74_.png', '90043479', 'D001'),
    (16, 'Johana', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '90043479', 'D001'),
-- usuario8
    (17, 'El Brayan', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', '1001459332', 'D001'),
    (18, 'Maria', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f9fa8a33850498.56ba69ac2cc3a.png', '1001459332', 'D001'),
-- usuario9
    (19, 'Wil', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '123456', 'D002'),
-- usuario10
    (20, 'Dani', 'https://ih1.redbubble.net/image.618369215.1083/flat,800x800,075,f.u2.jpg', '58830093', 'D004'),
    (21, 'Sofi', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '58830093', 'D004'),
-- usuario11
    (22, 'Lorey', 'https://ih0.redbubble.net/image.618385909.1713/flat,1000x1000,075,f.u2.jpg', '403014', 'D002'),
    (23, 'Brad', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', '403014', 'D002'),
-- usuario12
    (24, 'Cristian', 'https://ih0.redbubble.net/image.618410871.2644/flat,800x800,075,f.u2.jpg', '1002462124', 'D002'),
    (25, 'Cata', 'https://d2e70e9yced57e.cloudfront.net/wallethub/images/profile/avatars/Defaults/avatar1_350_Vdc18a74_.png', '1002462124', 'D002'),
    (26, 'Tatis', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '1002462124', 'D002'),
-- usuario13
    (27, 'Pichona', 'https://ih1.redbubble.net/image.618369215.1083/flat,800x800,075,f.u2.jpg', '1000364890', 'D004'),
    (28, 'Hernan', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '1000364890', 'D004'),
    (29, 'Maye', 'https://ih0.redbubble.net/image.618385909.1713/flat,1000x1000,075,f.u2.jpg', '1000364890', 'D004'),
-- usuario14
    (30, 'Claudix', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', 'AV000000', 'D003'),
    (31, 'Alejandro', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f9fa8a33850498.56ba69ac2cc3a.png', 'AV000000', 'D003'),
-- usuario15
    (32, 'Gambo', 'https://d2e70e9yced57e.cloudfront.net/wallethub/images/profile/avatars/Defaults/avatar1_350_Vdc18a74_.png', 'AQ120039', 'D003'),
-- usuario16
    (33, 'Sebas', 'https://ih0.redbubble.net/image.618410871.2644/flat,800x800,075,f.u2.jpg', '1004839928', 'D001'),
-- usuario17
    (34, 'Linda', 'https://ih0.redbubble.net/image.618385909.1713/flat,1000x1000,075,f.u2.jpg', '69032935', 'D001'),
    (35, 'Flaco', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/84c20033850498.56ba69ac290ea.png', '69032935', 'D001'),
-- usuario18
    (36, 'Monito', 'https://ih1.redbubble.net/image.618369215.1083/flat,800x800,075,f.u2.jpg', '2345678910', 'D001'),
    (37, 'Andrea', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/1bdc9a33850498.56ba69ac2ba5b.png', '2345678910', 'D001'),
-- usuario19
    (38, 'Chris', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f9fa8a33850498.56ba69ac2cc3a.png', '3456789102', 'D001'),
-- usuario20
    (39, 'Samuel C', 'https://i.pinimg.com/originals/fb/8e/8a/fb8e8a96fca2f049334f312086a6e2f6.png', '4567891023', 'D002');
    
insert into Factura (IdFactura, Fecha, Hora, FK_NumDoc, FK_IdDoc, FK_IdTipPago, FK_IdPlan) values
	(0001, '2019-08-24', '09:43:15', '1003573235', 'D001', 001, 002),
    (0002, '2020-03-02', '13:30:55', '53064501', 'D001', 004, 003),
    (0003, '2018-05-24', '08:23:06', 'AM476265', 'D003', 002, 003),
    (0004, '2019-11-30', '20:11:16', '1002462124', 'D001', 001, 003),
    (0005, '2020-01-07', '12:58:02', 'AC123456', 'D003', 005, 001),
    (0006, '2017-07-15', '15:20:59', '442113', 'D002', 003, 002),
    (0007, '2018-04-11', '02:58:15', '90043479', 'D001', 001, 003),
    (0008, '2020-05-05', '22:39:27', '1001459332', 'D001', 006, 002),
    (0009, '2020-02-28', '21:28:40', '123456', 'D002', 002, 001),
    (0010, '2019-09-17', '11:15:11', '58830093', 'D004', 006, 003),
    (0011, '2018-12-03', '14:00:34', '403014', 'D002', 003, 002),
    (0012, '2020-04-20', '17:50:10', '1002462124', 'D002', 002, 003),
    (0013, '2020-01-05', '09:03:50', '1000364890', 'D004', 006, 003),
    (0014, '2019-07-02', '23:31:49', 'AV000000', 'D003', 003, 002),
    (0015, '2020-05-10', '16:43:18', 'AQ120039', 'D003', 001, 001),
    (0016, '2018-10-09', '06:53:22', '1004839928', 'D001', 006, 001),
    (0017, '2020-02-01', '10:27:01', '69032935', 'D001', 004, 002),
    (0018, '2019-08-30', '23:34:58', '2345678910', 'D001', 005, 002),
    (0019, '2018-05-10', '18:40:07', '3456789102', 'D001', 002, 001),
    (0020, '2019-09-15', '08:30:36', '4567891023', 'D002', 006, 001);
    
insert into Temporadas (IdTemp, NumTemp, FK_IdSerie) values
	(101, 1, 2001), (102, 2, 2001), (103, 3, 2001), (104, 4, 2001), (105, 5, 2001), (106, 6, 2001), (107, 7, 2001), (108, 8, 2001),
    (201, 1, 2002), (202, 2, 2002), (203, 3, 2002), (204, 4, 2002), (205, 5, 2002), (206, 6, 2002), (207, 7, 2002), (208, 8, 2002), (209, 9, 2002),
    (301, 1, 2003), (302, 2, 2003), (303, 3, 2003), (304, 4, 2003),
    (401, 1, 2004), (402, 2, 2004), (403, 3, 2004), (404, 4, 2004), (405, 5, 2004), (406, 6, 2004), (407, 7, 2004), (408, 8, 2004),
    (501, 1, 2005), (502, 2, 2005), (503, 3, 2005), (504, 4, 2005),
	(601, 1, 2006), (602, 2, 2006), (603, 3, 2006), (604, 4, 2006), (605, 5, 2006),
    (701, 1, 2007), (702, 2, 2007), (703, 3, 2007), (704, 4, 2007), (705, 5, 2007), (706, 6, 2007), (707, 7, 2007), (708, 8, 2007), (709, 9, 2007), (710, 10, 2007),
    (801, 1, 2008), (802, 2, 2008),
	(901, 1, 2009), (902, 2, 2009), (903, 3, 2009), (904, 4, 2009), (905, 5, 2009),
	(1001, 1, 2010), (1002, 2, 2010);
    
insert into Capitulos (IdCap, NomCap, NumCap, Duracion, FK_IdTemp) values
-- House-Capitulo 1 de las primeras 5 temporadas
    ('HouseP01', 'Piloto', 1,'00:44:00', 101), ('HouseS01', 'Aceptación', 1, '00:43:00', 102), ('HouseT01', 'Significado', 1, '00:43:00', 103),
    ('HouseC01', 'Solo', 1, '00:43:00', 104), ('HouseQ01', 'Morir lo cambia todo', 1, '00:43:00', 105),
-- American horror story-Capitulo 2 de las primeras 5 temporadas
	('AmericanP02', 'Invasión del hogar', 2, '00:42:00', 201), ('AmericanS02', 'trucos y golosinas', 2, '00:44:00', 202), ('AmericanT02', 'Boy Parts', 2, '00:44:00', 203),
    ('AmericanC02', 'Masacres y matinés', 2, '00:57:00', 204), ('AmericanQ02', 'Chutes y escaleras', 2, '00:43:00', 205),
-- Stranger Things-Capitulo 3 de las 4 temporadas
	('StrangerP03', 'Holly, Jolly', 3,'00:50:00', 301), ('StrangerS03', 'El pollywog', 3, '00:50:00', 302), ('StrangerT03', 'El caso del salvavidas desaparecido', 3, '00:50:00', 303),
    ('StrangerC03', 'Episodio 3', 3, '00:50:00', 304),
-- Arrow-Capitulo 4 de las primeras 5 temporadas
    ('ArrowP04', 'Un hombre inocente', 4,'00:42:00', 401), ('ArrowS04', 'Crisol', 4, '00:42:00', 402), ('ArrowT04', 'El mago', 4, '00:42:00', 403),
    ('ArrowC04', 'Más allá de la redención', 4, '00:42:00', 404), ('ArrowQ04', 'Objetivo humano', 4, '00:42:00', 405),
-- Sherlock-Capitulos 1 al 5
	('SherlockP01', 'Un estudio en rosa', 1, '01:28:00', 501), ('SherlockP02', 'El banquero ciego', 2, '01:28:00', 501), ('SherlockP03', 'El gran juego', 3, '01:29:00', 501),
    ('SherlockS01', 'Un escándalo en Belgravia', 1, '01:29:00', 502),  ('SherlockS02', 'Los sabuesos de Baskerville', 2, '01:28:00', 502),
-- Breaking Bad-Capitulo 7 de las 5 temporadas
	('BreakingP07', 'Un trato sin cosas difíciles', 7,'00:47:00', 601), ('BreakingS07', 'Negro y Azul', 7, '00:47:00', 602), ('BreakingT07', 'Un minuto', 7, '00:47:00', 603),
    ('BreakingC07', 'Problema Perro', 7, '00:47:00', 604), ('BreakingQ07', 'Di mi nombre', 7, '00:47:00', 605),
-- Friends-Capitulo 8 de las primeras 5 temporadas
	('FriendsP08', 'The One Where Nana Dies Twice', 8,'00:22:00', 701), ('FriendsS08', 'The One With The List', 8, '00:22:00', 702), ('FriendsT08', 'The One With The Giant Poking Device', 8, '00:22:00', 703),
    ('FriendsC08', 'The One With Chandler In A Box', 8, '00:22:00', 704), ('FriendsQ08', 'The One With The Thanksgiving Flashbacks (a.k.a. The One With All The Thanksgivings)', 8, '00:22:00', 705),
-- Dark-Capitulo 1, 2 y 3 de las 2 temporadas
	('DarkP01', 'Secretos', 1,'00:53:00', 801), ('DarkP02', 'Mentiras', 2, '00:53:00', 801), ('DarkP03', 'Pasado y presente', 3, '00:53:00', 801),
    ('DarkS01', 'Principios y finales', 1, '00:53:00', 802), ('DarkS02', 'Materia oscura', 2, '00:53:00', 802), ('DarkS03', 'Fantasmas', 3, '00:53:00', 802),
-- Black Mirror-Capitulo 3 de las 5 temporadas
	('BlackP03', 'Toda la historia de ti', 3,'00:49:00', 901), ('BlackS03', ' El momento de Waldo', 3, '00:43:00', 902), ('BlackT03', 'Cállate y baila', 3, '00:52:00', 903),
    ('BlackC03', 'Cocodrilo', 3, '00:59:00', 904), ('BlackQ03', 'Rachel, Jack y Ashley también', 3, '01:07:00', 905),
-- La casa de papel-Capitulo 1, 2 y 3 de las 2 temporadas
	('PapelP01', 'Haz lo planeado', 1,'00:47:00', 1001), ('PapelP02', 'Negligencia letal', 2, '00:47:00', 1001), ('PapelP03', 'fallo de encendido', 3, '00:47:00', 1001),
    ('PapelS01', 'Estamos de vuelta', 1, '00:47:00', 1002), ('PapelS02', 'Aikido', 2, '00:47:00', 1002), ('PapelS03', '48 metros bajo tierra', 3, '00:47:00', 1002);
    
insert into Categoria_Series (FK_IdCate, FK_IdSeries) values
	(006, 2001), (008, 2001), (021, 2001),
    (008, 2002), (021, 2002), (016, 2002), (019, 2002),
    (008, 2003), (21, 2003), (16, 2003), (19, 2003),
    (008, 2004), (020, 2004), (001, 2004), (022, 2004), (002, 2004),
    (008, 2005), (020, 2005), (021, 2005),
    (006, 2007), (008, 2007),
    (008, 2008), (020, 2008), (021, 2008), (019, 2008), (016, 2008),
    (008, 2009), (019, 2009), (016, 2009);
    
insert into Categoria_Peliculas (FK_IdPeli, FK_IdCate) values
	(1001, 002), (1001, 003), (1001, 005), (1001, 006), (1001, 014),
    (1002, 008),
    (1003, 001), (1003, 002), (1003, 016),
    (1005, 001), (1005, 002), (1005, 006), (1005, 022),
    (1006, 001), (1006, 002), (1006, 019), (1006, 016),
    (1007, 016), (1007, 008), (1007, 002),
    (1009, 016), (1009, 015), (1009, 008),
    (1010, 002), (1010, 003), (1010, 006), (1010, 005),
    (1011, 001), (1011, 005), (1011, 020), (1011, 018), (1011, 022);

insert into Peliculas_Perfil (FK_IdPeli, FK_IdPer) values
	(1001, 01), (1007, 01), (1003, 01),
    (1009, 02), (1010, 02), (1001, 02), (1005, 02),
    (1002, 03), (1003, 03), (1006, 03), (1008, 03), (1004, 03), (1009, 03), (1011, 03),
    (1009, 04), (1005, 04), (1008, 04), (1002, 04),
    (1004, 05), (1007, 05), (1001, 05), (1009, 05), (1008, 05), (1006, 05),
    (1011, 06), (1008, 06), (1009, 06),
    (1003, 07), (1005, 07), (1008, 07), (1004, 07), (1006, 07),
    (1008, 08), (1004, 08),
    (1007, 09), (1009, 09), (1001, 09), (1002, 09), (1011, 09), (1008, 09), (1006, 09),
    (1005, 10), (1008, 10), (1011, 10), (1009, 10),
    (1008, 11), (1003, 11), (1004, 11),
    (1006, 12), 
    (1004, 13), (1001, 13), (1005, 13), (1007, 13),
    (1009, 14), (1008, 14),
    (1011, 15), (1002, 15), (1003, 15), (1009, 15), (1008, 15),
    (1011, 16), (1004, 16), (1009, 16),
    (1011, 17), (1007, 17), (1009, 17), (1005, 17), (1008, 17), (1006, 17),
    (1007, 18), (1011, 18), (1009, 18), (1008, 18),
    (1011, 19), (1004, 19), (1009, 19), (1008, 19), (1006, 19),
    (1002, 20), (1008, 20), (1006, 20), 
    (1011, 21), (1006, 21), (1008, 21), (1009, 21),
    (1011, 22), (1010, 22), (1006, 22), (1008, 22), (1009, 22),
    (1011, 23), (1009, 23), (1004, 23), (1007, 23), (1008, 23), (1006, 23),
    (1006, 24), (1011, 24), (1004, 24), (1008, 24), (1009, 24),
    (1011, 25), (1001, 25), (1009, 25), (1008, 25), 
    (1001, 26), (1009, 26), (1006, 26), (1011, 26), (1004, 26), (1008, 26), (1002, 26),
    (1009, 27), (1001, 27), (1008, 27),
    (1006, 28), (1002, 28),
    (1011, 29), (1010, 29), (1008, 29), (1009, 29),
    (1011, 30), (1009, 30), (1001, 30), (1002, 30), (1008, 30),
    (1009, 31), (1007, 31), (1008, 31), (1006, 31),
    (1011, 32), (1003, 32), (1002, 32), (1009, 32), (1008, 32),
    (1009, 33), (1004, 33), (1008, 33),
    (1010, 34), (1008, 34), (1007, 34), (1002, 34), (1003, 34), (1006, 34),
    (1011, 35), (1004, 35), (1008, 35),(1009, 35),
    (1002, 36), (1006, 36), (1001, 36), (1008, 36), (1009, 36),
    (1002, 37), (1008, 37), (1004, 37), (1010, 37),
    (1011, 38), (1010, 38), (1008, 38), (1009, 38),
    (1002, 39), (1006, 39), (1001, 39), (1008, 39), (1009, 39);
    
insert into Peliculas_Idioma (FK_IdPeli, FK_IdIdioma) values
	(1001, 0001), (1001, 0002), (1001, 0003), (1001, 0004), (1001, 0005), (1001, 0006), (1001, 0007),
    (1002, 0001), (1002, 0002), (1002, 0003), (1002, 0004), (1002, 0005), (1002, 0006), (1002, 0007),
    (1003, 0001), (1003, 0002), (1003, 0003), (1003, 0004), (1003, 0005), (1003, 0006), (1003, 0007), 
    (1004, 0001), (1004, 0002), (1004, 0003), (1004, 0004), (1004, 0005), (1004, 0006), (1004, 0007),
    (1005, 0001), (1005, 0002), (1005, 0003), (1005, 0004), (1005, 0005), (1005, 0006), (1005, 0007),
    (1006, 0001), (1006, 0002), (1006, 0003), (1006, 0004), (1006, 0005), (1006, 0006), (1006, 0007), 
    (1007, 0001), (1007, 0002), (1007, 0003), (1007, 0004), (1007, 0005), (1007, 0006), (1007, 0007),
    (1008, 0001), (1008, 0002), (1008, 0003), (1008, 0004), (1008, 0005), (1008, 0006), (1008, 0007),
    (1009, 0001), (1009, 0002), (1009, 0003), (1009, 0004), (1009, 0005), (1009, 0006), (1009, 0007),
    (1010, 0001), (1010, 0002), (1010, 0003), (1010, 0004), (1010, 0005), (1010, 0006), (1010, 0007),
    (1011, 0001), (1011, 0002), (1011, 0003), (1011, 0004), (1011, 0005), (1011, 0006), (1011, 0007);
    
insert into Capitulos_Idioma (FK_IdCap, FK_IdIdioma) values
	('HouseP01',0001), ('HouseP01',0002), ('HouseP01',0003), ('HouseP01',0004), ('HouseP01',0005), ('HouseP01',0006), ('HouseP01',0007),
    ('HouseS01',0001), ('HouseS01',0002), ('HouseS01',0003), ('HouseS01',0004), ('HouseS01',0005), ('HouseS01',0006), ('HouseS01',0007),
    ('HouseT01',0001), ('HouseT01',0002), ('HouseT01',0003), ('HouseT01',0004), ('HouseT01',0005), ('HouseT01',0006), ('HouseT01',0007),
    ('HouseC01',0001), ('HouseC01',0002), ('HouseC01',0003), ('HouseC01',0004), ('HouseC01',0005), ('HouseC01',0006), ('HouseC01',0007),
    ('HouseQ01',0001), ('HouseQ01',0002), ('HouseQ01',0003), ('HouseQ01',0004), ('HouseQ01',0005), ('HouseQ01',0006), ('HouseQ01',0007),
    ('AmericanP02',0001), ('AmericanP02',0002), ('AmericanP02',0003), ('AmericanP02',0004), ('AmericanP02',0005), ('AmericanP02',0006), ('AmericanP02',0007),
    ('AmericanS02',0001), ('AmericanS02',0002), ('AmericanS02',0003), ('AmericanS02',0004), ('AmericanS02',0005), ('AmericanS02',0006), ('AmericanS02',0007),
    ('AmericanT02',0001), ('AmericanT02',0002), ('AmericanT02',0003), ('AmericanT02',0004), ('AmericanT02',0005), ('AmericanT02',0006), ('AmericanT02',0007),
    ('AmericanC02',0001), ('AmericanC02',0002), ('AmericanC02',0003), ('AmericanC02',0004), ('AmericanC02',0005), ('AmericanC02',0006), ('AmericanC02',0007),
    ('AmericanQ02',0001), ('AmericanQ02',0002), ('AmericanQ02',0003), ('AmericanQ02',0004), ('AmericanQ02',0005), ('AmericanQ02',0006), ('AmericanQ02',0007),
    ('StrangerP03',0001), ('StrangerP03',0002), ('StrangerP03',0003), ('StrangerP03',0004), ('StrangerP03',0005), ('StrangerP03',0006), ('StrangerP03',0007),
    ('StrangerS03',0001), ('StrangerS03',0002), ('StrangerS03',0003), ('StrangerS03',0004), ('StrangerS03',0005), ('StrangerS03',0006), ('StrangerS03',0007),
    ('StrangerT03',0001), ('StrangerT03',0002), ('StrangerT03',0003), ('StrangerT03',0004), ('StrangerT03',0005), ('StrangerT03',0006), ('StrangerT03',0007),
    ('StrangerC03',0001), ('StrangerC03',0002), ('StrangerC03',0003), ('StrangerC03',0004), ('StrangerC03',0005), ('StrangerC03',0006), ('StrangerC03',0007),
    ('ArrowP04',0001), ('ArrowP04',0002), ('ArrowP04',0003), ('ArrowP04',0004), ('ArrowP04',0005), ('ArrowP04',0006), ('ArrowP04',0007),
    ('ArrowS04',0001), ('ArrowS04',0002), ('ArrowS04',0003), ('ArrowS04',0004), ('ArrowS04',0005), ('ArrowS04',0006), ('ArrowS04',0007),
    ('ArrowT04',0001), ('ArrowT04',0002), ('ArrowT04',0003), ('ArrowT04',0004), ('ArrowT04',0005), ('ArrowT04',0006), ('ArrowT04',0007),
    ('ArrowC04',0001), ('ArrowC04',0002), ('ArrowC04',0003), ('ArrowC04',0004), ('ArrowC04',0005), ('ArrowC04',0006), ('ArrowC04',0007),
    ('ArrowQ04',0001), ('ArrowQ04',0002), ('ArrowQ04',0003), ('ArrowQ04',0004), ('ArrowQ04',0005), ('ArrowQ04',0006), ('ArrowQ04',0007),
    ('SherlockP01',0001), ('SherlockP01',0002), ('SherlockP01',0003), ('SherlockP01',0004), ('SherlockP01',0005), ('SherlockP01',0006), ('SherlockP01',0007),
    ('SherlockP02',0001), ('SherlockP02',0002), ('SherlockP02',0003), ('SherlockP02',0004), ('SherlockP02',0005), ('SherlockP02',0006), ('SherlockP02',0007),
    ('SherlockP03',0001), ('SherlockP03',0002), ('SherlockP03',0003), ('SherlockP03',0004), ('SherlockP03',0005), ('SherlockP03',0006), ('SherlockP03',0007),
    ('SherlockS01',0001), ('SherlockS01',0002), ('SherlockS01',0003), ('SherlockS01',0004), ('SherlockS01',0005), ('SherlockS01',0006), ('SherlockS01',0007),
    ('SherlockS02',0001), ('SherlockS02',0002), ('SherlockS02',0003), ('SherlockS02',0004), ('SherlockS02',0005), ('SherlockS02',0006), ('SherlockS02',0007),
    ('BreakingP07',0001), ('BreakingP07',0002), ('BreakingP07',0003), ('BreakingP07',0004), ('BreakingP07',0005), ('BreakingP07',0006), ('BreakingP07',0007),
    ('BreakingS07',0001), ('BreakingS07',0002), ('BreakingS07',0003), ('BreakingS07',0004), ('BreakingS07',0005), ('BreakingS07',0006), ('BreakingS07',0007),
    ('BreakingT07',0001), ('BreakingT07',0002), ('BreakingT07',0003), ('BreakingT07',0004), ('BreakingT07',0005), ('BreakingT07',0006), ('BreakingT07',0007),
    ('BreakingC07',0001), ('BreakingC07',0002), ('BreakingC07',0003), ('BreakingC07',0004), ('BreakingC07',0005), ('BreakingC07',0006), ('BreakingC07',0007),
    ('BreakingQ07',0001), ('BreakingQ07',0002), ('BreakingQ07',0003), ('BreakingQ07',0004), ('BreakingQ07',0005), ('BreakingQ07',0006), ('BreakingQ07',0007),
    ('FriendsP08',0001), ('FriendsP08',0002), ('FriendsP08',0003), ('FriendsP08',0004), ('FriendsP08',0005), ('FriendsP08',0006), ('FriendsP08',0007),
    ('FriendsS08',0001), ('FriendsS08',0002), ('FriendsS08',0003), ('FriendsS08',0004), ('FriendsS08',0005), ('FriendsS08',0006), ('FriendsS08',0007),
    ('FriendsT08',0001), ('FriendsT08',0002), ('FriendsT08',0003), ('FriendsT08',0004), ('FriendsT08',0005), ('FriendsT08',0006), ('FriendsT08',0007),
    ('FriendsC08',0001), ('FriendsC08',0002), ('FriendsC08',0003), ('FriendsC08',0004), ('FriendsC08',0005), ('FriendsC08',0006), ('FriendsC08',0007),
    ('FriendsQ08',0001), ('FriendsQ08',0002), ('FriendsQ08',0003), ('FriendsQ08',0004), ('FriendsQ08',0005), ('FriendsQ08',0006), ('FriendsQ08',0007),
    ('DarkP01',0001), ('DarkP01',0002), ('DarkP01',0003), ('DarkP01',0004), ('DarkP01',0005), ('DarkP01',0006), ('DarkP01',0007),
    ('DarkP02',0001), ('DarkP02',0002), ('DarkP02',0003), ('DarkP02',0004), ('DarkP02',0005), ('DarkP02',0006), ('DarkP02',0007),
    ('DarkP03',0001), ('DarkP03',0002), ('DarkP03',0003), ('DarkP03',0004), ('DarkP03',0005), ('DarkP03',0006), ('DarkP03',0007),
    ('DarkS01',0001), ('DarkS01',0002), ('DarkS01',0003), ('DarkS01',0004), ('DarkS01',0005), ('DarkS01',0006), ('DarkS01',0007),
    ('DarkS02',0001), ('DarkS02',0002), ('DarkS02',0003), ('DarkS02',0004), ('DarkS02',0005), ('DarkS02',0006), ('DarkS02',0007),
    ('DarkS03',0001), ('DarkS03',0002), ('DarkS03',0003), ('DarkS03',0004), ('DarkS03',0005), ('DarkS03',0006), ('DarkS03',0007),
    ('BlackP03',0001), ('BlackP03',0002), ('BlackP03',0003), ('BlackP03',0004), ('BlackP03',0005), ('BlackP03',0006), ('BlackP03',0007),
    ('BlackS03',0001), ('BlackS03',0002), ('BlackS03',0003), ('BlackS03',0004), ('BlackS03',0005), ('BlackS03',0006), ('BlackS03',0007),
    ('BlackT03',0001), ('BlackT03',0002), ('BlackT03',0003), ('BlackT03',0004), ('BlackT03',0005), ('BlackT03',0006), ('BlackT03',0007),
    ('BlackC03',0001), ('BlackC03',0002), ('BlackC03',0003), ('BlackC03',0004), ('BlackC03',0005), ('BlackC03',0006), ('BlackC03',0007),
    ('BlackQ03',0001), ('BlackQ03',0002), ('BlackQ03',0003), ('BlackQ03',0004), ('BlackQ03',0005), ('BlackQ03',0006), ('BlackQ03',0007),
    ('PapelP01',0001), ('PapelP01',0002), ('PapelP01',0003), ('PapelP01',0004), ('PapelP01',0005), ('PapelP01',0006), ('PapelP01',0007),
    ('PapelP02',0001), ('PapelP02',0002), ('PapelP02',0003), ('PapelP02',0004), ('PapelP02',0005), ('PapelP02',0006), ('PapelP02',0007),
    ('PapelP03',0001), ('PapelP03',0002), ('PapelP03',0003), ('PapelP03',0004), ('PapelP03',0005), ('PapelP03',0006), ('PapelP03',0007),
    ('PapelS01',0001), ('PapelS01',0002), ('PapelS01',0003), ('PapelS01',0004), ('PapelS01',0005), ('PapelS01',0006), ('PapelS01',0007),
    ('PapelS02',0001), ('PapelS02',0002), ('PapelS02',0003), ('PapelS02',0004), ('PapelS02',0005), ('PapelS02',0006), ('PapelS02',0007),
    ('PapelS03',0001), ('PapelS03',0002), ('PapelS03',0003), ('PapelS03',0004), ('PapelS03',0005), ('PapelS03',0006), ('PapelS03',0007);

insert into Series_Perfil (FK_IdSerie, FK_IdPer) values
	(2001, 01), (2008, 01), (2004, 01), (2010, 01),
    (2007, 02), (2002, 02), (2006, 02),
    (2003, 03), (2010, 03), (2008, 03), (2002, 03), (2005, 03),
    (2004, 04), (2001, 04),
    (2008, 05), (2002, 05), (2003, 05),(2007, 05),
    (2009, 06), (2003, 06), (2001, 06), (2002, 06), (2010, 06), (2008, 06),
    (2005, 07), (2002, 07), (2010, 07), (2007, 07), (2004, 07), (2008, 07), (2006, 07),
    (2008, 08), (2001, 08), (2009, 08),
    (2010, 09), (2004, 09), (2009, 09), (2006, 09),
    (2002, 10), (2003, 10), (2010, 10), (2001, 10), (2008, 10),
    (2004, 11), (2007, 11),
    (2010, 12), (2002, 12), (2008, 12), (2003, 12),
    (2010, 13), (2004, 13), (2009, 13),(2001, 13),(2007, 13),
    (2003, 14), (2008, 14), (2007, 14), (2010, 14),
    (2010, 15), (2002, 15),(2003, 15),
    (2007, 16),
    (2004, 17), (2010, 17), (2001, 17), (2002, 17), (2009, 17), (2006, 17),
    (2008, 18), (2005, 18), (2010, 18),
    (2009, 19), (2007, 19), (2004, 19), (2010, 19),
    (2010, 20), (2001, 20), (2003, 20), (2009, 20), (2002, 20),
    (2006, 21), (2009, 21), 
    (2002, 22), (2010, 22), (2001, 22), (2009, 22), (2003, 22), (2008, 22),
    (2009, 23), (2005, 23), (2010, 23),
    (2010, 24), (2004, 24), (2008, 24), (2006, 24),
    (2007, 25), (2010, 25), (2002, 25), (2008, 25), (2005, 25),
    (2010, 26), (2003, 26), (2009, 26),
    (2008, 27), (2002, 27), (2006, 27),
    (2009, 28), (2004, 28), (2010, 28), (2002, 28),
    (2001, 29), (2010, 29), (2008, 29), (2006, 29), (2002, 29),
    (2010, 30), (2004, 30),
    (2005, 31),
    (2010, 32), (2008, 32), (2002, 32), (2007, 32),
    (2002, 33), (2010, 33), (2001, 33), (2004, 33), (2003, 33), (2007, 33),
    (2010, 34), (2009, 34), (2005, 34),
    (2010, 35), (2001, 35), (2007, 35), (2002, 35), (2009, 35),
    (2007, 36), (2005, 36), (2010, 36), (2009, 36), (2001, 36), (2008, 36), (2006, 36),
    (2003, 37), (2007, 37), (2002, 37), (2004, 37),
    (2007, 38), (2002, 38), (2006, 38),
    (2001, 39);