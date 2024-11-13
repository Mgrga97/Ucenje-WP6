
use master;
go

drop database if exists sport;
go

create database sport;
go

use sport;
go

create table klub(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
osnovan datetime not null,
stadion varchar(50) not null,
predsjednik varchar(50)
drzava varchar(50)
liga int not null
);

create table utakmica(
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme datetime not null,
lokacija varchar(50),
stadion varchar(50),
domaciklub int references klub(naziv),
gostujuciklub int references klub(naziv)

);