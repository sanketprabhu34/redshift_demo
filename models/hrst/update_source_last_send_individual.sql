{{ config (materialized='table', alias='source_last_send_alterian') }}

WITH update_source_last_send_individual AS (
    SELECT
    source, 
    source_id,
    CASE
        WHEN source = 'wt_individual_d' THEN getdate()
        ELSE updatedate
    END AS updatedate

FROM {{ source('hrst_stg','source_last_send_alterian') }}
)

SELECT * FROM update_source_last_send_individual
