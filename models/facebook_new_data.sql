with facebook_new_data as 
(
select ad_id, 
       add_to_cart, 
       adset_id, 
       campaign_id, 
       channel, 
       clicks, 
       comments, 
       creative_id, 
       date, 
       clicks + comments + likes + views + shares + purchase engagements, 
       impressions, 
       mobile_app_install installs, 
       likes, 
       inline_link_clicks link_clicks, 
       null placement_id, 
       null post_click_conversions, 
       null post_view_conversions, 
       null posts, 
       purchase, 
       complete_registration registrations,
       null revenue, 
       shares, 
       spend, 
       purchase total_conversions, 
       views video_views
from {{ ref('src_ads_creative_facebook_all_data') }}
)
select * from facebook_new_data