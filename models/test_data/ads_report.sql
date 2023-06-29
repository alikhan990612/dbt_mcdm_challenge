with total_model as
(
select 
channel, 
round(sum(spend) / sum(total_conversions), 2) Conversion_cost_by_channel,
round(sum(spend) / sum(engagements), 2) Cost_per_engage,
sum(impressions) Impressions_by_channel,
round(sum(spend) / sum(clicks), 2) CPC,
from {{ref('ads_basic_performance')}}
group by channel
order by channel
)
select * from total_model