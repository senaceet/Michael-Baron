create database ejercicio1;
use ejercicio1;

create table Ciudad(
	CodCiu int not null,
	DesCiu varchar(40) not null,
	primary key (CodCiu)
);

create table Usuario(
	IdUsu varchar(20) not null,
    Nombre1 varchar(20) not null,
    Nombre2 varchar(20),
    Apellido1 varchar(20) not null,
    Apellido2 varchar(20),
    TelUsu bigint not null,
    FK_CodCiu int not null,
    FK_CodDoc varchar(5) not null
);

create table Documento(
	CodDoc varchar(5),
    DesDoc varchar(40),
    primary key (CodDoc)
);

alter table Usuario add foreign key (FK_CodCiu) references Ciudad (CodCiu);
alter table Usuario add foreign key (FK_CodDoc) references Documento (CodDoc);
alter table Usuario add primary key (FK_CodDoc, IdUsu); 