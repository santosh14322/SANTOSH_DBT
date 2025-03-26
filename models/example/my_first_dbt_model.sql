
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select * from {{ ref('blod') }} a
    inner join
    {{ ref('customers') }} b
    on a.menu_item_id = b.id

)

select id,full_name,menu_item_health_metrics_obj
from source_data


