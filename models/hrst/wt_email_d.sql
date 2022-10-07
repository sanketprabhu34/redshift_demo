{{ config (materialized='table', alias='wt_email_d') }}


WITH wt_email_d AS (
	SELECT 
		*
	FROM {{ source('hrst','wt_email_d') }}

)

SELECT * FROM wt_email_d
