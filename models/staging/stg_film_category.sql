with film_category as (
    select
        category_id,
        film_id,
        last_update
    from {{ source('source', 'film_category') }}  -- référence propre à dbt
)
select
    category_id,
    film_id,
    
from film_category