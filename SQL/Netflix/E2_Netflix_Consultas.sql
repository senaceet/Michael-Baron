use Eje_Netflix;

select Nom1 as Primer_Nombre, Nom2 as Segundo_Nombre, Ape1 as Primer_Apellido, Ape2 as Segundo_Apellido, Email from Eje_Netflix.Usuario where Nom1 like 'D%' or Nom1 like 'A%' or Nom1 like 'B%';

select AñoEst as Año_de_Estreno, NomPeli as Película from Eje_Netflix.Peliculas where AñoEst>=2000 and AñoEst<=2020;

select NomSerie as Serie, AñoEst as Año_de_Estreno from Eje_Netflix.Series where NomSerie not like 'L%';

select NomPeli as Película, AñoEst as Año_de_Estreno from Eje_Netflix.Peliculas where NomPeli like 'A%' or NomPeli like 'T%';

select NomPlan as Plan, min(Costo) as Costo, CaracPlan as Caracteristicas from Eje_Netflix.Plan;

select NomPlan as Plan, max(Costo) as Costo, CaracPlan as Caracteristicas from Eje_Netflix.Plan where Costo=(select max(costo) from Eje_Netflix.Plan);

select count(NumDoc) as Cantidad_de_usuarios from Eje_Netflix.Usuario;

select Nom1 as Primer_Nombre, Nom2 as Segundo_Nombre, Ape1 as Primer_Apellido, Ape2 as Segundo_Apellido, FK_IdPlan as Plan from Eje_Netflix.Usuario where FK_IdPlan=003;

select Nom1 as Primer_Nombre, Nom2 as Segundo_Nombre, Ape1 as Primer_Apellido, Ape2 as Segundo_Apellido, FK_IdPlan as Plan from Eje_Netflix.Usuario where FK_IdPlan=001;

select NomSerie as Serie, Calificacion from Eje_Netflix.Series where Calificacion>8.0;

select NomSerie as Serie, Calificacion from Eje_Netflix.Series where Calificacion<8.0;

select NomSerie as Serie, AñoEst as Año from Eje_Netflix.Series where AñoEst>=2010 and AñoEst<=2020;

select NomSerie as Serie, AñoEst as Año from Eje_Netflix.Series order by AñoEst asc;

select NomSerie as Serie, AñoEst as Año from Eje_Netflix.Series order by AñoEst desc;

select count(idSerie) as Cantidad_de_Series from Eje_Netflix.Series;

select NomSerie as Serie, AñoEst as Año from Eje_Netflix.Series where AñoEst not like '2018';

select NumDoc as Documento, Ape1 as Primer_apellido, Nom1 as Primer_nombre, Nom2 as Segundo_nombre from Eje_Netflix.Usuario order by Ape1 asc;

select NumDoc as Documento, Ape1 as Primer_apellido, Nom1 as Primer_nombre, Nom2 as Segundo_nombre from Eje_Netflix.Usuario order by Ape1 desc;

select NomSerie as Serie, Calificacion from Eje_Netflix.Series order by Calificacion desc;

select NomSerie as Serie, Calificacion as Calificación from Eje_Netflix.Series order by Calificacion asc;