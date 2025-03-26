{{
    config(
        materialized='table'
    )
}}
select
id,
first_name,
last_name,
concat(last_name,first_name) as full_name
from 
{{ source('transforming', 'customers') }}