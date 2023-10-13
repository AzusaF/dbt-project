WITH city_of_toronto_library_visitors AS (
  SELECT * FROM {{ source('data-eng-training-001', 'toronto_library_visitors') }}
)
SELECT 
  _id,
  year,
  branchcode AS branch_code,
  visits
FROM
  city_of_toronto_library_visitors