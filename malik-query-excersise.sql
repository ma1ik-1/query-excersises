-- 7 --
select distinct last_name from  actor;
-- 6 --
select count(release_year) from film where release_year = '2010';
-- 5 --
select title from film where length = (select max(length) from film);
-- 4 --
select count(film_id) from film where description like '%Robot%';
-- 3 --

-- 2 --
select avg(length) from film;
-- 1 --