select 
    date_witness::date as date_witness
    , witness as witness
    , agent as agent
    , date_agent::date as date_agent
    , region_hq as city_agent
    , country as country
    , city as city
    , latitude::float as latitude
    , longitude::float as longitude
    , has_weapon::boolean as has_weapon
    , has_hat::boolean as has_hat
    , has_jacket::boolean as has_jacket
    , behavior as behavior
from {{ ref('Carmen_sightings_Indian') }}