/* 5. Participation Trends (General & Female) */

-- Total athlete participation per Olympic year
SELECT 
A.Year,
COUNT(DISTINCT A.ID) AS total_athletes
FROM `peronal-489013.Athelete_Project.athlete_events` AS A
GROUP BY A.Year;

-- Female participation trend by year
SELECT
A.Year,
COUNT(A.sex) AS Total_Female
FROM `Athelete_Project.athlete_events` A
WHERE A.sex = 'F'
GROUP BY A.Year;
