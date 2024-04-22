{{
    config(
        materialized = 'table'
    )
}}

select distinct
    {{ city_details() }}
    , 'Africa' as region
from {{ ref('cs_africa')}}

union all 

select distinct
    {{ city_details() }}
    , 'America' as region
from {{ ref('cs_america')}}

union all 

select distinct
    {{ city_details() }}
    , 'Asia' as region
from {{ ref('cs_asia')}}

union all 

select distinct
    {{ city_details() }}
    , 'Atlantic' as region
from {{ ref('cs_atlantic')}}

union all 

select distinct
    {{ city_details() }}
    , 'Australia' as region
from {{ ref('cs_australia')}}

union all 

select distinct
    {{ city_details() }}
    , 'Europe' as region
from {{ ref('cs_europe')}}

union all 

select distinct
    {{ city_details() }}
    , 'Indian' as region
from {{ ref('cs_indian')}}

union all 

select distinct
    {{ city_details() }}
    , 'Pacific' as region
from {{ ref('cs_pacific')}}