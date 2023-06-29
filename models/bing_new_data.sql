{{
  config(
    materialized='view'
  )
}}

with bing_new_data as 
(
select ad_id, 
       null add_to_cart, 
       adset_id, 
       campaign_id, 
       channel, 
       clicks, 
       null comments, 
       null creative_id, 
       date, 
       null engagements, 
       imps impressions, 
       null installs, 
       null likes, 
       null link_clicks, 
       null placement_id, 
       null post_click_conversions, 
       null post_view_conversions, 
       null posts, 
       null purchase, 
       null registrations,
       revenue, 
       null shares, 
       spend, 
       conv total_conversions, 
       null video_views 
from {{ ref('src_ads_bing_all_data') }}
)
select * from bing_new_data