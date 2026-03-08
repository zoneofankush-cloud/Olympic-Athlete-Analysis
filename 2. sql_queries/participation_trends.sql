{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* 5. Participation Trends (General & Female) */\
\
-- Total athlete participation per Olympic year\
SELECT \
A.Year,\
COUNT(DISTINCT A.ID) AS total_athletes\
FROM `peronal-489013.Athelete_Project.athlete_events` AS A\
GROUP BY A.Year;\
\
-- Female participation trend by year\
SELECT\
A.Year,\
COUNT(A.sex) AS Total_Female\
FROM `Athelete_Project.athlete_events` A\
WHERE A.sex = 'F'\
GROUP BY A.Year;}