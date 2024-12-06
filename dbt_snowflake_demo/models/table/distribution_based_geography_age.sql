SELECT 
    GEOGRAPHY,
    CASE 
        WHEN AGE >= 18 AND AGE <= 30 THEN 'Young'
        WHEN AGE >= 31 AND AGE <= 50 THEN 'Middle-aged'
        WHEN AGE >= 51 AND AGE <= 100 THEN 'Senior'
        ELSE 'Unknown'
    END AS AGEGROUP,
    COUNT(*) AS CUSTOMERCOUNT
FROM {{ ref('src_credit_card_listing') }}
GROUP BY GEOGRAPHY, AGEGROUP