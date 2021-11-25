-- Вывести все поля и все строки
select students from students;

-- Вывести всех студентов в таблице
select * from students; 

-- Вывести только id пользователей 
select id from students;

-- Вывести только имя пользователей 
select name from students;

-- Вывести только email пользователей 
select email from students;

--Вывести имя и email пользователей 
select name,email from students

--Вывести id,имя,email и дату создания пользователей 
select id,name,email,created_on from students;

--Вывести пользователей где пароль 12333
select * from students where password = '12333'

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
select * from students where created_on = '2021-03-26 00:00:00';

--Вывксти пользователей где в имени есть слово Anna
select * from students where name like ('%Anna%');
 
--Вывести пользователей где в имени в конце есть 8
select * from students where name like ('8%');

--Вывести всех пользователей где в имени есть буква а
select * from students where name like ('%a%')

--Вывести всех пользователей которые были созданы 2021-07-12 00:00:00
select * from students where created_on = '2021-07-12 00:00:00';

--Вывести всех пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

--Вывести всех пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть Andrey
select * from students where created_on = '2021-07-12 00:00:00' and name like('%Andrey%');

--Вывести всех пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select * from students where created_on = '2021-07-12 00:00:00' and name like ('%8%');

--Вывести пользователя у которых id = 10
select * from students where id = '10';

--Вывести пользователя у которых id = 37
select * from students where id = '53';

--Вывести пользователя у которых id > 40
select * from students where id > '40';

--Вывести пользователя у которых id < 30
select * from students where id < '30';

--Вывести пользователя у которых id < 27 или больше 88
select * from students where id < '27' or id > '88';

--Вывести пользователя у которых id <= 37
select * from students where id <= '37';

--Вывести пользователя у которых id >= 37
select * from students where id >= '37';

--Вывести пользователя у которых id > 80 но < 90
select * from students where id > '80' or id < '90';

--Вывести пользователей у который id между 80 и 90
select * from students where id between '80' and '90';

--Вывести пользователя где пароль равен 12333,1m313,123313
select * from students where password in ('12333', '1m313','123313');

--Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--Вывести минимальный id 
select min(id) from students;

--максмальный
select max(id) from students;

--вывести количество пользователей
select count(id) from students; 

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id ,name ,created_on from students order by created_on asc ;

--Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id ,name ,created_on from students order by created_on desc ;















