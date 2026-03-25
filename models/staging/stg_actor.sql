with actor as (
    select
        actor_id,
        first_name,
        last_name,
        last_update
    from {{ source('source', 'actor') }}  -- référence propre à dbt
)
select
    actor_id,
    first_name,
    last_name
from actor