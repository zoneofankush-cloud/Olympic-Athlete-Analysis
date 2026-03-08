/* 1. KPI Metrics Queries */

-- Total Participants
SELECT COUNT(DISTINCT ID) AS Total_Participants
FROM `peronal-489013.Athelete_Project.athlete_events`;

-- Female Participants
SELECT COUNT(DISTINCT ID) AS Female_Participants
FROM `peronal-489013.Athelete_Project.athlete_events`
WHERE Sex = 'F';

-- Male vs Female Participation Growth
SELECT
  athlete_events.Year,
  (COUNT(DISTINCT CASE WHEN athlete_events.Sex = 'M' THEN athlete_events.ID END) * 100.0) / COUNT(DISTINCT athlete_events.ID) AS Male_Participation_Percentage,
  (COUNT(DISTINCT CASE WHEN athlete_events.Sex = 'F' THEN athlete_events.ID END) * 100.0) / COUNT(DISTINCT athlete_events.ID) AS Female_Participation_Percentage
FROM `peronal-489013.Athelete_Project.athlete_events` AS athlete_events
GROUP BY athlete_events.Year
ORDER BY athlete_events.Year;
