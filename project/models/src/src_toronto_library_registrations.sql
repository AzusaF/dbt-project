WITH city_of_toronto_library_registrations AS (
  SELECT * FROM {{ source('data-eng-training-001', 'toronto_library_registrations') }}
)
SELECT 
  _id,
  year,
  branchcode AS branch_code,
  registrations
FROM
  city_of_toronto_library_registrations