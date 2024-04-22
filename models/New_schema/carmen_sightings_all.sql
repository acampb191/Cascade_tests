{{
    config(
        materialized = 'table'
    )
}}

select 
    sighting_details.date_witness
    , sighting_details.witness
    , sighting_details.agent
    , sighting_details.date_agent
    , sighting_details.has_weapon
    , sighting_details.has_hat
    , sighting_details.has_jacket
    , sighting_details.behavior
    , cities.city
    , cities.country
    , cities.latitude
    , cities.longitude
    , cities.city_agent
    , cities.region
from {{ ref('sighting_details')}} as sighting_details
inner join {{ ref('cities') }} as cities
    on sighting_details.city = cities.city