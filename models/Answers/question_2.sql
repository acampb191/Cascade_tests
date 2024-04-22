select 
    date_trunc('month', date_witness) as month
    , monthname(date_witness) as month_name
    , count(case when (has_jacket and has_weapon) and not has_hat then 1 end)/count(*) as probability
from {{ ref('sighting_details')}}
group by all