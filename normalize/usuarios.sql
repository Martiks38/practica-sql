-- La idea que me propuse, para práctica propuesta por mi mismo, fue normalizar la tabla Usuarios Mi idea es practicar la normalización de una tabla y hacer los primeros tres enunciados del curso. Estos están en el archivo practica.sql.

create database Normalize;

use Normalize;

create table UsuariosNormalized(
  id int not null auto_increment,
  users varchar(20) not null,
  name varchar(20) not null,
  gender_id int not null,
  level int not null,
  email varchar(50) not null,
  phone varchar(20) not null,
  brand_id int not null,
  company_id int not null,
  balance int not null,
  active boolean not null,
  primary key(id),
  foreign key(gender_id) references gender(id),
  foreign key(brand_id) references brand(id),
  foreign key(company_id) references company(id)
);

insert into UsuariosNormalized (users, name, gender_id, level, email, phone, brand_id, company_id, balance, active)
values
('BRE2271','BRENDA', 2, 2,'brenda@live.com','655-330-5736', 1, 1,100,1),
('OSC4677','OSCAR', 1, 3,'oscar@gmail.com','655-143-4181', 2, 2,0,1),
('JOS7086','JOSE', 1, 3,'francisco@gmail.com','655-143-3922', 3, 3,150,1),
('LUI6115','LUIS', 1, 0,'enrique@outlook.com','655-137-1279', 1, 2,50,1),
('LUI7072','LUIS', 1, 1,'luis@hotmail.com','655-100-8260', 3, 1,50,0),
('DAN2832','DANIEL', 1, 0,'daniel@outlook.com','655-145-2586', 4, 4,100,1),
('JAQ5351','JAQUELINE', 2, 0,'jaqueline@outlook.com','655-330-5514', 5, 5,0,1),
('ROM6520','ROMAN', 1, 2,'roman@gmail.com','655-330-3263', 2, 1,50,1),
('BLA9739','BLAS', 1, 0,'blas@hotmail.com','655-330-3871', 2, 4,100,1),
('JES4752','JESSICA', 2, 1,'jessica@hotmail.com','655-143-6861', 1, 2,500,1),
('DIA6570','DIANA', 2, 1,'diana@live.com','655-143-3952', 4, 4,100,0),
('RIC8283','RICARDO', 1, 2,'ricardo@hotmail.com','655-145-6049', 6, 1,150,1),
('VAL6882','VALENTINA', 2, 0,'valentina@live.com','655-137-4253', 5, 6,50,0),
('BRE8106','BRENDA', 2, 3,'brenda2@gmail.com','655-100-1351', 6, 7,150,1),
('LUC4982','LUCIA', 2, 3,'lucia@gmail.com','655-145-4992', 5, 1,0,1),
('JUA2337','JUAN', 1, 0,'juan@outlook.com','655-100-6517', 1, 5,0,0),
('ELP2984','ELPIDIO', 1, 1,'elpidio@outlook.com','655-145-9938', 6, 3,500,1),
('JES9640','JESSICA', 2, 3,'jessica2@live.com','655-330-5143', 4, 1,200,1),
('LET4015','LETICIA', 2, 2,'leticia@yahoo.com','655-143-4019', 5, 4,100,1),
('LUI1076','LUIS', 1, 3,'luis2@live.com','655-100-5085', 4, 4,150,1),
('HUG5441','HUGO', 1, 2,'hugo@live.com','655-137-3935', 6, 6,500,1);

-- 1. Listar los nombres de los usuarios
select * from usuariosnormalized;

-- 2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
select max(balance) Max_Saldo_Mujer from usuariosnormalized where (select genero from gender where id = gender_id) = 'M';

-- 3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
select name, phone from usuariosnormalized where (select name from brand where brand_id = id) in ('NOKIA', 'BLACKBERRY', 'SONY');
