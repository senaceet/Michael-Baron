drop database GeniusAssistant2;
create database GeniusAssistant2;
use GeniusAssistant2;

create table TipoDocumento (
	IdTipDoc varchar(15) not null,
    SiglasDoc varchar(5) not null,
    TipDoc varchar(25) not null,
    primary key (IdTipDoc)
);

create table Especialidad (
	IdEspecialidad varchar(15) not null,
    NomEspecialidad varchar(20) not null,
    primary key (IdEspecialidad)
);

create table Grupo (
	IdGrupo varchar(15) not null,
    NumGrupo varchar (5) not null,
    primary key (IdGrupo)
);

create table Vinculacion (
	IdVin varchar(15) not null,
    TipVin varchar(40) not null,
    primary key (IdVin)
);

create table Competencia (
	IdComp varchar(15) not null,
     DesComp text not null,
    primary key (IdComp)
);

create table Res_Aprendizaje (
	IdR_A varchar(15) not null,
    DesR_A text not null,
    primary key (IdR_A)
);

create table Trimestre (
	IdTrim varchar(15) not null,
    NomTrim varchar(30) not null,
    primary key (IdTrim)
);

create table Jornada (
	IdJorn varchar(15) not null,
    NomJorn varchar (20) not null,
    SiglasJorn varchar (10) not null,
    primary key (IdJorn)
);

create table Rol (
	IdRol varchar(15) not null,
    NomRol varchar(15) not null,
    primary key (IdRol)
);

create table Programa (
	IdProg varchar(15) not null,
    NomProg varchar(110) not null,
    SiglasProg varchar(10),
    DesProg text not null,
    primary key (IdProg)
);

create table Ficha (
	NumFicha int not null,
    FechaIni date not null,
    FechaFin date not null,
    FK_IdProg varchar(15) not null,
    FK_IdTrim varchar(15) not null,
    FK_IdJorn varchar(15) not null,
    FK_IdGrupo varchar(15) not null,
    primary key (NumFicha, FK_IdGrupo)
);
alter table Ficha add constraint FK_Programa_Ficha foreign key (FK_IdProg) references Programa (IdProg) on update cascade;
alter table Ficha add constraint FK_Jornada_Ficha foreign key (FK_IdJorn) references Jornada (IdJorn) on update cascade;
alter table Ficha add constraint FK_Grupo_Ficha foreign key (FK_IdGrupo) references Grupo (IdGrupo) on update cascade;

create table Usuario (
	NumDoc varchar(15) not null,
    Nom1 varchar(20) not null,
    Nom2 varchar(20),
    Ape1 varchar(20) not null,
    Ape2 varchar(20),
    Contraseña varchar(40) not null,
    Email varchar(50) not null,
    Foto blob,
    FK_IdRol varchar(15) not null,
    FK_IdTipDoc varchar(15) not null,
    primary key (NumDoc, FK_IdTipDoc)
);
alter table Usuario add constraint FK_Usuario_TipoDocumento foreign key (FK_IdTipDoc) references TipoDocumento (IdTipDoc) on update cascade;
alter table Usuario add constraint FK_Usuario_Rol foreign key (FK_IdRol) references Rol (IdRol) on update cascade;

create table Administrador (
	FK_NumDoc varchar(15) not null,
    FK_IdTipDoc varchar(15) not null,
    primary key (FK_NumDoc, FK_IdTipDoc),
    constraint FK_Administrador_Usuario foreign key (FK_NumDoc, FK_IdTipDoc) references Usuario (NumDoc, FK_IdTipDoc) on update cascade
);

create table Aprendiz (
	FK_NumDoc varchar(15) not null,
    FK_IdTipDoc varchar(15) not null,
    primary key (FK_NumDoc, FK_IdTipDoc),
    constraint FK_Aprendiz_Usuario foreign key (FK_NumDoc, FK_IdTipDoc) references Usuario (NumDoc, FK_IdTipDoc) on update cascade
);

create table Instructor (
	FK_NumDoc varchar(15) not null,
    FK_IdTipDoc varchar(15) not null,
    FK_IdVin varchar(15)not null,
    FK_IdEspecialidad varchar(15) not null,
    primary key (FK_NumDoc, FK_IdTipDoc),
    constraint FK_Instructor_Usuario foreign key (FK_NumDoc, FK_IdTipDoc) references Usuario (NumDoc, FK_IdTipDoc) on update cascade
);
alter table Instructor add constraint FK_Instructor_Vinculacion foreign key (FK_IdVin) references Vinculacion (IdVin) on update cascade;
alter table Instructor add constraint FK_Instructor_Especialidad foreign key (FK_IdEspecialidad) references Especialidad (IdEspecialidad) on update cascade;

create table Aprendiz_Ficha (
	FK_NumDoc varchar(15) not null,
    FK_IdTipDoc varchar(15) not null,
    FK_NumFicha int not null,
    FK_IdGrupo varchar(15) not null,
    primary key (FK_Numdoc, FK_IdTipDoc, FK_NumFicha, FK_IdGrupo)
);
alter table Aprendiz_Ficha add constraint FK_Aprendiz_Ficha_Aprendiz foreign key (FK_NumDoc, FK_IdTipDoc) references Aprendiz (FK_NumDoc, FK_IdTipDoc) on update cascade;
alter table Aprendiz_Ficha add constraint FK_Aprendiz_Ficha_Ficha foreign key (FK_NumFicha, FK_IdGrupo) references Ficha (NumFicha, FK_IdGrupo) on update cascade;


create table Programa_Competencia (
	FK_IdProg varchar(15) not null,
    FK_IdComp varchar(15) not null,
    primary key (FK_IdProg, FK_IdComp)
);
alter table Programa_Competencia add constraint FK_Programa_Competencia_Programa foreign key (FK_IdProg) references Programa (IdProg) on update cascade;
alter table Programa_Competencia add constraint FK_Programa_Competencia_Competencia foreign key (FK_IdComp) references Competencia (IdComp) on update cascade;

create table Programa_Especialidad (
	FK_IdProg varchar(15) not null,
    FK_IdEspecialidad varchar(15) not null,
    primary key (FK_IdProg, FK_IdEspecialidad)
);
alter table Programa_Especialidad add constraint FK_Programa_Especialidad_Programa foreign key (FK_IdProg) references Programa (IdProg) on update cascade;
alter table Programa_Especialidad add constraint FK_Programa_Especialidad_Especialidad foreign key (FK_IdEspecialidad) references Especialidad (IdEspecialidad) on update cascade;

create table Competencia_Res_Aprendizaje (
	FK_IdComp varchar(15) not null,
    FK_IdR_A varchar(15) not null,
    primary key (FK_IdComp, FK_IdR_A)
);
alter table Competencia_Res_Aprendizaje add constraint FK_Programa_Res_Aprendizaje_Competencia foreign key (FK_IdComp) references Competencia (Idcomp) on update cascade;
alter table Competencia_Res_Aprendizaje add constraint FK_Competencia_Res_Aprendizaje_Res_Aprendizaje foreign key (FK_IdR_A) references Res_Aprendizaje (IdR_A) on update cascade;

create table LogError (
	IdError tinyint not null,
    DescError text not null,
    primary key (IdError)
);