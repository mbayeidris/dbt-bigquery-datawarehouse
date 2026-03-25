with category as (
    select
        category_id,
        name,
        last_update
    from {{ source('source', 'category') }}  -- référence propre à dbt
)
select
    category_id,
    name,
from category