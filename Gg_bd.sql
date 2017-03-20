create database Goorgoorlu;

use Goorgoorlu;

create table Admin(
   username varchar(32),
   password varchar(32),
   constraint pk_user primary key(password)
);

create table Client(
    id int auto_increment,
    username varchar(32),
    password varchar(32),
    numTel varchar(32),
    localisation varchar(32),
    constraint pk_client primary key(id)
);
 #a discuter aek habib sur la structure de la table Goorgoorlukat
create table Goorgoorlukat(
    id int auto_increment,
    username varchar(32),
    password varchar(32),
    numTel varchar(32),
    nom varchar(32),
    prenom varchar(32),
    note int,
    id_profession int
    localisation varchar(32),
    constraint pk_user primary key(username),
    constraint fk_id foreign key(id_profession) references job(id)
);

create table job(
    id int auto_increment,
    libelle varchar(32),
    constraint pk_id primary key(id),
);
