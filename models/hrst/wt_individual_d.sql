{{ config(materialized='table', alias='wt_individual_d') }}

with wt_individual_d as (

    SELECT
    *
    FROM {{source('hrst','wt_individual_d')}}
)

SELECT * FROM wt_individual_d