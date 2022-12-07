WITH CouplesMotherMatch (cid, patid) AS
(
    SELECT C.cid, C.patid
    FROM Couple C, Patient P
    WHERE P.name = 'Victoria Gutierrez' AND C.patid = P.patid
)
, PregMatch (pregid) AS
(
    SELECT pregid
    FROM Pregnancy P
    WHERE P.cid IN (SELECT cid FROM CouplesMotherMatch)
        AND P.ithPregnancy = 2
)
SELECT dateLabWorkCompleted, result
FROM Test T
WHERE T.testType = 'blood iron'
    AND T.patid IN (SELECT patid FROM CouplesMotherMatch)
    AND T.pregid IN (SELECT pregid FROM PregMatch)
;
