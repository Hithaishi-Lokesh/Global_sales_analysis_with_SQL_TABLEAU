select	count(*) 
from [dbo].[Orders]

select	* 
from [dbo].[Orders]
order by 1

select [Order ID] , COUNT (*)
FROM [dbo].[Orders]
GROUP BY [Order ID]
HAVING COUNT(*)>1

select [Row ID],[Order ID] , COUNT (*)
FROM [dbo].[Orders]
GROUP BY [Order ID],[Row ID]
HAVING COUNT(*)>1

select * from [dbo].[Orders]
where [Ship Date] < [Order Date]

select distinct [Ship Mode] from [dbo].[Orders]


select min(numofdays) as minishipday, max(numofdays) as maxshipday
from (
	select Datediff (day, [Order Date], [Ship date]) as numofdays , *
	from[dbo].[Orders]
	where [ship Mode] ='Second Class') a


	select min(numofdays) as minishipday, max(numofdays) as maxshipday
from (
	select Datediff (day, [Order Date], [Ship date]) as numofdays , *
	from[dbo].[Orders]
	where [ship Mode] ='same day') a

select [Customer ID] , [Order ID] , COUNT (*)
FROM[dbo].[Orders]
GROUP BY [Customer ID],[Order ID]
order by [Customer ID]