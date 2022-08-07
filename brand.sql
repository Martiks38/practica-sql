create table brand(
  id int not null auto_increment,
  name varchar(20) not null,
  primary key(id)
);

insert into brand (name)
values
  ('SAMSUNG'),
  ('LG'),
  ('NOKIA'),
  ('SONY'),
  ('BLACKBERRY'),
  ('MOTOROLA');