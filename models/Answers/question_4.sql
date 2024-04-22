with 
common_behaviors as (
    select behavior
    from {{ ref('sighting_details')}}
    group by all
    order by count(*) desc
    limit 3
)
select 
    date_trunc('month', sighting_details.date_witness) as month
    , monthname(sighting_details.date_witness) as month_name
    , count(case when common_behaviors.behavior is not null then 1 end)/count(*) as probability
from {{ ref('sighting_details')}} as sighting_details
left join common_behaviors on sighting_details.behavior = common_behaviors.behavior
group by all