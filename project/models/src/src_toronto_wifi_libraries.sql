WITH city_of_toronto_free_public_wifi AS (
  SELECT * FROM data-eng-training-001.test_landing_zone.city_of_toronto_free_public_wifi
)
SELECT 
  _id,
  objectid,
  has_wifi,
  location_name,
  public_name,
  address,
  postal_code,
  building_type,
  gis_id,
  asset_id,
  owner,
  neighbourhood,
  is_nia,
  is_emerging,
  ward,
  ward_number,
  telephone,
  website,
  globalid,
  geometry
FROM
  city_of_toronto_free_public_wifi