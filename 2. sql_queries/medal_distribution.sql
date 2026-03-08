/* 3. Medal Distribution by Country */

SELECT 
N.Region,
COUNT(CASE WHEN A.Medal = 'Gold' THEN 1 END) AS Gold,
COUNT(CASE WHEN A.Medal = 'Silver' THEN 1 END) AS Silver,
COUNT(CASE WHEN A.Medal = 'Bronze' THEN 1 END) AS Bronze
FROM `Athelete_Project.athlete_events` A
JOIN `Athelete_Project.NOC_Regions` AS N
ON A.NOC = N.NOC
GROUP BY N.Region;
