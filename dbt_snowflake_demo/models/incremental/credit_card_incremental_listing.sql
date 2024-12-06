{{ config(materialized='incremental') }}

SELECT 
    ROWNUMBER,
    CUSTOMERID,
    SURNAME,
    CREDITSCORE,
    GEOGRAPHY,
    GENDER,
    AGE,
    CASE
        WHEN AGE >= 18 AND AGE <= 30 THEN 'Young'
        WHEN AGE >= 31 AND AGE <= 50 THEN 'Middle-aged'
        WHEN AGE >= 51 AND AGE <= 100 THEN 'Senior'
        ELSE 'Unknown'
    END AS AGE_GROUP,
    TENURE,
    CASE 
        WHEN TENURE <= 1 THEN 'New'
        WHEN TENURE BETWEEN 2 AND 5 THEN 'Experienced'
        WHEN TENURE > 5 THEN 'Loyal'
        ELSE 'Unknown'
    END AS TENURE_CATEGORY,
    BALANCE,
    NUMOFPRODUCTS,
    ISACTIVEMEMBER,
    CASE
        WHEN ISACTIVEMEMBER = 0 THEN 'Inactive'
        ELSE 'Active'
    END AS ISACTIVEMEMBER_STATUS,
    ESTIMATEDSALARY,
    EXITED, 
    CASE
        WHEN EXITED = 1 THEN 'Exited'
        ELSE 'Available'
    END AS EXITED_STATUS
FROM 
    {{ ref('src_credit_card_listing') }} 

{% if is_incremental() %}
WHERE 
    CUSTOMERID >= (SELECT MAX(CUSTOMERID) FROM {{ this }})
{% endif %}
