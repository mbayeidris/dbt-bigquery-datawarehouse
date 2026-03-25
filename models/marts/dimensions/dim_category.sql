{{ config(
    materialized='table'
) }}

select
    category_id,
    name    
from {{ ref('stg_category') }}