create database Goorgoorlu;

use Goorgoorlu;

create table Admin(
   username varchar(32),
   password varchar(255),
   constraint pk_user primary key(username,password)
);

create table Client(
    id int auto_increment,
    password varchar(255),
    numTel varchar(32),
    prenom varchar(32),
    nom varchar(32),
    mail varchar(50),
    localisation varchar(32),
    constraint pk_client primary key(id)
);
 #a discuter aek habib sur la structure de la table Goorgoorlukat
create table Prestataire(
    id int auto_increment,
    username varchar(32),
    password varchar(255),
    numTel varchar(32),
    nom varchar(32),
    prenom varchar(32),
    note int,
    id_profession int,
    localisation varchar(32),
    constraint pk_id primary key(id),
    constraint fk_id foreign key(id_profession) references job(id)
);

create table job(
    id int auto_increment,
    libelle varchar(32),
    constraint pk_id primary key(id)
);
#represente la table qui lie le travailleur et le job cad -> un travailleur peur effectuer un ou plusieurs travail
create table Gjob(
    id_Gg int,
    id_job int,
    constraint pk_id primary key (id_Gg,id_job),
    constraint fk_gg foreign key(id_Gg) references Prestataire(id),
    constraint fk_job foreign key(id_job) references job(id)
);
