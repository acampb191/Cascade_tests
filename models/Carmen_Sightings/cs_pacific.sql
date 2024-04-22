select 
    sight_on::date as date_witness
    , sighter as witness
    , filer as agent
    , file_on::date as date_agent
    , report_office as city_agent
    , nation as country
    , town as city
    , lat::float as latitude
    , long::float as longitude
    , has_weapon::boolean as has_weapon
    , has_hat::boolean as has_hat
    , has_jacket::boolean as has_jacket
    , behavior as behavior
from {{ ref('Carmen_sightings_Pacific') }}