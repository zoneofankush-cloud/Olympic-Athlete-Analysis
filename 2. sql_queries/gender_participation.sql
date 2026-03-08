{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* 2. Gender Participation by Country */\
\
SELECT\
Count(CASE WHEN A.sex = 'F' THEN 1 END) AS Female,\
Count(CASE WHEN A.sex = 'M' THEN 1 END) AS Male,\
N.Region\
FROM `Athelete_Project.athlete_events` AS A\
JOIN `Athelete_Project.NOC_Regions` AS N\
ON N.Noc = A.Noc\
GROUP BY N.Region;}