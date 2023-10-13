WITH citiy_of_toronto_library_info AS (
  SELECT * FROM {{ source('data-eng-training-001', 'toronto_library_info') }}
)
SELECT 
   _id,
   branchcode AS branch_code,
   physicalbranch AS physical_branch,
   branchname AS branch_name,
   address,
   postalcode AS postal_code,
   website,
   telephone,
   squarefootage AS square_footage,
   publicparking AS public_parking,
   kidsstop AS kids_stop,
   leadingreading AS leading_reading,
   clc,
   dih,
   teencouncil AS teen_council,
   youthhub AS youth_hub,
   adultliteracyprogram AS adult_literacy_program,
   workstations,
   servicetier AS service_tier,
   lat,
   long,
   nbhdno AS nbhd_no,
   nbhdname AS nbhd_name,
   tplnia,
   wardno AS ward_no,
   wardname AS ward_name,
   presentsiteyear AS present_site_year
FROM
  citiy_of_toronto_library_info