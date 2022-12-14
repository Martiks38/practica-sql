create database practicaSQL;

use practicaSQL;

create table Usuarios(
	id int not null auto_increment,
    usuarios varchar(20),
    nombre varchar(20),
    sexo varchar(1),
    nivel tinyint,
    email varchar(50),
    telefono varchar(20),
    marca varchar(20),
    compania varchar(20),
    saldo float,
    activo boolean,
    primary key(id)
);

insert into Usuarios
values
('1','BRE2271','BRENDA', 'M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR', 'H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

-- 1. Listar los nombres de los usuarios
select nombre from Usuarios;

-- 2. Calcular el saldo m??ximo de los usuarios de sexo ???Mujer???
select max(u.saldo) Max_Saldo_Mujer from Usuarios u where u.sexo = 'M';

-- 3. Listar nombre y tel??fono de los usuarios con tel??fono NOKIA, BLACKBERRY o SONY
select nombre, telefono from Usuarios where marca in ('NOKIA', 'BLACKBERRY', 'SONY');

-- 4. Contar los usuarios sin saldo o inactivos
select count(*) from Usuarios where not activo or saldo <= '0';

-- 5. Listar el login de los usuarios con nivel 1, 2 o 3
select usuarios as login from Usuarios where nivel in (1, 2, 3);

-- 6. Listar los n??meros de tel??fono con saldo menor o igual a 300
select telefono from Usuarios where saldo <= 300;

-- 7. Calcular la suma de los saldos de los usuarios de la compa????a telef??nica NEXTEL
select sum(u.saldo) as saldo_Total_User_Nextel from Usuarios u where u.compania = 'NEXTEL';

-- 8. Contar el n??mero de usuarios por compa????a telef??nica
select compania, count(*) from Usuarios group by compania;

-- 9. Contar el n??mero de usuarios por nivel
select nivel, count(*) as Usuarios_Por_Nivel from Usuarios group by nivel;

-- 10. Listar el login de los usuarios con nivel 2
select usuarios from Usuarios where nivel = 2;

-- 11. Mostrar el email de los usuarios que usan gmail
select email from Usuarios where email like '%gmail%';

-- 12. Listar nombre y tel??fono de los usuarios con tel??fono LG, SAMSUNG o MOTOROLA
select nombre, telefono from Usuarios where marca in ('LG', 'SAMSUNG', 'MOTOROLA');

-- 13. Listar nombre y tel??fono de los usuarios con tel??fono que no sea de la marca LG o SAMSUNG
select nombre, telefono from Usuarios where marca not in ('LG', 'SAMSUNG');

-- 14. Listar el login y tel??fono de los usuarios con compa????a telef??nica IUSACELL
select usuarios, telefono from Usuarios where compania = 'IUSACELL';

-- 15. Listar el login y tel??fono de los usuarios con compa????a telef??nica que no sea TELCEL
select usuarios, telefono from Usuarios where not compania = 'TELCEL';

-- 16. Calcular el saldo promedio de los usuarios que tienen tel??fono marca NOKIA
select avg(saldo) as Saldo_Promedio from Usuarios where marca = 'NOKIA';

-- 17. Listar el login y tel??fono de los usuarios con compa????a telef??nica IUSACELL o AXEL
select usuarios, telefono from Usuarios where compania in ('IUSACELL', 'AXEL');

-- 18. Mostrar el email de los usuarios que no usan yahoo
select email from Usuarios where email not like '%yahoo%';

-- 19. Listar el login y tel??fono de los usuarios con compa????a telef??nica que no sea TELCEL o IUSACELL
select usuarios, telefono from Usuarios where compania not in ('TELCEL', 'IUSACELL');

-- 20. Listar el login y tel??fono de los usuarios con compa????a telef??nica UNEFON
select usuarios, telefono from Usuarios where compania = 'UNEFON';

-- 21. Listar las diferentes marcas de celular en orden alfab??tico descendentemente
select distinct marca from Usuarios order by marca desc;

-- 22. Listar las diferentes compa????as en orden alfab??tico aleatorio
select distinct compania from Usuarios order by rand();

-- 23. Listar el login de los usuarios con nivel 0 o 2
select usuarios from Usuarios where nivel in (0, 2);

-- 24. Calcular el saldo promedio de los usuarios que tienen tel??fono marca LG
select avg(saldo) as AVG_Saldo from Usuarios where marca = 'LG';

-- 25. Listar el login de los usuarios con nivel 1 o 3
select usuarios from Usuarios where nivel in (1, 3);

-- 26. Listar nombre y tel??fono de los usuarios con tel??fono que no sea de la marca BLACKBERRY
select nombre, telefono from Usuarios where marca != 'BLACKBERRY';

-- 27. Listar el login de los usuarios con nivel 3
select usuarios from Usuarios where nivel = 3;

-- 28. Listar el login de los usuarios con nivel 0
select usuarios from Usuarios where nivel = 0;

-- 29. Listar el login de los usuarios con nivel 1
select usuarios from Usuarios where nivel = 1;

-- 30. Contar el n??mero de usuarios por sexo
select sexo, count(*) from Usuarios group by sexo;

-- 31. Listar el login y tel??fono de los usuarios con compa????a telef??nica AT&T
select usuarios, telefono from Usuarios where compania = 'AT&T';

-- 32. Listar las diferentes compa????as en orden alfab??tico descendentemente
select distinct compania from Usuarios order by compania desc;

-- 33. Listar el login de los usuarios inactivos
select usuarios from Usuarios where not activo;

-- 34. Listar los n??meros de tel??fono sin saldo
select telefono from Usuarios where saldo <= 0;

-- 35. Calcular el saldo m??nimo de los usuarios de sexo ???Hombre???
select min(saldo) as Min_Saldo from Usuarios where sexo = 'H';

-- 36. Listar los n??meros de tel??fono con saldo mayor a 300
select telefono from Usuarios where saldo > 300;

-- 37. Contar el n??mero de usuarios por marca de tel??fono
select marca, count(*) from Usuarios group by marca;

-- 38. Listar nombre y tel??fono de los usuarios con tel??fono que no sea de la marca LG
select nombre, telefono from Usuarios where marca != 'LG';

-- 39. Listar las diferentes compa????as en orden alfab??tico ascendentemente
select distinct compania from Usuarios order by compania asc;

-- 40. Calcular la suma de los saldos de los usuarios de la compa????a telef??nica UNEFON
select sum(saldo) from Usuarios where compania = 'UNEFON';

-- 41. Mostrar el email de los usuarios que usan hotmail
select email from Usuarios where email like '%hotmail%';

-- 42. Listar los nombres de los usuarios sin saldo o inactivos
select nombre from Usuarios where saldo <= 0 or not activo;

-- 43. Listar el login y tel??fono de los usuarios con compa????a telef??nica IUSACELL o TELCEL
select usuarios, telefono from Usuarios where compania in ('IUSACELL', 'TELCEL');

-- 44. Listar las diferentes marcas de celular en orden alfab??tico ascendentemente
select distinct marca from Usuarios order by marca asc;

-- 45. Listar las diferentes marcas de celular en orden alfab??tico aleatorio
select distinct marca from Usuarios order by rand();

-- 46. Listar el login y tel??fono de los usuarios con compa????a telef??nica IUSACELL o UNEFON
select usuarios, telefono from Usuarios where compania in ('IUSACELL', 'UNEFON');

-- 47. Listar nombre y tel??fono de los usuarios con tel??fono que no sea de la marca MOTOROLA o NOKIA
select nombre, telefono from Usuarios where marca not in ('MOTOROLA', 'NOKIA');

-- 48. Calcular la suma de los saldos de los usuarios de la compa????a telef??nica TELCEL
select sum(saldo) from Usuarios where compania = 'TELCEL';