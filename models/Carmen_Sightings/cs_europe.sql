select 
    date_witness::date as date_witness
    , witness as witness
    , agent as agent
    , date_filed::date as date_agent
    , region_hq as city_agent
    , country as country
    , city as city
    , lat_::float as latitude
    , long_::float as longitude
    , armed::boolean as has_weapon
    , chapeau::boolean as has_hat
    , coat::boolean as has_jacket
    , observed_action as behavior
from {{ ref('Carmen_sightings_Europe') }}