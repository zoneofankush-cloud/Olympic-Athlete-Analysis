{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* 1. KPI Metrics Queries */\
\
-- Total Participants\
SELECT COUNT(DISTINCT ID) AS Total_Participants\
FROM `peronal-489013.Athelete_Project.athlete_events`;\
\
-- Female Participants\
SELECT COUNT(DISTINCT ID) AS Female_Participants\
FROM `peronal-489013.Athelete_Project.athlete_events`\
WHERE Sex = 'F';\
\
-- Male vs Female Participation Growth\
SELECT\
  athlete_events.Year,\
  (COUNT(DISTINCT CASE WHEN athlete_events.Sex = 'M' THEN athlete_events.ID END) * 100.0) / COUNT(DISTINCT athlete_events.ID) AS Male_Participation_Percentage,\
  (COUNT(DISTINCT CASE WHEN athlete_events.Sex = 'F' THEN athlete_events.ID END) * 100.0) / COUNT(DISTINCT athlete_events.ID) AS Female_Participation_Percentage\
FROM `peronal-489013.Athelete_Project.athlete_events` AS athlete_events\
GROUP BY athlete_events.Year\
ORDER BY athlete_events.Year;}