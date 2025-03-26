{{
    config(
        materialized='table'
    )
}}
select * from 
{{ source('santosh', 'blob_table') }}