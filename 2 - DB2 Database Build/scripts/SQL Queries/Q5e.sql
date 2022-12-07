WITH PregMultBabies (pregid, cid) AS
(
    SELECT pregid, cid
    FROM Pregnancy P 
    WHERE P.numberBabies > 1
)
, MothersOfPregMult (patid) AS
(
    SELECT patid
    FROM Couple C
    WHERE C.cid IN (SELECT cid FROM PregMultBabies)
)
SELECT hcardid, name
FROM Patient P
WHERE P.patid IN (SELECT patid FROM MothersOfPregMult)
GROUP BY  hcardid, name
;
