# Задача для PHP в GF

### Дано:

таблица clients. Поля id:integer, name:text

таблица orders. Поля id:integer, client_id:integer, price:integer БД PostgresSQL версиия 9.6 и выше

### Надо:

Выбрать для каждого клиента количество заказов ценой меньше 1000 и больше 1000. ( , count1, count2)

SQL Код для воспроизведения

create table clients (id serial not null primary key,

name text not null );create table orders (

id serial not null primary key, client_id integer, price integer not null );

INSERT INTO clients (id, name) VALUES (1,'Иванов'); INSERT INTO clients (id, name) VALUES (2,'Петров'); INSERT INTO clients (id, name) VALUES (3,'Сидоров'); INSERT INTO clients (id, name) VALUES (4,'Гейтс');

INSERT INTO orders (client_id, price) VALUES (1,10); INSERT INTO orders (client_id, price) VALUES (1,20); INSERT INTO orders (client_id, price) VALUES (2,129); INSERT INTO orders (client_id, price) VALUES (2,134); INSERT INTO orders (client_id, price) VALUES (2,55); INSERT INTO orders (client_id, price) VALUES (2,16); INSERT INTO orders (client_id, price) VALUES (2,289); INSERT INTO orders (client_id, price) VALUES (3,500); INSERT INTO orders (client_id, price) VALUES (3,800); INSERT INTO orders (client_id, price) VALUES (3,150); INSERT INTO orders (client_id, price) VALUES (3,420); INSERT INTO orders (client_id, price) VALUES (4,20); INSERT INTO orders (client_id, price) VALUES (4,199); INSERT INTO orders (client_id, price) VALUES (4,189);
