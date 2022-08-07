# Práctica de SQL

A continuación estarán los enunciados de la práctica propuesta del plan Argentina Programa.

## Consultas a Base de Datos

Para practicar las consultas a la base de datos te dejamos una tabla para que puedas importar en tu base de datos MySQL o también podes aplicar las consultas directamente en el [sqlfiddle](http://sqlfiddle.com/#!9/3357a7)

1. Listar los nombres de los usuarios
2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
4. Contar los usuarios sin saldo o inactivos
5. Listar el login de los usuarios con nivel 1, 2 o 3
6. Listar los números de teléfono con saldo menor o igual a 300
7. Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
8. Contar el número de usuarios por compañía telefónica
9. Contar el número de usuarios por nivel
10. Listar el login de los usuarios con nivel 2
11. Mostrar el email de los usuarios que usan gmail
12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
14. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
15. Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
16. Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
17. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
18. Mostrar el email de los usuarios que no usan yahoo
19. Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
20. Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
21. Listar las diferentes marcas de celular en orden alfabético descendentemente
22. Listar las diferentes compañías en orden alfabético aleatorio
23. Listar el login de los usuarios con nivel 0 o 2
24. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
25. Listar el login de los usuarios con nivel 1 o 3
26. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
27. Listar el login de los usuarios con nivel 3
28. Listar el login de los usuarios con nivel 0
29. Listar el login de los usuarios con nivel 1
30. Contar el número de usuarios por sexo
31. Listar el login y teléfono de los usuarios con compañía telefónica AT&T
32. Listar las diferentes compañías en orden alfabético descendentemente
33. Listar el login de los usuarios inactivos
34. Listar los números de teléfono sin saldo
35. Calcular el saldo mínimo de los usuarios de sexo “Hombre”
36. Listar los números de teléfono con saldo mayor a 300
37. Contar el número de usuarios por marca de teléfono
38. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
39. Listar las diferentes compañías en orden alfabético ascendentemente
40. Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
41. Mostrar el email de los usuarios que usan hotmail
42. Listar los nombres de los usuarios sin saldo o inactivos
43. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
44. Listar las diferentes marcas de celular en orden alfabético ascendentemente
45. Listar las diferentes marcas de celular en orden alfabético aleatorio
46. Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
47. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
48. Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL

## Problemas de JOIN en Bases de Datos

Vamos a realizar algunos ejercicios de JOIN. Recuerda que los datos y las soluciones están en los links de sqlfiddle. Si lo queres aplicar en tu propia base de datos solo tenes que copiarte las sentencias de creación e inserción.

1.  Una empresa tiene registrados a sus clientes en una tabla llamada clientes. También tiene una tabla "provincias" donde registra los nombres de las provincias. En base a los datos cargados [aquí](http://sqlfiddle.com/#!9/e29afd), Queremos saber de qué provincias tenemos clientes, sin repetir el nombre de la provincia: las consultas que permitan responder las siguientes preguntas:
    1. ¿Qué provincias no tenemos clientes?
    2. ¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct

## Autopropuesto

Normalizar la tabla Usuarios del primer enunciado y hacer 3 ejercicios con ella.
