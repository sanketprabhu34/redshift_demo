 {{ config (materialized='table', alias='wt_email_individual_bridge') }}


WITH wt_email_individual_bridge AS (
	SELECT 
		individual_sk as email_individual_sk,
	        individual_sk,
		email_sk,
		update_dt
	FROM {{ source('hrst','wt_email_individual_bridge') }}

)

SELECT * FROM wt_email_individual_bridge



