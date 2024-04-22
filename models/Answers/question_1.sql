with
monthly_sightings as (
    select 
        date_trunc('month', date_witness) as month
        , city_agent
        , count(*) as sightings
        , max(sightings) over (partition by month) as max_sightings
    from {{ ref('carmen_sightings_all')}}
    group by all
)
select 
    month
    , city_agent
from monthly_sightings
where sightings = max_sightings
order by month desc