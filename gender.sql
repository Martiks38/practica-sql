create table gender(
  id int not null auto_increment,
  genero varchar(1) not null,
  primary key(id)
);

insert into gender (genero) values ('H'), ('M');