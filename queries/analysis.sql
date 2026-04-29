select count(*) as row_count
from video_game_sales;

select Platform, round(sum(Global_Sales), 2) as total_global_sales
from video_game_sales   
group by Platform
order by total_global_sales desc
limit 10;

select Genre, round(avg(Global_Sales), 2) as average_global_sales
from video_game_sales   
group by Genre 
order by average_global_sales desc;
