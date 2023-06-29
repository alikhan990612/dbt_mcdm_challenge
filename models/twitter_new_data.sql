{{
  config(
    materialized='view'
  )
}}

with twitter_new_data as 
(
select null ad_id, 
       null add_to_cart, 
       null adset_id, 
       campaign_id, 
       channel, 
       clicks, 
       comments, 
       null creative_id, 
       date, 
       engagements, 
       impressions, 
       null installs, 
       likes, 
       url_clicks link_clicks, 
       null placement_id, 
       null post_click_conversions, 
       null post_view_conversions, 
       null posts, 
       null purchase, 
       null registrations,
       null revenue, 
       retweets shares, 
       spend, 
       null total_conversions, 
       video_total_views video_views
from {{ ref('src_promoted_tweets_twitter_all_data') }}
)
select * from twitter_new_data