WITH
r AS (
   SELECT
      * 
   FROM
      {{ref('src_toronto_library_registrations')}}
),
i AS (
   SELECT
      *
   FROM
      {{ref('src_toronto_library_info')}}
)

SELECT
   r._id,
   r.year,
   r.branch_code,
   i.branch_name,
   r.registrations,
   AVG(r.registrations) OVER() AS avg
FROM r 
LEFT JOIN i ON (i.branch_code = r.branch_code)