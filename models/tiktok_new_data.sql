{{
  config(
    materialized='view'
  )
}}

with tiktok_new_data as 
(
select ad_id, 
       add_to_cart, 
       adgroup_id adset_id, 
       campaign_id, 
       channel, 
       clicks, 
       null comments, 
       null creative_id, 
       date, 
       null engagements, 
       impressions, 
       rt_installs + skan_app_install installs, 
       null likes, 
       null link_clicks, 
       null placement_id, 
       null post_click_conversions, 
       null post_view_conversions, 
       null posts, 
       purchase, 
       registrations,
       null revenue, 
       null shares, 
       spend, 
       skan_conversion + conversions total_conversions, 
       video_views
from {{ ref('src_ads_tiktok_ads_all_data') }}
)
select * from tiktok_new_data