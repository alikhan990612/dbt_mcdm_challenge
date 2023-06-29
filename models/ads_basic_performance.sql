with all_data as
(
    select * from {{ref('bing_new_data')}}
    union all
    select * from {{ref('facebook_new_data')}}
    union all
    select * from {{ref('tiktok_new_data')}}
    union all
    select * from {{ref('twitter_new_data')}}
    order by channel
)
select * from all_data
