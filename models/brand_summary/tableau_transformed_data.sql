SELECT *, 
    CASE 
        WHEN PA_OUTCOME ILIKE 'APPROVED' THEN 'Approved'
        WHEN PA_OUTCOME ILIKE 'DENIED' THEN 'Denied - Appeal Available' 
        ELSE 'None'
    END AS pa_actual_outcome
FROM {{ source('postgres_test', 'brand_summary') }};