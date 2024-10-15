-- 創建Weather表格
CREATE TABLE sql_practice.Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

-- 插入示例數據
INSERT INTO sql_practice.Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

