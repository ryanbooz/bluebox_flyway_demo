CREATE EXTENSION hypopg;

CREATE MATERIALIZED VIEW top_grossing
AS
	WITH film_genre AS (
	SELECT film_id, title, array_agg(name) genres  FROM
	film, unnest(genre_ids) genre_id
	JOIN film_genre fg1 USING (genre_id)
	GROUP BY film_id
)
select
    fg.film_id,
    fg.title,
    any_value(genres),
    sum(payment.amount) as "gross revenue"
from
    film_genre fg
left join inventory on
    inventory.film_id = fg.film_id
left join rental on
    rental.inventory_id = inventory.inventory_id
left join payment
    on payment.rental_id = rental.rental_id
where
    payment.amount is not null
group by    
    fg.title,
    fg.film_id
order by
    sum(payment.amount) desc
