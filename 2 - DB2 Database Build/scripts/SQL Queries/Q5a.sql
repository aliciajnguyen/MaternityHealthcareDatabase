WITH MidwifeMatch (mid) AS 
(    SELECT mid
    FROM Midwife
    WHERE name = 'Marion Girard')
, PregMatch (pregid, cid) AS
(   SELECT pregid, cid
    FROM Pregnancy
    WHERE primMid IN (SELECT mid FROM MidwifeMatch)
    UNION
    SELECT pregid, cid
    FROM Pregnancy
    WHERE secondMid IN (SELECT mid FROM MidwifeMatch))
, PregMatchMotherId (pregid, patid) AS
(   SELECT pregid, patid
    FROM Couple C, PregMatch PM
    WHERE C.cid = PM.cid)
, MotherInfo (patid , hcardid, name, phone, pregid) AS
(   SELECT P.patid, hcardid, name, phone, PM.pregid
    FROM Patient P, PregMatchMotherId PM
    WHERE P.patid = PM.patid)
, AptMatch (date, time, pregid) AS
(   SELECT date, time, pregid
    FROM Appointment A
    WHERE A.pregid IN (SELECT pregid FROM PregMatch)
      AND A.date BETWEEN '2022-03-21' AND '2022-03-25')
SELECT date, time, hcardid, name, phone
FROM MotherInfo M, AptMatch A
WHERE M.pregid = A.pregid
;
