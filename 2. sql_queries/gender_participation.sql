/* 2. Gender Participation by Country */

SELECT
Count(CASE WHEN A.sex = 'F' THEN 1 END) AS Female,
Count(CASE WHEN A.sex = 'M' THEN 1 END) AS Male,
N.Region
FROM `Athelete_Project.athlete_events` AS A
JOIN `Athelete_Project.NOC_Regions` AS N
ON N.Noc = A.Noc
GROUP BY N.Region;
