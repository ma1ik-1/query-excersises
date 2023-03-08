-- List the titles and release dates of movies released between 
-- 1983-1993 in reverse chronological order.
select * from movies;
select `title`, `release_date` from movies where `release_date` between '1983-01-01' and '1993-01-01' order by `title` desc;

-- Without using LIMIT, list the titles of the movies with the lowest
-- average rating.
select * from ratings;
select * from movies;
select * from genres_movies;
select title from movies;
select min(rating) from ratings; -- lowest rating = 1
select movie_id, rating from ratings where rating = 1; -- no of movies is 6110

select title from movies where id in (select movie_id, avg(rating) from ratings group by movie_id); 
select movie_id, avg(rating) as avgr from ratings group by movie_id having avgr = (select min(avg_rating) from (select movie_id, avg(rating) as avg_rating from `ratings` group by movie_id) as averages);

-- List the unique records for Sci-Fi movies where male 24-year-old
-- students have given 5-star ratings.

-- List the unique titles of each of the movies released on the most
-- popular release day.

-- Find the total number of movies in each genre; list the results
-- in ascending numeric order