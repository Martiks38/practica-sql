create table company(
  id int not null auto_increment,
  name varchar(20) not null,
  primary key(id)
);

insert into company (name)
values
  ('IUSACELL'),
  ('TELCEL'),
  ('MOVISTAR'),
  ('UNEFON'),
  ('AXEL'),
  ('AT&T'),
  ('NEXTEL');