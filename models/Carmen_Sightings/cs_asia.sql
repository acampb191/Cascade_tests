select 
    sighting::date as date_witness
    , citizen as witness
    , officer as agent
    , reported::date as date_agent
    , city_interpol as city_agent
    , nation as country
    , city as city
    , lat::float as latitude
    , long::float as longitude
    , has_weapon::boolean as has_weapon
    , has_hat::boolean as has_hat
    , has_jacket::boolean as has_jacket
    , behavior as behavior
from {{ ref('Carmen_sightings_Asia') }}