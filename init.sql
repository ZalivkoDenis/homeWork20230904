/*
 Д/з по сроку 04/09/2023:

 *** Самостоятельная работа с базой данных по материалам урока ***

1. Создать БД
2. Создать таблицу computer (id primary key, firm not null, year_prod, store_count )
3. Запросы:
    3.1. Получить все данные;
    3.2. Получить данные в которых есть фирма и год выпуска;
    3.3. Получить данные, где указан год выпуска;
    3.4. Получить таблицу с полями фирма и год выпуска, которые есть на складе.
 */


create database if not exists hw202230904;

use hw202230904;

drop table if exists computers;

create table computers(
    id int primary key auto_increment,
    firm varchar(32) not null,
    year_prod int,
    store_count int default 0
);

insert into computers (firm, year_prod, store_count)
values
    ('Asus', null, 5),
    ('Lenovo', 2023, 0),
    ('Apple', null, 15),
    ('HP', null, 10),
    ('Acer', null, 20),
    ('MSI', null, 30),
    ('Tecno', 2023, 0);