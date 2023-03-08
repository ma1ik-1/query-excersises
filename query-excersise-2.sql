-- 1
select actor_id, count(*) from film_actor group by actor_id order by count(*) desc;
select * from actor where actor_id = 107;
-- 2
select avg(length) from film;
-- 3
select category, avg(length) from film_list group by category;
-- 4
select count(film_id) from film where description like '%robot%';
-- 5
select title from film where length = (select max(length) from film);
-- 6
select count(release_year) from film where release_year = '2010';
-- 7
select last_name, count(last_name) from actor group by last_name having count(*) = 1;