create database Goorgoorlu;
use Goorgoorlu;

create table Admin(
   username varchar(32),
   password varchar(32),
   constraint pk_user primary key(password)
);

create table Client(

);
 #a discuter aek habib sur la structure de la table Goorgoorlukat
create table Goorgoorlukat(
    username varchar(32),
    password varchar(32),
    constraint pk_user primary key(username)
);