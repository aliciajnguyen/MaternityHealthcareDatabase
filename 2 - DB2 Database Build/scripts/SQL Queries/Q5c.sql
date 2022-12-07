WITH PregDueDateMatch (pregid, primMid) AS
(    SELECT pregid, primMid
    FROM Pregnancy P
    WHERE P.finalEstDueDate IS NOT NULL AND (YEAR(P.finalEstDueDate) = 2022) AND (MONTH(P.finalEstDueDate) = 07)
    UNION
    SELECT pregid, primMid
    FROM Pregnancy P
    WHERE P.finalEstDueDate IS NULL AND (YEAR(P.regRoughDueDate) = 2022) AND (MONTH(P.regRoughDueDate) = 07))
, MidwifePregCountsJuly(mid, instid, countPreg) AS
(    SELECT M.mid, M.instid, count(P.pregid)
    FROM Midwife M, PregDueDateMatch P
    WHERE P.primMid = M.mid
    GROUP BY M.mid, M.instid)
,MidwifePregCountsAll(mid, instid, countPreg) AS
(   SELECT mid, instid, countPreg
    FROM MidwifePregCountsJuly
    UNION
    SELECT M.mid, M.instid, 0 AS count
    FROM Midwife M
    WHERE M.mid NOT IN (SELECT mid FROM MidwifePregCountsJuly))
SELECT HCI.name, sum(countPreg) AS PregnanciesDueInJuly2022
FROM HealthCareInst HCI, MidwifePregCountsAll MC
WHERE MC.instid = HCI.instid
GROUP BY HCI.name
UNION
SELECT HCI.name, 0 AS PregnanciesDueInJuly2022
FROM HealthCareInst HCI
WHERE HCI.instid NOT IN (SELECT instid FROM MidwifePregCountsAll)
;
