use master;
go

drop database if exists zoo;
go
--kreiram novu bazu
create database zoo;
go

use zoo;
go

create table zivotinja (
sifra int not null primary key identity(1,1),
vrsta varchar(50) not null,
ime varchar(50) not null,
djelatnik int not null primary key identity(1,1),
prostorija int,
datum int,
);