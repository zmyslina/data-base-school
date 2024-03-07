create database szkola character set UTF8MB4 collate UTF8MB4_0900_as_cs; 

create table osoby 
   (ID int, 
    IMIE varchar(25),
    Nazwisko varchar(25),
    plec varchar(20),
    data_urodzenia date,
    nr_tel int,
    primary key (ID)
   );

create table rodzice
    (ID_osoby int,
     stopien_pokrewienstwa varchar(25),
     imie varchar(20),
     nazwisko varchar(20),
     foreign key (ID_osoby) references osoby(ID)
     );

create table szkola
    (adres varchar(50),
     nazwa varchar(50),
     primary key (adres, nazwa)
     );

create table nauczyciele
    (id_osoby int,
     wykształcenie varchar(50),
     nazwisko varchar(20),
     imie varchar(20),
     foreign key (id_osoby) references osoby(ID)
     );

create table przedmioty
    (id_przedmiotu int,
     nazwa varchar(30),
     primary key (id_przedmiotu)
     );

create table sale
    (nr_sali int,
    primary key (nr_sali)
    );

create table uczniowie 
    (id_osoby int,
     imie varchar(30),
     nazwisko varchar(30),
     nr_legitymacji int,
     klasa varchar(10),
     foreign key (id_osoby) references osoby(ID)
     );

create table oceny 
    (wartosc int,
     waga int,
     data_wpisu datetime,
     data_uzyskania datetime,
     id_osoby int,
     id_przedmiotu int,
     primary key (data_wpisu),
     foreign key (id_przedmiotu) references przedmioty(id_przedmiotu),
     foreign key (id_osoby) references osoby(ID)

     );

create table klasy
     (id_klasy varchar(10),
      liczba_uczniow int,
      rok_szkolny varchar(10),
      primary key (ID_klasy)
      );