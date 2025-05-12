With Hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

--select 
--arrival_date_year,
--hotel,
--round(sum((stays_in_week_nights + stays_in_weekend_nights) * adr),0) as Revenue 
--from Hotels 
--group by arrival_date_year,hotel

select * from Hotels
left join dbo.market_segment$
on Hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on Hotels.meal = meal_cost$.meal
