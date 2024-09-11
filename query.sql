-- Listar Ator
SELECT * FROM actor a;


-- Listar Endereço com cidade e país
SELECT
a.address,
a.address2,
a.district,
a.postal_code,
a.phone,
a.location,
c.city,
c2.country
FROM
	address a
LEFT JOIN city c ON a.city_id = c.city_id
LEFT JOIN country c2 ON c.country_id = c2.country_id;


-- Listar Filmes com Idioma
SELECT
f.*,
l.name
FROM film f
INNER JOIN `language` l ON f.language_id = l.language_id


-- Listar Filmes com Idioma
SELECT
f.*,
a.first_name,
a.last_name
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id;

-- Listar Filmes com Categoria
SELECT
f.*,
c.name
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id;


-- lista Filme descrição
SELECT * FROM film_text ft ;


-- Listar Filmes com todos os dados
SELECT
f.*
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN store s ON i.store_id = s.store_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country c2 ON c.country_id = c2.country_id;

SELECT *
FROM customer c ;

SELECT *
FROM payment p;

SELECT *
FROM rental r ;
