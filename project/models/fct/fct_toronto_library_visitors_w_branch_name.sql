WITH
v AS (
   SELECT
      * 
   FROM
      {{ref('src_toronto_library_visitors')}}
),
i AS (
   SELECT
      *
   FROM
      {{ref('src_toronto_library_info')}}
)

SELECT
   v._id,
   v.year,
   v.branch_code,
   i.branch_name,
   v.visits,
   AVG(v.visits) OVER() AS avg
FROM v 
LEFT JOIN i ON (i.branch_code = v.branch_code)