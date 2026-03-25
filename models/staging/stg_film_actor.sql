with film_actor as (
    select
        actor_id,
        film_id,
        last_update
    from {{ source('source', 'film_actor') }}  -- référence propre à dbt
)
select
    actor_id,
    film_id,
    
from film_actor