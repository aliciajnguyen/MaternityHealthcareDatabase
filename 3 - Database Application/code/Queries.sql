--Appointment fetch

--ORIGINAL
WITH MidwifeMatch (mid) AS 
(
    SELECT mid
    FROM Midwife
    WHERE name = 'Marion Girard'
)
, PregMatch (pregid, cid) AS
(
    SELECT pregid, cid
    FROM Pregnancy
    WHERE primMid IN (SELECT mid FROM MidwifeMatch)
    UNION
    SELECT pregid, cid
    FROM Pregnancy
    WHERE secondMid IN (SELECT mid FROM MidwifeMatch)
)
, PregMatchMotherId (pregid, patid) AS
(
    SELECT pregid, patid
    FROM Couple C, PregMatch PM
    WHERE C.cid = PM.cid
)
, MotherInfo (patid , hcardid, name, phone, pregid) AS
(
    SELECT P.patid, hcardid, name, phone, PM.pregid
    FROM Patient P, PregMatchMotherId PM
    WHERE P.patid = PM.patid
)
, AptMatch (date, time, pregid) AS
(
    SELECT date, time, pregid
    FROM Appointment A
    WHERE A.pregid IN (SELECT pregid FROM PregMatch)
      AND A.date BETWEEN '2022-03-21' AND '2022-03-25'
)
SELECT date, time, hcardid, name, phone
FROM MotherInfo M, AptMatch A
WHERE M.pregid = A.pregid
;

--MODIFIED (still contains date)
WITH PregMatch (pregid, cid, mRole) AS
    (
        SELECT pregid, cid, 'P' AS mRole
        FROM Pregnancy
        WHERE primMid = 1
        UNION
        SELECT pregid, cid, 'B' AS mRole
        FROM Pregnancy
        WHERE secondMid = 1
    )
   , PregMatchMotherId (pregid, patid, mRole) AS
    (
        SELECT pregid, patid, mRole
        FROM Couple C, PregMatch PM
        WHERE C.cid = PM.cid
    )
   , MotherInfo (patid , name, hcardid, pregid, mRole) AS
    (
        SELECT P.patid, name, hcardid, PM.pregid, mRole
        FROM Patient P, PregMatchMotherId PM
        WHERE P.patid = PM.patid
    )
   , AptMatch (date, time, pregid) AS
    (
        SELECT date, time, pregid
        FROM Appointment A
        WHERE A.pregid IN (SELECT pregid FROM PregMatch)
          --  AND YEAR(A.date) = 2022 AND MONTH(A.date) = 03 AND DAY(A.date) = 25
  --AND A.date BETWEEN '2022-03-21' AND '2022-03-25'
    )
SELECT date, time, mRole, name, hcardid
FROM MotherInfo M, AptMatch A
WHERE M.pregid = A.pregid
;

--MODIFIED (for assign specs)
WITH PregMatch (pregid, cid, mRole) AS
    (
        SELECT pregid, cid, 'P' AS mRole
        FROM Pregnancy
        WHERE primMid = 1
        UNION
        SELECT pregid, cid, 'B' AS mRole
        FROM Pregnancy
        WHERE secondMid = 1
    )
   , PregMatchMotherId (pregid, patid, mRole) AS
    (
        SELECT pregid, patid, mRole
        FROM Couple C, PregMatch PM
        WHERE C.cid = PM.cid
    )
   , MotherInfo (patid , name, hcardid, pregid, mRole) AS
    (
        SELECT P.patid, name, hcardid, PM.pregid, mRole
        FROM Patient P, PregMatchMotherId PM
        WHERE P.patid = PM.patid
    )
   , AptMatch (time, pregid) AS
    (
        SELECT time, pregid
        FROM Appointment A
        WHERE A.pregid IN (SELECT pregid FROM PregMatch)
        AND YEAR(A.date) = 2022 AND MONTH(A.date) = 03 AND DAY(A.date) = 25
    )
SELECT time, mRole, name, hcardid
FROM MotherInfo M, AptMatch A
WHERE M.pregid = A.pregid
;

--MODIFIED (for assign specs)
WITH PregMatch (pregid, cid, mRole) AS
    (
        SELECT pregid, cid, 'P' AS mRole
        FROM Pregnancy
        WHERE primMid = 1
        UNION
        SELECT pregid, cid, 'B' AS mRole
        FROM Pregnancy
        WHERE secondMid = 1
    )
   , PregMatchMotherId (pregid, patid, mRole) AS
    (
        SELECT pregid, patid, mRole
        FROM Couple C, PregMatch PM
        WHERE C.cid = PM.cid
    )
   , MotherInfo (patid , name, hcardid, pregid, mRole) AS
    (
        SELECT P.patid, name, hcardid, PM.pregid, mRole
        FROM Patient P, PregMatchMotherId PM
        WHERE P.patid = PM.patid
    )
   , AptMatch (date, time, pregid, aptid) AS
    (
        SELECT date, time, pregid, aptid
        FROM Appointment A
        WHERE A.pregid IN (SELECT pregid FROM PregMatch)
          AND YEAR(A.date) = 2022 AND MONTH(A.date) = 03 AND DAY(A.date) = 25
    )
SELECT date, time, mRole, name, hcardid, M.patid, A.aptid, A.pregid
FROM MotherInfo M, AptMatch A
WHERE M.pregid = A.pregid
;

--Actions
--Review notes
SELECT N.noteDate, N.noteTime, SUBSTRING(N.observations, 0 , 40) AS observations, A.pregid
FROM AptNote N, Appointment A
WHERE N.aptid = A.aptid AND A.mid = 1 AND A.pregid = 1000005
ORDER BY noteDate DESC, noteTime DESC

--review tests
SELECT prescDate, testType, SUBSTRING(result, 0, 40) AS result
FROM Test T
WHERE mid = 1 AND pregid = 1000003

--add a note
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400001, '2022-03-25', '16:55', 'Operative regional standardization', 300026);


-- prescribe a test
insert into Test (testid, testType, sample, result, prescDate, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500001, 'blood iron', 'massa id nisl amet justo morbi ut odio cras', 'too high', '2021-06-15','2021-06-17', '2021-06-30', 1000001, 106, 2001, 20);

--5


--QUERIES FOR PART 3
--a)i
--P0
SELECT mid FROM Midwife WHERE mid = 80;

--b)i
--M1
WITH CouplesMotherMatch (cid, patid, name) AS
    (
        SELECT C.cid, C.patid, P.name
        FROM Couple C, Patient P
        WHERE P.name = 'Victoria Gutierrez' AND C.patid = P.patid
    )
SELECT P.pregid, CM.patid, P.ithPregnancy, CM.name, CM.patid
FROM Pregnancy P, CouplesMotherMatch CM
WHERE P.cid IN (SELECT cid FROM CouplesMotherMatch)
;

--b) viii)
--all notes associated with M1
WITH CouplesMotherMatch (cid, patid, name) AS
     (
         SELECT C.cid, C.patid, P.name
         FROM Couple C, Patient P
         WHERE P.name = 'Victoria Gutierrez' AND C.patid = P.patid
     )
, PregMatch(pregid, ithPregnancy, cid, patid) AS
    (
        SELECT P.pregid, P.ithPregnancy, CM.cid, CM.patid
        FROM Pregnancy P, CouplesMotherMatch CM
        WHERE P.cid = CM.cid
    )
, AptMatch(aptid, pregid, ithPregnancy, cid, patid) AS
    (
        SELECT A.aptid, PM.pregid, PM.ithPregnancy, PM.cid, PM.patid
        FROM Appointment A, PregMatch PM
        WHERE A.pregid = PM.pregid
    )
SELECT N.noteDate, N.noteTime, SUBSTRING(N.observations, 0 , 30) AS observations, AM.pregid, AM.ithPregnancy AS ithPreg, AM.cid
FROM AptNote N, AptMatch AM
WHERE N.aptid = AM.aptid
ORDER BY noteDate DESC, noteTime DESC


--c) i)
WITH CouplesMotherMatch (cid, patid, name) AS
    (
        SELECT C.cid, C.patid, P.name
        FROM Couple C, Patient P
        WHERE P.name = 'Gennie Chapman' AND C.patid = P.patid
    )
   , PregMatch(pregid, ithPregnancy, cid, patid) AS
    (
        SELECT P.pregid, P.ithPregnancy, CM.cid, CM.patid
        FROM Pregnancy P, CouplesMotherMatch CM
        WHERE P.cid = CM.cid
    )
SELECT T.prescDate, T.testType, T.result, PM.pregid, PM.ithPregnancy AS ithPreg, PM.cid
FROM Test T, PregMatch PM
WHERE T.pregid = PM.pregid AND T.patid = PM.patid
ORDER BY T.prescDate DESC
;

--4 index

--CREATE INDEX ind1 ON Students(sid);
--DROP INDEX ind1;

CREATE INDEX phoneAddrIndex ON Patient(phone);
DROP INDEX phoneAddrIndex;

CREATE INDEX phoneAddrIndex ON Patient(phone, address);
DROP INDEX phoneAddrIndex;

CREATE INDEX phoneAddrIndex ON Patient(address, phone);
DROP INDEX phoneAddrIndex;


--5 Data Analytics

--. Write a query that will produce the number of births for
--each month (only count babies born). Produce a chart with month (could be the numeric or name) on X axis
--and count on Y axis.

--get pregid

EXPORT TO birthcounts.csv OF DEL MODIFIED BY NOCHARDEL
SELECT MONTH(P.DOB) AS DOBmonth, count(P.DOB) AS birthCounts
FROM Patient P, Child C
WHERE P.patid = C.patid
GROUP BY MONTH(P.DOB)
ORDER BY DOBmonth;

--EXPORT TO result.csv OF DEL MODIFIED BY NOCHARDEL
--SELECT col1, col2, coln FROM testtable;

--ensure pregnancy current (and this is not a case where child did not result)
SELECT pregid
FROM Pregnancy
WHERE primMid IN (SELECT mid FROM MidwifeMatch)
  AND MONTHS_BETWEEN((DATE (current timestamp)),regRoughDueDate) < 11


SELECT P.address
FROM Patient P
WHERE P.phone = 5145691605
