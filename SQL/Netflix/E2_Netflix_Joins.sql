use Eje_Netflix;

-- 1
select Nom1 as 'Primer nombre', Nom2 as 'Segundo nombre', Ape1 as 'Primer apellido', Ape2 as 'Segundo apellido', Email, NomTipDoc as 'Tipo de documento', Siglas from Eje_Netflix.Usuario U join Eje_Netflix.TipDoc TD on U.FK_IdDoc = TD.IdDoc;
-- 2
select Nom1 as 'Primer nombre', Nom2 as 'Segundo nombre', Ape1 as 'Primer apellido', Ape2 as 'Segundo apellido', NomPlan as Plan, Costo from Eje_Netflix.Usuario U join Eje_Netflix.Plan P on U.FK_IdPlan = P.IdPlan;
-- 3
select Nom1 as 'Primer nombre', Nom2 as 'Segundo nombre', Ape1 as 'Primer apellido', Ape2 as 'Segundo apellido', NomPlan as Plan, NomPago as 'Tipo de pago' from Eje_Netflix.Usuario U join Eje_Netflix.Plan P on U.FK_IdPlan = P.IdPlan join Eje_Netflix.Factura F on U.NumDoc = F.FK_NumDoc and U.FK_IdDoc = F.FK_IdDoc join Eje_Netflix.Tip_Pago TP on TP.IdTipPago = F.FK_IdTipPago;
-- 4
select Nom1 as 'Primer nombre', Nom2 as 'Segundo nombre', Ape1 as 'Primer apellido', Ape2 as 'Segundo apellido', NomPlan as Plan, Costo from Eje_Netflix.Usuario U join Eje_Netflix.Plan P on U.FK_IdPlan = P.IdPlan  where IdPlan=003;
-- 5
select Nom1 as 'Primer nombre', Nom2 as 'Segundo nombre', Ape1 as 'Primer apellido', Ape2 as 'Segundo apellido', NomPlan as Plan, Costo from Eje_Netflix.Usuario U join Eje_Netflix.Plan P on U.FK_IdPlan = P.IdPlan  where IdPlan not like 003;
-- 6
select NomSerie as Serie, NomIdioma as Idioma from eje_netflix.Series join eje_netflix.Idioma;
-- 7
select NomCate as Categoría, NomSerie as Serie, AñoEst as 'Año de estreno', Calificacion as Calificación from Eje_netflix.Categoria C join Eje_Netflix.Series S join Eje_Netflix.Categoria_Series C_S on C.IdCate = C_S.FK_IdCate and C_S.FK_IdSeries = S.IdSerie;
-- 8
select NomSerie as Serie, NomCate as Categoría from Eje_Netflix.Categoria_Series C_S join Eje_netflix.Categoria C right join Eje_Netflix.Series S on C_S.FK_IdSeries = S.IdSerie and C.IdCate = C_S.FK_IdCate;
-- 9
select NomPeli as Pelicula, NomCate as Categoría from Eje_Netflix.Categoria_Peliculas C_P join Eje_netflix.Categoria C right join Eje_Netflix.Peliculas P on C_P.FK_IdPeli = P.IdPeli and C.IdCate = C_P.FK_IdCate;
-- 10
select NomSerie as Serie, Calificacion as Calificación, NumTemp as Temporada, NumCap as 'número de capítulo', NomCap as 'Nombre del capítulo' from Eje_Netflix.Series S join Eje_Netflix.Temporadas T on S.IdSerie = T.FK_IdSerie join Eje_Netflix.Capitulos C on T.IdTemp = C.FK_IdTemp;
-- 11
select NomPer as Perfil, NomSerie as Serie, NomPeli as Película from eje_netflix.Perfil P join eje_netflix.Series S join eje_netflix.Series_Perfil S_P on P.IdPer = S_P.FK_IdPer and S.IdSerie = S_P.FK_IdSerie join eje_netflix.Peliculas PE join eje_netflix.Peliculas_Perfil P_P on P.IdPer = S_P.FK_IdPer and PE.IdPeli = P_P.FK_IdPeli;