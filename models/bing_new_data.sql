select ad_id, 0 add_to_cart, adset_id, campaign_id, channel, clicks, '0'comments, 1 creative_id, date, 
0 engagements, 0 impressions, 0 installs, 1 likes, 'a'link_clicks, 1 placement_id, 1 post_click_conversions, 
2 post_view_conversions, 3 posts, 3 purchase, 4 registrations, revenue, 2 shares, spend, 4 total_conversions, 2 video_views from {{ ref('src_ads_bing_all_data') }}