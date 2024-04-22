select 
    witnessed::date as date_witness
    , observer as witness
    , field_chap as agent
    , reported::date as date_agent
    , interpol_spot as city_agent
    , nation as country
    , place as city
    , lat::float as latitude
    , long::float as longitude
    , has_weapon::boolean as has_weapon
    , has_hat::boolean as has_hat
    , has_jacket::boolean as has_jacket
    , state_of_mind as behavior
from {{ ref('Carmen_sightings_Australia') }}