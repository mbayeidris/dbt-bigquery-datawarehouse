select *
from {{ ref('fact_film') }} fc
left join {{ ref('dim_actor') }} da
  on fc.actor_id = da.actor_id
left join {{ ref('dim_category') }} dc
  on fc.category_id = dc.category_id
where da.actor_id is null
   or dc.category_id is null