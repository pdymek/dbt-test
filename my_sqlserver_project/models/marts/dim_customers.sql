{{ config(materialized='table') }}
with cleaned as (
    select
        id,
        trim(name) as customer_name,
        lower(email) as email
    from {{ ref('stg_customers') }}
)
select * from cleaned