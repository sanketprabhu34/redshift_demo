{{ config(materialized='table', alias='wt_nielsen_dma_d') }}

with wt_nielsen_dma_d as (

    SELECT
    *
    FROM {{source('hrst','wt_nielsen_dma_d')}}
)

SELECT * FROM wt_nielsen_dma_d