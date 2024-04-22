select behavior
from {{ ref('sighting_details')}}
group by all
order by count(*) desc
limit 3