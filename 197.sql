-- Query to find dates with higher temperatures than the previous day_claude.version
SELECT w1.id as w1_id,
       w1.recordDate as w1_recordDate,
       w1.temperature as w1_temperature,
       w2.id as w2_id,
       w2.recordDate as w2_recordDate,
       w2.temperature as w2_temperature      
FROM 
	sql_practice.Weather w1 left JOIN sql_practice.Weather w2 
    ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
where w1.temperature > w2.temperature;

-- wm.version
select w2.id
--        w1.recordDate,
--        w1.temperature,
--        DATE_ADD(w1.recordDate, INTERVAL 1 DAY) as day2,
--        w2.id as w2_id,
--        w2.recordDate as w2_recordDate,
--        w2.temperature as w2_temperature,
--        w2.recordDate
from 
	Weather w1 left join Weather w2
    on DATE_ADD(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
where w2.temperature > w1.temperature