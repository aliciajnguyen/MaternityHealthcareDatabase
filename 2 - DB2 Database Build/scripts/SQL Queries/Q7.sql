ALTER TABLE Test ADD CONSTRAINT dateConsistent
    CHECK(dateSampleTaken < dateLabWorkCompleted)
;
--try
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500013, 'routine ultrasound', 'fine', '2020-10-29', '2019-10-08', 1100002, 106, 2002, 12);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500014, 'routine ultrasound', 'fine', '2019-12-29', '2019-10-08', 1100002, 106, 2002, 12);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500015, 'routine ultrasound', 'fine', '2019-10-20', '2019-10-08', 1100002, 106, 2002, 12);
