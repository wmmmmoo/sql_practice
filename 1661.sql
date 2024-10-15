-- 查詢計算每台機器的平均處理時間
SELECT 
    machine_id,
    ROUND(AVG(a.end_time - a.start_time), 3) AS processing_time
FROM (
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
    FROM 
        Activity
    GROUP BY 
        machine_id, process_id
) AS a
GROUP BY 
    machine_id;

-- SELECT 
-- 	machine_id,
-- 	process_id,
-- 	MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
-- 	MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time,
--     MAX(CASE WHEN activity_type = 'start' THEN timestamp END) - MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS difference
-- FROM 
-- 	Activity
-- GROUP BY 
-- 	machine_id, process_id