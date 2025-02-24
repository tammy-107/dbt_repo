SELECT 
    ID,
    UPPER(NAME) AS NAME_UPPERCASE, 
    AGE,
    AGE + 5 AS AGE_IN_FIVE_YEARS  
FROM {{ source('postgres_test', 'sample_data') }}