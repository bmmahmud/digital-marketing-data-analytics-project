-- What is the total impressions, total clicks, total conversions and total revenue for each campaign?
-- Show total revenue per channel
select cam.channel, 
sum(dp.revenue) as Revenue, 
sum(impressions) as Impressions,
sum(clicks) as clicks,
sum(conversions) as conversion 
from daily_performance as dp
join ads 
on ads.ad_id = dp.ad_id
join campaigns cam
on cam.campaign_id = ads.campaign_id
group by cam.channel;