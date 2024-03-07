alter table nauczyciele 
drop foreign key nauczyciele_ibfk_1;
alter table oceny 
drop foreign key oceny_ibfk_1;
alter table oceny 
drop foreign key oceny_ibfk_2;
alter table rodzice 
drop foreign key rodzice_ibfk_1;
alter table uczniowie 
drop foreign key uczniowie_ibfk_1;

alter table klasy drop primary key;
alter table oceny drop primary key;
alter table osoby drop primary key;
alter table przedmioty drop primary key;
alter table sale drop primary key;
alter table szkola drop primary key;