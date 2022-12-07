-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.


--Patient(patid, hcardid, name, phone, address, DOB, bloodType)
CREATE TABLE Patient
(
   patid     INTEGER       NOT NULL
  ,hcardid   CHAR(12)      
  ,name      VARCHAR(50)   NOT NULL
  ,phone     BIGINT        NOT NULL     CHECK (regexp_like(phone, '\d{10}'))
  ,address   VARCHAR(100)  NOT NULL
  ,DOB       DATE          
  ,bloodType VARCHAR(3)                 CHECK (regexp_like(bloodType, '((O|A|B|AB))((\+|\-))'))
  ,PRIMARY KEY(patid)
);

--birthingParent(patid, email, profession) 
CREATE TABLE BirthingParent
(
   patid      INTEGER       NOT NULL
  ,email      VARCHAR(50)   NOT NULL
  ,profession VARCHAR(50)   NOT NULL
  ,FOREIGN KEY(patid) REFERENCES Patient(patid) 
  ,PRIMARY KEY(patid)
);

--nonBirthingParent(parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) 
--page 1 tells us which things are optional vs not (not null)
CREATE TABLE NonBirthingParent
(
   parentid   INTEGER       NOT NULL
  ,hcardid    CHAR(12)      
  ,name       VARCHAR(50)   NOT NULL
  ,phone      BIGINT        NOT NULL    CHECK (regexp_like(phone, '\d{10}'))
  ,address    VARCHAR(100)  
  ,DOB        DATE          NOT NULL
  ,bloodType  VARCHAR(3)                CHECK (regexp_like(bloodType, '((O|A|B|AB))((\+|\-))'))
  ,email      VARCHAR(50)   
  ,profession VARCHAR(50)   NOT NULL
  ,PRIMARY KEY(parentid)
);

--Couple(cid, programInterest, patid)
--	Foreign Key: Patid references birthingParent, representing In relationship
--    Parid references nonBirthingParent, representing In relationship
-- 1 is true and 0 is false
CREATE TABLE Couple
(
  cid                 INTEGER   NOT NULL
  ,programInterest    SMALLINT              DEFAULT 0
  ,patid              INTEGER   NOT NULL
  ,parentid           INTEGER 
  ,FOREIGN KEY (patid)    REFERENCES BirthingParent(patid)
  ,FOREIGN KEY (parentid) REFERENCES NonBirthingParent(parentid)
  ,PRIMARY KEY(cid)
);

--Lab Technician (techid, name, phone) 
CREATE TABLE LabTech
(
  techid  INTEGER      NOT NULL
  ,name    VARCHAR(50) NOT NULL
  ,phone   BIGINT      NOT NULL  CHECK (regexp_like(phone, '\d{10}'))
  ,PRIMARY KEY(techid)
);


--HealthCare Institution (instid, name, phone, email, address, website)
--website optional in P1 desc
CREATE TABLE  HealthCareInst
(
    instid  INTEGER       NOT NULL
    ,name   VARCHAR(50)   NOT NULL
    ,phone  BIGINT        NOT NULL   CHECK (regexp_like(phone, '\d{10}'))
    ,email  VARCHAR(50)   NOT NULL
    ,address VARCHAR(100) NOT NULL
    ,website VARCHAR(150)
    ,PRIMARY KEY(instid)
);

--Birthing Clinic (instid)
CREATE TABLE BirthingClinic
(
  instid    INTEGER     NOT NULL
  ,FOREIGN KEY (instid) REFERENCES HealthCareInst(instid)
  ,PRIMARY KEY(instid)
);

--Community Clinic (instid)
CREATE TABLE CommunityClinic
(
  instid    INTEGER     NOT NULL
  ,FOREIGN KEY (instid) REFERENCES HealthCareInst(instid)
  ,PRIMARY KEY(instid)
);

--Midwife (mid, name, phone, email, instid)
--	Foreign Keys: Instid references MidwifeServiceClinic, representing belongs relationship
CREATE TABLE Midwife
(
  mid      INTEGER      NOT NULL
  ,name    VARCHAR(50)  NOT NULL
  ,phone   BIGINT       NOT NULL    CHECK (regexp_like(phone, '\d{10}'))
  ,email   VARCHAR(50)  NOT NULL
  ,instid  INTEGER      NOT NULL
  ,FOREIGN KEY (instid) REFERENCES HealthCareInst(instid)
  ,PRIMARY KEY(mid)
);

--Pregnancy(pregid, ithPregnancy, numberBabies, homebirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primaryPracid, secondPracid, instid)
--	Foreign keys:
--		cid references Couple, representing belongs relationship
--		primaryPracid references Midwife(mid), representing the primarilyAssigned relationship
--		secondPracid references Midwife, representing the secondarilyAssigned relationship
--		instid references BirthingClinic, representing the clinicBirthLocation relationship
---- for isHomeBirth : 1 is true and 0 is false
CREATE TABLE Pregnancy
(
  pregid               INTEGER  NOT NULL
  ,ithPregnancy        INTEGER  NOT NULL
  ,numberBabies        INTEGER      DEFAULT 1
  ,isHomeBirth         SMALLINT     DEFAULT 0
  ,regRoughDueDate     DATE     NOT NULL
  ,uSoundDueDate       DATE
  ,lastMenstDueDate    DATE
  ,finalEstDueDate     DATE
  ,cid                 INTEGER  NOT NULL
  ,primMid             INTEGER
  ,secondMid           INTEGER
  ,instid              INTEGER
  ,FOREIGN Key (cid)        REFERENCES Couple(cid)  
  ,FOREIGN Key (primMid)    REFERENCES Midwife(mid)  
  ,FOREIGN Key (secondMid)  REFERENCES Midwife(mid)  
  ,FOREIGN Key (instid)     REFERENCES BirthingClinic(instid) 
  ,PRIMARY KEY(pregid)
);

--Child (patid, gender, pregid) 
CREATE TABLE Child
(
   patid     INTEGER       NOT NULL
  ,gender    VARCHAR(12)   
  ,pregid    INTEGER       NOT NULL  
  ,FOREIGN KEY(patid)     REFERENCES Patient(patid) 
  ,FOREIGN KEY(pregid)    REFERENCES Pregnancy(pregid)
  ,PRIMARY KEY(patid)
);

--InfoSession(sessionid, date, time, language, mid)
--Foreign Keys:
--		sessionid references InfoSession
--		mid references Midwife, representing the MidwifeHost relation
CREATE TABLE InfoSession
(
  sessionid    INTEGER      NOT NULL
  ,date        DATE         NOT NULL
  ,time        TIME         NOT NULL
  ,language    VARCHAR(10)  NOT NULL
  ,mid         INTEGER      NOT NULL
  ,FOREIGN KEY(mid)       REFERENCES Midwife(mid)
  ,PRIMARY KEY(sessionid)
);	

--parentsInvited(sessionid,cid, attendanceStatus)
--Foreign Keys:
--    cid references Couple
--		sessionid references InfoSession
--COUPLES CANNOT REGISTER FOR THE SAME INFO SESSION TWICE
-- 1 is attended and 0 is didn't attend
CREATE TABLE parentsInvited
(
  sessionid         INTEGER     NOT NULL
  ,cid              INTEGER     NOT NULL
  ,attendanceStatus SMALLINT
  ,FOREIGN KEY(sessionid) REFERENCES InfoSession(sessionid) 
  ,FOREIGN KEY(cid)       REFERENCES Couple(cid) 
  ,PRIMARY KEY(sessionid,cid)
);	

--Appointment (aptid, date, time, mid, pregid) 
--	Foreign Keys:
--mid references Midwife, representing participantsApt		
--pregid references Pregnancy, representing participantsApt
CREATE TABLE Appointment
(
  aptid    INTEGER    NOT NULL
  ,date    DATE       NOT NULL
  ,time    TIME       NOT NULL
  ,mid     INTEGER    NOT NULL
  ,pregid  INTEGER    NOT NULL
  ,FOREIGN KEY(mid)     REFERENCES Midwife(mid) 
  ,FOREIGN KEY(pregid)  REFERENCES Pregnancy(pregid) 
  ,PRIMARY KEY(aptid)
);	

--AppointmentNote(noteid, notedate, notetime, observations, aptid)
--	Foreign Key:
--		Aptid references Appointment, representing notesOf relationship
CREATE TABLE AptNote
(
  noteid        INTEGER       NOT NULL
  ,noteDate     DATE          NOT NULL
  ,noteTime     TIME          NOT NULL
  ,observations VARCHAR(200)  NOT NULL
  ,aptid        INTEGER       NOT NULL
  ,FOREIGN KEY(aptid)         REFERENCES Appointment(aptid)
  ,PRIMARY KEY(noteid)
);	

--Test (testid, type, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) 
--	Foreign keys:
--		pregId references Pregnancy, representing pertainingTo relationship
--    techid references Lab Technician, representing processes relationship
--    patid references birthingParent or Child, representing prescribedFor relationship
--    midif references Midwife, representing prescribedBy relationship
CREATE TABLE Test
(
  testid                  INTEGER       NOT NULL
  ,testType                VARCHAR(50)   NOT NULL
  ,sample                 VARCHAR(200) 
  ,result                 VARCHAR(200)
  ,dateSampleTaken        DATE 
  ,dateLabWorkCompleted   DATE
  ,pregid                 INTEGER       NOT NULL
  ,techid                 INTEGER
  ,patid                  INTEGER       NOT NULL
  ,mid                    INTEGER       NOT NULL
  ,FOREIGN KEY(pregid)    REFERENCES Pregnancy(pregid)
  ,FOREIGN KEY(techid)    REFERENCES LabTech(techid)
  ,FOREIGN KEY(patid)     REFERENCES Patient(patid)
  ,FOREIGN KEY(mid)       REFERENCES Midwife(mid)
  ,PRIMARY KEY(testid)
);	


