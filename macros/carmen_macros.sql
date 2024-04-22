{% macro sighting_details() %}
witness || date_witness as sighting_key
, witness
, date_witness
, city
, agent
, date_agent
, has_weapon
, has_hat
, has_jacket
, behavior
{% endmacro%}

{% macro city_details() %}
city /* Primary Key */
, country
, latitude
, longitude
, city_agent
{% endmacro%}