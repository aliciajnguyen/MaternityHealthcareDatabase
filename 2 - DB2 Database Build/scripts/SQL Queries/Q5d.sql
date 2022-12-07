WITH MidwifeMatch (mid) AS
(    SELECT mid
    FROM Midwife M
    WHERE M.instid IN (SELECT instid FROM HealthCareInst WHERE name = 'Lac-Saint-Louis'))
, PregMatchMidwife (pregid) AS
(   SELECT pregid
    FROM Pregnancy
    WHERE primMid IN (SELECT mid FROM MidwifeMatch)
      AND MONTHS_BETWEEN((DATE (current timestamp)),regRoughDueDate) < 11)
, PregMatch (pregid) AS
(   SELECT pregid
    FROM PregMatchMidwife
    WHERE pregid NOT IN (SELECT pregid FROM Child)
    UNION
    SELECT pregid
    FROM Patient P, (SELECT pregid, patid FROM Child WHERE pregid IN
        (SELECT pregid FROM PregMatchMidwife)) ChildMatch
    WHERE P.patid = ChildMatch.patid AND P.DOB IS NULL)
, Mothers (patid) AS
(   SELECT C.patid
    FROM (SELECT cid FROM Pregnancy WHERE pregid IN
        (SELECT pregid FROM PregMatch)) CoupleMatch, Couple C
    WHERE CoupleMatch.cid = C.cid)
SELECT hcardid, name, phone
FROM Patient P, Mothers
WHERE P.patid = Mothers.patid;