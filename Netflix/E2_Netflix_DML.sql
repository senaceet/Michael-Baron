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
    (020, 'Crimen');
    
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
    (1002, 'Django Unchained', '02:45:00', '2012', 'Con la ayuda de un cazarrecompensas alemán, un esclavo liberado se dispone a rescatar a su esposa del brutal propietario de una plantación de Mississippi.', 1), -- Drama, Western
    (1003, 'Inception', '02:28:00', '2010', 'Cobb, un ladrón experto que comete espionaje corporativo al infiltrarse en el subconsciente de sus objetivos, se le ofrece la oportunidad de recuperar su antigua vida como pago por una tarea considerada imposible: "inicio", la implantación de la idea de otra persona en el subconsciente de un objetivo.', 1), -- Action, Adventure, Science Fiction
    (1004, 'Fight Club', '02:19:00', '1999', 'Un insomne de bomba de tiempo y un vendedor de jabón resbaladizo canalizan la agresión masculina primordial en una nueva forma impactante de terapia. Su concepto se pone de moda, con "clubes de lucha" subterráneos que se forman en cada ciudad, hasta que un excéntrico se interpone y enciende una espiral fuera de control hacia el olvido.', 1), -- Drama
    (1005, 'DeadPool', '01:48:24', '2016', 'Deadpool cuenta la historia de origen del antiguo agente de las Fuerzas Especiales convertido en mercenario Wade Wilson, quien luego de ser sometido a un experimento deshonesto que lo deja con poderes curativos acelerados, adopta el alter ego Deadpool. Armado con sus nuevas habilidades y un sentido del humor oscuro y retorcido, Deadpool persigue al hombre que casi destruye su vida.', 1), -- Action, Adventure, Comedy, Superhero
    (1006, 'Avatar', '02:42:00', '2009', 'En el siglo 22, un infante de marina parapléjico es enviado a la luna Pandora en una misión única, pero se debate entre seguir órdenes y proteger una civilización alienígena.', 1), -- Action, Adventure, Fantasy, Science Fiction
    (1007, 'Interstellar', '02:49:00', '2014', 'Interestelar narra las aventuras de un grupo de exploradores que hacen uso de un agujero de gusano recién descubierto para superar las limitaciones del viaje espacial humano y conquistar las vastas distancias involucradas en un viaje interestelar.', 1), -- Science Fiction, Drama, Adventure
    (1008, 'El lobo de Wall Street', '03:00:00', '2013', 'Un corredor de bolsa de Nueva York se niega a cooperar en un gran caso de fraude de valores que involucra corrupción en Wall Street, el mundo bancario corporativo y la infiltración de la mafia. Basado en la autobiografía de Jordan Belfort.', 1), -- Comedy, Crime, Drama
    (1009, 'Pasajeros', '01:56:00', '2016', 'Una nave espacial que viaja a un planeta colonia distante y transporta a miles de personas tiene un mal funcionamiento en sus cámaras de sueño. Como resultado, dos pasajeros se despiertan 90 años antes.',1), -- Science Fiction, Romance, Drama
    (1010, 'Zootopia ', '01:49:00', '2016', 'Decidida a demostrar su valía, la oficial Judy Hopps, la primera conejita de la fuerza policial de Zootopia, aprovecha la oportunidad de resolver su primer caso, incluso si eso significa asociarse con el zorro Nick Wilde para resolver el misterio.', 1), -- Adventure, Animation, Comedy, Family
    (1011, 'Batman el caballero de la noche', '02:32:00', '2008', 'Batman eleva las apuestas en su guerra contra el crimen. Con la ayuda del teniente Jim Gordon y el fiscal de distrito Harvey Dent, Batman se propone desmantelar las organizaciones criminales restantes que plagan las calles. La asociación demuestra ser efectiva, pero pronto se encuentran presa de un reinado de caos desatado por un cerebro criminal en ascenso conocido por los aterrorizados ciudadanos de Gotham como el Joker.', 1); -- Action, Crime, Drama, Thriller, Superhero
    
insert into Series (IdSerie, NomSerie, NumTemp, AñoEst, Sinopsis, Calificacion, Estado) values
	(2001, 'House', 8, '2004', 'El Dr. Gregory House es un médico inconformista que no tiene trato con los pacientes. Si bien su comportamiento puede ser antisocial, el Dr. House prospera con el desafío de resolver los acertijos médicos que otros médicos abandonan. Junto con su selecto equipo de jóvenes expertos médicos, hará lo que sea necesario en la carrera contrarreloj para resolver el caso.', 8.7, 1), -- Comedy, Drama, Mystery
    (2002, 'American Horror Story', 9, '2011', 'Una serie de antologías centradas en diferentes personajes y ubicaciones, que incluyen una casa con un pasado asesino, un manicomio, un aquelarre de brujas, un espectáculo de monstruos, un hotel embrujado, una granja poseída, un culto, el apocalipsis y un campamento de slasher.', 8.1, 1), -- Drama, Mystery, Fantasy, Science Fiction
    (2003, 'Stranger Things', 4, '2016', 'Homenaje a los clásicos misterios sobrenaturales de los años 80, "Stranger Things" es la historia de un niño que desaparece en el pequeño pueblo de Hawkins, Indiana, sin dejar rastro en 1983. En su búsqueda desesperada, tanto sus amigos como su familia y el local el sheriff está involucrado en un enigma extraordinario: experimentos de alto secreto, terribles fuerzas paranormales y una niña muy, muy rara ...', 8.8, 1), -- Drama, Fantasy, Science Fiction, Mystery
    (2004, 'Arrow', 8, '2012', 'Después de estar abandonado durante cinco años en una isla remota y presumiblemente muerto, el multimillonario playboy Oliver Queen regresa a casa con una misteriosa agenda y un conjunto letal de nuevas habilidades que usa en una guerra contra el crimen en su ciudad natal de Starling City.', 7.7, 1), -- Drama, Mystery, Action, Crime, Superhero, Adventure
    (2005, 'Sherlock', 4, '2010', 'Sherlock Holmes and his partner Dr. John Watson solve crimes in 21st century London.', 9.1, 1), -- Drama, Crime, Mystery
    (2006, 'Breaking Bad', 5, '2008', 'Walter White, un profesor de química en la escuela secundaria con dificultades, es diagnosticado con cáncer de pulmón avanzado. Se convierte en una vida de crimen, produciendo y vendiendo metanfetamina acompañado por un ex alumno, Jesse Pinkman, con el objetivo de asegurar el futuro financiero de su familia antes de morir.', 9.3, 1), -- Drama
    (2007, 'Friends', 10, '1994', 'Rachel Green, Ross Geller, Monica Geller, Joey Tribbiani, Chandler Bing y Phoebe Buffay son todos amigos y viven el uno del otro en el corazón de la ciudad de Nueva York. En el transcurso de diez años, este grupo promedio de amigos pasa por un caos masivo, problemas familiares, romances pasados y futuros, peleas, risas, lágrimas y sorpresas mientras aprenden lo que realmente significa ser un amigo.', 8.8, 1), -- Comedy, Drama
    (2008, 'Dark', 3, '2017', 'Cuando dos niños desaparecen en una pequeña ciudad alemana, su pasado pecaminoso se expone junto con la doble vida y las relaciones fracturadas que existen entre cuatro familias mientras buscan a los niños. La serie de drama y misterio presenta un intrincado rompecabezas lleno de giros que incluye una red de personajes curiosos, todos los cuales tienen una conexión con la problemática historia de la ciudad, lo sepan o no. La historia incluye elementos sobrenaturales que se vinculan a la misma ciudad en 1986.', 8.6, 1), -- Drama, Mystery, Crime, Fantasy, Science Fiction
    (2009, 'Black Mirror', 5, '2011', 'Una serie de antología televisiva que muestra el lado oscuro de la vida y la tecnología.', 8.7, 1), -- Drama, Fantasy, Science Fiction
    (2010, 'La casa de papel', 4, 2017, 'A master stroke devised and perfected for years, planned for months and executed in a few minutes so that the chosen group of thieves who enters the National Mint and Timbre at gunpoint make the police believe that their plan has failed... And that they are besieged inside the building with no other exit than their surrender.', 8.5, 1); -- Drama, Crime
    
insert into Servidor_C (IdServ, NomServ) values
	(001, 'outlook'),
    (002, 'gmail'),
    (003, 'yahoo');
    
insert into Log_Error (IdError, DesError, FechaError) values
	(101, 'Usuario y/o contraseña incorrectos', '9999-01-01 00:00:00'),
    (102, 'No se pudo conectar con el servidor', '9999-01-01 00:00:00'),
    (103, 'El E-mail no coinside con ninguna cuenta', '9999-01-01 00:00:00');
    
insert into Usuario (NumDoc, Nom1, Nom2, Ape1, Ape2, Email, Contra, FK_IdDoc, FK_IdRol, Fk_IdPlan) values 
	('1003573235', 'Cesar', 'Esteban', 'Martinez', '', 'cesar.martinez23@gmail.com', 'cesarmb10', 'D001', 002, 002),
    ('53064501', 'Martha', '', 'Castro', 'Prada', 'mcprada@hotmail.com', 'madaju2984', 'D001', 002, 003),
    ('AM476265', 'Ana', 'Maria', 'Perez', 'Garcia', 'mariperez16@gmail.com', '16anitaperez', 'D003', 002, 003),
    ('1002462124', 'Michael', 'Daniel', 'Baron', 'Castro', 'baron.daniel242001@gmail.com', 'danielbar061117', 'D001', 001, 003),
    ('AC123456', 'Orlando', '', 'Torres', 'Cardenas', 'Orlandomillos8.0@gmail.com', 'orlando80', 'D003', 002, 001),
    ('442113', 'Edgar', 'Emanuel', 'Martinez', '', 'edgar.m24@yahoo.com', 'edgar24m', 'D002', 002, 002),
    ('90043479', 'Jhonny', 'Alexander', 'Pineda', 'Cuitiva', 'japc17@gmail.com', 'alexander69', 'D001', 001, 003),
    ('1001459332', 'Brayan', 'Danilo', 'Mora', '', 'elbrayan777@hotmail.com', 'Brayitan777mora', 'D001', 002, 002),
    ('123456', 'Wilder', 'Fernando', 'Gonzalez', 'Caro', 'fernando.gc@gmail.com', '123fer456', 'D002', 002, 001),
    ('58830093', 'Daniel', 'Alejandro', 'Sosa', '', 'danielsosita20@yahoo.com', 'teamosofia13', 'D004', 002, 003),
    ('403014', 'Delphine', 'Lorey', 'Faramus', '', 'delphine.faramus14', 'fara1224', 'D002', 002, 002),
    ('1002462124', 'Cristian', 'Camilo', 'Montenegro', 'Guayacán', 'criscamogu2002@gmail.com', 'criscata22', 'D002', 002, 003),
    ('1000364890', 'Marisol', '', 'Garcia', 'Pedroza', 'marisolpedroza678@gmail.com', 'marisol06112017', 'D004', 001, 003),
    ('AV000000', 'Claudia', 'Marcela', 'Tobon', '', 'marcetobon.87@gmail.com', 'tobon87clau', 'D003', 002, 002),
    ('AQ120039', 'Alonso', '', 'Gamboa', 'Bohorquez', 'alonsogb56@hotmail.com', 'goamboa12', 'D003', 002, 001),
    ('1004839928', 'Juan', 'Sebastian', 'Aguilar', 'Mora', 'juanprimeroa@yahoo.com', 'primeroajuan', 'D001', 002, 001),
    ('69032935', 'Linda', 'nn', 'Muñoz', 'Angarita', '', 'Lindahermosa@gmail.com', 'D001', 002, 002),
    ('2345678910', 'Andrés', 'Camilo', 'Garzón', '', 'acgarzon43@gmail.com', '43andresito08', 'D001', 002, 002),
    ('3456789102', 'Christper', '', 'Andrade', '', 'andrade.c23@hotmail.com', '12345ac', 'D001', 002, 003),
    ('4567891023', 'Samuel', '', 'Correa', 'Becerra', 'Samuelin23@gmail.com', 'sami2300', 'D002', 002, 001),
    ('5678910234', 'Karol', '', 'Gonzalez', 'Acosta', 'KarolG2015@gmail.com', 'kago123', 'D001', 002, 002);