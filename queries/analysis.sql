# Analysis Queries for Video Game Sales Dataset

# 1. Row count
select count(*) as row_count
from video_game_sales;

# 2. Total Global Sales by Platform
select Platform, round(sum(Global_Sales), 2) as total_global_sales
from video_game_sales   
group by Platform
order by total_global_sales desc
limit 10;

# 3. Average Global Sales by Genre
select Genre, round(avg(Global_Sales), 2) as average_global_sales
from video_game_sales   
group by Genre 
order by average_global_sales desc;

# 4. Top 10 Best-Selling Games  
select Name, Global_Sales
from video_game_sales
order by Global_Sales desc
limit 10;

# 5. Publishers that appear most often
select Publisher, count(*) as game_count
from video_game_sales
group by Publisher
order by game_count desc
limit 10;

# 6. Global sales by year
select Year, round(sum(Global_Sales), 2) as total_global_sales
from video_game_sales
group by Year
order by Year;

# 7 Regional sales by genre across NA, EU, and JP
select Genre, 
       round(sum(NA_Sales), 2) as total_na_sales,
       round(sum(EU_Sales), 2) as total_eu_sales,
       round(sum(JP_Sales), 2) as total_jp_sales
from video_game_sales
group by Genre
order by total_na_sales desc;

# 8. Missing values in Year and Publisher
select 
    sum(case when Year is null then 1 else 0 end) as missing_year_count,
    sum(case when Publisher is null then 1 else 0 end) as missing_publisher_count
from video_game_sales;

