{{
    config(
        materialized = 'table'
    )
}}

select distinct
    {{ sighting_details() }}
from {{ ref('cs_africa')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_america')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_asia')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_atlantic')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_australia')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_europe')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_indian')}}

union all 

select distinct
    {{ sighting_details() }}
from {{ ref('cs_pacific')}}