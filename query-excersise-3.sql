SELECT 
    category.`name`, AVG(film.length)
FROM
    film
        JOIN
    film_category ON film.film_id = film_category.film_id
        JOIN
    category ON film_category.category_id = category.category_id
GROUP BY category.category_id
ORDER BY AVG(film.length) DESC;

select count(last_name) as countln from actor group by last_name having countln > 1;

select * from film;
select * from actor;
select * from film_actor;

SELECT 
    film.title
FROM
    film
        JOIN
    film_actor ON film.film_id = film_actor.film_id
        JOIN
    actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Fred' and actor.last_name = 'Costner';

SELECT 
    location, COUNT(location)
FROM
    rental
        JOIN
    customer ON rental.customer_id = customer.customer_id
        JOIN
    address ON customer.customer_id = address.address_id
        JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
        JOIN
    film ON inventory.film_id = film.film_id
WHERE
    film.title = 'BUCKET BROTHERHOOD'
GROUP BY address.location
;

-- better
SELECT 
	*
FROM
    rental
        JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
        JOIN
    store ON inventory.store_id = store.store_id
        JOIN
    film ON inventory.film_id = film.film_id
WHERE
    film.title = 'BUCKET BROTHERHOOD'
;
    

SELECT 
    category.name, COUNT(category.category_id)
FROM
    category
        JOIN
    film_category ON category.category_id = film_category.category_id
        JOIN
    film ON film_category.film_id = film.film_id
GROUP BY category.category_id;

SELECT 
    actor.first_name, actor.last_name, COUNT(film.film_id)
FROM
    actor
        JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        JOIN
    film ON film_actor.film_id = film.film_id
GROUP BY actor.actor_id;

SELECT 
    *
FROM
    film
        JOIN
    inventory ON film.film_id = inventory.film_id
        JOIN
    rental ON inventory.inventory_id = rental.inventory_id
WHERE film.title = 'Academy Dinosaur' and inventory.store_id = 1 AND return_date is null;

select * from rental where return_date is null;


SELECT 
    *
FROM
    film
        JOIN
    inventory ON film.film_id = inventory.film_id
        JOIN
    rental ON inventory.inventory_id = rental.inventory_id
WHERE title = 'Academy Dinosaur';
