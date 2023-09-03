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

use hw202230904;

# 3.1. Получить все данные;
select * from computers;

/*
  3.2. Получить данные в которых есть фирма и год выпуска;
  3.3. Получить данные, где указан год выпуска;
 */
select * from computers
where year_prod is not null; # computers.firm id already not null!

# 3.4. Получить таблицу с полями фирма и год выпуска, которые есть на складе.
select firm, year_prod from computers
where store_count > 0;