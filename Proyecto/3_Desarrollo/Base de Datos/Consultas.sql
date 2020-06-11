-- 1-Instructores y su tipo de vinculación (Nombres, Apellidos, Tipo de vinculación)
-- 2-Instructores y su especialidad (Nombres, Apellidos, Tipo de especialidad)
-- 3-Fichas y aprendices asociados (Ficha, Grupo, Nombres, Apellidos)
-- 4-Usuarios y rol (Nombres, Apellidos, Rol) 
-- 5-Tipo de documento, usuarios y rol (Tipo de documento, Número de identificación, Nombres, Apellidos, Rol)
-- 6-Fichas, competencias, resultados de aprendizaje (Ficha, Competencias, Resultados de aprendizaje)
-- 7-Elegir una ficha en específico y los aprendices asociados a esa ficha (Ficha, Grupo, Nombres, Apellidos)
-- 8-Cantidad de usuarios inscritos (Número de usuarios)
-- 9-Fichas y jornada (Ficha, Jornada)
-- 10-Fichas, trimestres, jornada (Ficha, Trimestres, Jornada)
-- 11-Aprendices con tipo de documento 'T.I.' (Tipo de documento, Nombres, Apellidos)
-- 12-Fichas con jornada fines de semana (Ficha, Jornada, Siglas de jornada) 


use GeniusAssistant2;

-- 1. Instructores y su tipo de vinculación (Nombres, Apellidos, Tipo de vinculación)

select Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido', TipVin as 'Tipo Vinculación' 
from GeniusAssistant2.Usuario U join GeniusAssistant2.Instructor I on U.NumDoc = I.FK_NumDoc and U.FK_IdTipDoc = I.FK_IdTipDoc join GeniusAssistant2.Vinculacion V 
on I.FK_IdVin = V.IdVin order by Nom1;

-- 2-Instructores y su especialidad (Nombres, Apellidos, Tipo de especialidad)

SELECT Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido', NomEspecialidad as 'Tipo de Especialidad' 
from Usuario U join Instructor I on U.NumDoc = I.FK_NumDoc
join Especialidad E on E.IdEspecialidad = I.FK_IdEspecialidad order by Nom1;

-- 3-Fichas y aprendices asociados (Ficha, Grupo, Nombres, Apellidos)

SELECT NumFicha as 'Ficha', IdGrupo as 'Grupo', Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido' 
FROM GeniusAssistant2.Ficha F join GeniusAssistant2.Grupo G on F.FK_IdGrupo = G.IdGrupo 
join GeniusAssistant2.Usuario U join GeniusAssistant2.Aprendiz A on U.NumDoc = A.FK_NumDoc and U.FK_IdTipDoc = A.FK_IdTipDoc
join GeniusAssistant2.Aprendiz_Ficha A_F on A.FK_NumDoc = A_F.FK_NumDoc and A.FK_IdTipDoc = A_F.FK_IdTipDoc and F.NumFicha = A_F.FK_NumFicha and F.FK_IdGrupo = A_F.FK_IdGrupo
order by NumFicha; 

-- 4-Usuarios y rol (Nombres, Apellidos, Rol) 

select Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido', NomRol as Rol 
from GeniusAssistant2.Usuario U join GeniusAssistant2.Rol R 
on U.FK_IdRol = R.IdRol order by Nom1;

-- 5-Tipo de documento, usuarios y rol (Tipo de documento, Número de identificación, Nombres, Apellidos, Rol)

select TipDoc as 'Tipo Documenrto',NumDoc as 'Numero Documento',Nom1 as 'Primer nombre',Nom2 as 'Segundo Nombre',Ape1 as 'Primer Apellido',Ape2 as 'Segundo Apellido',NomRol as Rol
from GeniusAssistant2.TipoDocumento TD join GeniusAssistant2.Usuario U on TD.IdTipDoc = U.FK_IdTipDoc
join GeniusAssistant2.Rol R on R.IdRol = U.FK_IdRol ORDER BY TipDoc;

-- 6-Programa, competencias, resultados de aprendizaje (Programa, Competencias, Resultados de aprendizaje)

SELECT NomProg as 'Programa', DesComp as 'Competencia', DesR_A as 'Resultado de aprendizaje' 
from GeniusAssistant2.Programa p join GeniusAssistant2.Competencia c 
join GeniusAssistant2.Programa_Competencia P_C on p.IdProg = P_C.FK_IdProg and c.IdComp = P_C.FK_IdComp
join GeniusAssistant2.Res_Aprendizaje R_A join GeniusAssistant2.Competencia_Res_Aprendizaje C_RA on C_RA.FK_IdComp = c.IdComp and R_A.IdR_A = C_RA.FK_IdR_A;

-- 7-Elegir una ficha en específico y los aprendices asociados a esa ficha (Ficha, Grupo, Nombres, Apellidos)

SELECT NumFicha as 'Ficha', IdGrupo as 'Grupo', Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido' 
FROM GeniusAssistant2.Ficha F join GeniusAssistant2.Grupo G on F.FK_IdGrupo = G.IdGrupo 
join GeniusAssistant2.Usuario U join GeniusAssistant2.Aprendiz A on U.NumDoc = A.FK_NumDoc and U.FK_IdTipDoc = A.FK_IdTipDoc
join GeniusAssistant2.Aprendiz_Ficha A_F on A.FK_NumDoc = A_F.FK_NumDoc and A.FK_IdTipDoc = A_F.FK_IdTipDoc and F.NumFicha = A_F.FK_NumFicha and F.FK_IdGrupo = A_F.FK_IdGrupo
where NumFicha = 1963872 order by NumFicha;

-- 8-Cantidad de usuarios inscritos (Número de usuarios)

SELECT count(Nom1) as 'Cantidad de usuarios' from GeniusAssistant2.Usuario;

 -- 9-Fichas y jornada (Ficha, Jornada)

select NumFicha as 'Ficha', NomJorn as 'Jornada'
from Ficha F join Jornada J on F.FK_IdJorn = J.IdJorn
order by NumFicha;


-- 10-Fichas, trimestres, jornada (Ficha, Trimestres, Jornada)
 
select NumFicha as 'Ficha', NomTrim as 'Nombre Trimestre', NomJorn as 'Nombre Jornada'
from GeniusAssistant2.Ficha F join GeniusAssistant2.Trimestre T on F.FK_IdTrim = T.IdTrim 
join  GeniusAssistant2.Jornada J on F.FK_IdJorn = J.IdJorn order by Ficha;

-- 11-Aprendices con tipo de documento 'T.I.' (Tipo de documento, Nombres, Apellidos)

 SELECT TipDoc as 'Tipo de Documento', Nom1 as 'Primer Nombre', Nom2 as 'Segundo Nombre', Ape1 as 'Primer Apellido', Ape2 as 'Segundo Apellido'
from GeniusAssistant2.Aprendiz a join GeniusAssistant2.Usuario u on u.NumDoc = a.FK_NumDoc and u.FK_IdTipDoc = a.FK_IdTipDoc
join GeniusAssistant2.TipoDocumento TD on TD.IdTipDoc = u.FK_IdTipDoc
where IdTipDoc = 'TD03';

-- 12-Fichas con jornada fines de semana (Ficha, Jornada, Siglas de jornada) 

SELECT NumFicha as 'Ficha', NomJorn as 'Jornada', SiglasJorn as 'Siglas de Jornada'
from Ficha f join Jornada j on F.FK_IdJorn = J.IdJorn where IdJorn = 'J03' order by NomJorn; 