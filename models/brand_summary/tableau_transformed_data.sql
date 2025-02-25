SELECT *, 
    CASE 
        WHEN PA_OUTCOME ILIKE 'Approved' THEN 'Approved'
        WHEN PA_OUTCOME ILIKE '%Denied%' THEN 'Denied' 
        ELSE 'None'
    END AS pa_actual_outcome
FROM {{ source('tableau_test', 'brand_summary') }}