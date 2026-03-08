/* 4. Top Sports by Participation */

SELECT 
A.Sport AS Sports,
COUNT(*) AS Total_Athlete
FROM `Athelete_Project.athlete_events` A
GROUP BY Sports;
