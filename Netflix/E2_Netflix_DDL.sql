drop database Eje_Netflix;
create database Eje_Netflix;
use Eje_Netflix;

create table TipDoc(
	IdDoc varchar(10) not null,
    Siglas varchar(5) not null,
    NomTipDoc varchar(30) not null,
    primary key (IdDoc)
);
    
create table Rol(
	IdRol int not null,
    NomRol varchar(20) not null,
    primary key (IdRol)
);

create table Plan(
	IdPlan int not null,
    NomPlan varchar(30) not null,
    Costo int not null,
    CaracPlan text not null,
    primary key (IdPlan)
);

create table Tip_Pago(
	IdTipPago int not null,
    NomPago varchar(40) not null,
    primary key (IdTipPago)
);

create table Categoria(
	IdCate int not null,
    NomCate varchar(30) not null,
    primary key (IdCate)
);

create table Idioma(
	IdIdioma int not null,
    NomIdioma varchar(15) not null,
    primary key (IdIdioma)
);

create table Peliculas(
	IdPeli int not null,
	NomPeli varchar(110) not null,
    Duracion time not null,
    AñoEst year(4) not null,
    Sinopsis text not null,
    Estado tinyint not null,
    primary key (IdPeli)
);

create table Series(
	IdSerie int not null,
    NomSerie varchar(110) not null,
    NumTemp tinyint not null,
    AñoEst year(4) not null,
    Sinopsis text not null,
    Calificacion float not null,
    Estado tinyint not null,
    primary key (IdSerie)
);

create table Servidor(
	IdServ int not null,
    NomServ varchar(50) not null,
    primary key (IdServ)
);

create table Log_Error(
	IdError tinyint not null,
    DesErro varchar(210) not null,
    FechaError datetime not null,
    primary key (IdError)
);

create table Usuario(
	NumDoc varchar(12) not null,
    Nom1 varchar(20) not null,
    Nom2 varchar(20),
    Ape1 varchar(20) not null,
    Ape2 varchar(20),
    Email varchar(80) not null,
    Contra varchar(30) not null,
    Fk_IdDoc varchar(10) not null,
    FK_IdRol int not null,
    FK_IdPlan int not null
);

alter table Usuario add constraint FK_Usuario_TipDoc foreign key (FK_IdDoc) references TipDoc (IdDoc) on update cascade;
alter table Usuario add primary key (NumDoc, FK_IdDoc); 
alter table Usuario add constraint FK_Usuario_Rol foreign key (FK_IdRol) references Rol (IdRol) on update cascade;
alter table Usuario add constraint FK_Usuario_Plan foreign key (FK_IdPlan) references Plan (IdPlan) on update cascade;

create table Perfil(
	IdPer int not null,
    NomPer varchar(20) not null,
    Avatar blob not null,
    FK_NumDoc varchar(12) not null,
    FK_IdDoc varchar(10) not null,
    primary key (IdPer)
);

alter table Perfil add constraint FK_Perfil_Usuario_TipDoc foreign key (FK_NumDoc, FK_IdDoc) references Usuario (NumDoc, FK_IdDoc) on update cascade;

create table Factura(
	IdFactura int not null,
    Fecha date not null,
    Hora time not null,
    FK_NumDoc varchar(12) not null,
    FK_IdDoc varchar(10) not null,
    FK_IdTipPago int not null,
    FK_IdPlan int not null
);

alter table Factura add constraint FK_Factura_Usuario_TipDoc foreign key (FK_NumDoc, FK_IdDoc) references Usuario (NumDoc, FK_IdDoc) on update cascade;
alter table Factura add primary key (IdFactura, FK_NumDoc, FK_IdDoc);
alter table Factura add constraint FK_Factura_TipPago foreign key (FK_IdTipPago) references Tip_Pago (IdTipPago) on update cascade;
alter table Factura add constraint FK_Factura_Plan foreign key (FK_IdPlan) references Plan (IdPlan) on update cascade;

create table Temporadas(
	IdTemp int not null,
    NumTemp tinyint not null,
    FK_IdSerie int not null,
    primary key (IdTemp)
);

alter table Temporadas add constraint FK_Temporadas_Series foreign key (FK_IdSerie) references Series (IdSerie) on update cascade;

create table Capitulos(
	IdCap int not null,
    NomCap varchar(90) not null,
    NumCap tinyint not null,
    Duracion time not null,
    FK_IdTemp int not null,
    primary key (IdCap)
);

alter table Capitulos add constraint FK_Capitulos_Temporadas foreign key (FK_IdTemp) references Temporadas (IdTemp) on update cascade;

create table Categoria_Series(
	FK_IdCate int not null,
    FK_IdSeries int not null
);

alter table Categoria_Series add constraint FK_Categoría_Serie_Categoría foreign key (FK_IdCate) references Categoria (IdCate) on update cascade;
alter table Categoria_Series add constraint FK_Categoría_Serie_Series foreign key (FK_IdSeries) references Series (IdSerie) on update cascade;
alter table Categoria_Series add primary key (FK_IdCate, FK_IdSeries);

create table Categoria_Peliculas(
	FK_IdPeli int not null,
    FK_IdCate int not null
);

alter table Categoria_Peliculas add constraint FK_Categoría_Peliculas_Categoria foreign key (FK_IdCate) references Categoria (IdCate) on update cascade;
alter table Categoria_Peliculas add constraint FK_Categoría_Peliculas_Peliculas foreign key (FK_IdPeli) references Peliculas (IdPeli) on update cascade;
alter table Categoria_Peliculas add primary key (FK_IdPeli, FK_IdCate);

create table Peliculas_Perfil(
	FK_IdPeli int not null,
    FK_IdPer int not null
);

alter table Peliculas_Perfil add constraint FK_Peliculas_Perfil_Peliculas foreign key (FK_IdPeli) references Peliculas (IdPeli) on update cascade;
alter table Peliculas_Perfil add constraint FK_Peliculas_Perfil_Perfil foreign key (FK_IdPer) references Perfil (IdPer) on update cascade;
alter table Peliculas_Perfil add primary key (FK_IdPeli, FK_IdPer);

create table Peliculas_Idioma(
	FK_IdPeli int not null,
    FK_IdIdioma int not null
);

alter table Peliculas_Idioma add constraint FK_Peliculas_Idioma_Peliculas foreign key (FK_IdPeli) references Peliculas (IdPeli) on update cascade;
alter table Peliculas_Idioma add constraint FK_Peliculas_Idioma_Idioma foreign key (FK_IdIdioma) references Idioma (IdIdioma) on update cascade;
alter table Peliculas_Idioma add primary key (FK_IdPeli, FK_IdIdioma);

create table Capitulos_Idioma(
	FK_IdCap int not null,
    FK_IdIdioma int not null
);

alter table Capitulos_Idioma add constraint FK_Capitulos_Idioma_Capitulos foreign key (FK_IdCap) references Capitulos (IdCap) on update cascade;
alter table Capitulos_Idioma add constraint FK_Capitulos_Idioma_Idioma foreign key (FK_IdIdioma) references Idioma (IdIdioma) on update cascade;
alter table Capitulos_Idioma add primary key (FK_IdCap, FK_IdIdioma);

create table Series_Perfil(
	FK_IdSerie int not null,
    FK_IdPer int not null
);

alter table Series_Perfil add constraint FK_Series_Perfil_Series foreign key (FK_IdSerie) references Series (IdSerie) on update cascade;
alter table Series_Perfil add constraint FK_Serie_Perfil_Perfil foreign key (FK_IdPer) references Perfil (IdPer) on update cascade;
alter table Series_Perfil add primary key (FK_IdSerie, FK_IdPer);