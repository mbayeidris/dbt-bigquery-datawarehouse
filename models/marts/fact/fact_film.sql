{{ config(
    materialized='table'
) }}


select
    fa.film_id,
    fc.category_id,
    fa.actor_id,
    1 as number_of_film
from {{ ref('stg_film_actor') }} fa
join {{ ref('stg_film_category') }} fc on fa.film_id = fc.film_id