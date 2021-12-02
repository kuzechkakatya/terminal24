
-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками


create table employees(	
id serial primary key,
employee_name varchar(50) not null)

select * from employees;

insert into employees (employee_name)
values ('Robert Watkins'),
('Irmgard Paddick'),
('Jeffrey Oconnor'),
('Nelson Martinez'),
('John Greaves'),
('Ismael Kunkel'),
('Heidi Small'),
('Shawna Heredia'),
('Dorothy Douglas'),
('Gail Longwell'),
('Mary Norman'),
('Ursula Turner'),
('Philip Pate'),
('Krystal Smith'),
('Natalie Wilson'),
('Gladys Drewes'),
('James Bormann'),
('Ira Lachance'),
('Dana Brown'),
('Elizabeth Holt'),
('Norma Brown'),
('Melissa Metz'),
('Joshua Dailey'),
('Susan Nix'),
('Evelyn Jewett'),
('Joshua Stjean'),
('Colin George'),
('Kevin Hollaway'),
('Claude Stevens'),
('Jose Middleton'),
('Cynthia Wert'),
('Belinda Baker'),
('Robert Cameron'),
('Ruth Posner'),
('Michel Beard'),
('Juanita Gleason'),
('Chester Pagani'),
('Dorothy Gay'),
('Arthur Rawlings'),
('Leo Streetman'),
('Larry Brewer'),
('Lauren Mayorga'),
('Betty Farina'),
('Paula Scofield'),
('Glenn Macias'),
('Kelly Schwartz'),
('Anton Wright'),
('Joseph Jude'),
('Erma Mcclellan'),
('Carla Mcnulty'),
('Peter Ledford'),
('Belinda Sands'),
('Richard Anton'),
('Keith Marchese'),
('Danielle Whitworth'),
('Barbara Jackson'),
('Janet English'),
('Tracy Williams'),
('David Maes'),
('Allyson Wortham'),
('Harold Tucholski'),
('Jimmy Schultz'),
('Joe Willier'),
('Mary Harms'),
('Thomas Burel'),
('Bernice Packer'),
('Mac Baggesen'),
('Mark Mcmurray'),
('Robert Boehmer'),
('Chanda Isenhour');

select * from employees

--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками'


create table salary( 
id serial primary key, 
monthly_salary int not null
)

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);

select * from salary

--5)Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
id serial primary key,
employee_id int not null unique ,
salary_id int not null

)

select * from employee_salary


insert into employee_salary(employee_id,salary_id)
values (62, 1),
       (6, 11),
       (51, 4),
       (9, 13),
       (32, 3),
       (48, 11),
       (59, 13),
       (26, 8),
       (47, 5),
       (65, 13),
       (43, 7),
       (14, 13),
       (30, 3),
       (31, 2),
       (23, 8),
       (11, 3),
       (25, 1),
       (54, 12),
       (56, 10),
       (70, 2),
       (57, 12),
       (37, 11),
       (1, 2),
       (13, 1),
       (45, 15),
       (53, 9),
       (49, 10),
       (35, 8),
       (36, 15),
       (40, 9),
       (71, 7),
       (72, 3),
       (73, 14),
       (74, 5),
       (75, 5),
       (76, 6),
       (77, 7),
       (78, 14),
       (79, 12),
       (80, 2)

drop table employee_salary  

--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:


create table roles(id serial primary key,
role_name int not null unique)


alter table roles
alter column role_name type varchar(30)

select * from roles


insert into roles(role_name)
values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer')

--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee(id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id))

select * from roles_employee

insert into roles_employee(employee_id,role_id)
values (17, 1),
       (6, 11),
       (16, 4),
       (2, 13),
       (4, 3),
       (24, 11),
       (59, 13),
       (26, 8),
       (47, 5),
       (65, 13),
       (43, 7),
       (14, 13),
       (30, 3),
       (31, 2),
       (23, 8),
       (11, 3),
       (25, 1),
       (54, 12),
       (56, 10),
       (70, 2),
       (57, 12),
       (37, 11),
       (1, 2),
       (13, 1),
       (45, 15),
       (53, 9),
       (49, 10),
       (35, 8),
       (36, 15),
       (40, 9),
       (69, 7),
       (68, 3),
       (67, 14),
       (66, 5),
       (51, 5),
       (52, 6),
       (19, 7),
       (34, 14),
       (28, 12),
       (12, 2)



