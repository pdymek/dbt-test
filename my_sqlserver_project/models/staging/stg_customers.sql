{{ config(materialized='view') }}
select
    id,
    name,
    email,
    current_timestamp as loaded_at
from {{ ref('raw_customers') }}