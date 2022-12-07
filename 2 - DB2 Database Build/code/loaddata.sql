
CONNECT TO cs421;

--Lab Technician (techid, name, phone) 
insert into LabTech (techid, name, phone) values (101, 'Clayborn Sansome', 4271476004);
insert into LabTech (techid, name, phone) values (102, 'Dewitt Hatry', 3864604020);
insert into LabTech (techid, name, phone) values (103, 'Benedicta Berkowitz', 7164337906);
insert into LabTech (techid, name, phone) values (104, 'Harriot Teggart', 4194916087);
insert into LabTech (techid, name, phone) values (105, 'Philippe Rapley', 6743734082);
insert into LabTech (techid, name, phone) values (106, 'Winni Lumpkin', 7591460022);
insert into LabTech (techid, name, phone) values (107, 'Thoma Tull', 9345252899);
insert into LabTech (techid, name, phone) values (108, 'Flor Farrin', 6215220193);
insert into LabTech (techid, name, phone) values (109, 'Lettie Antecki', 1298535457);
insert into LabTech (techid, name, phone) values (110, 'Owen Swetenham', 8523392873);

--HealthCare Institution (instid, name, phone, email, address, website)
insert into HealthCareInst (instid, name, phone, email, address, website) values (1694, 'Jean Talon Hospital', '9901787836', 'JeanTalonHospital@histats.com', '9 Spaight Junction', 'http://JeanTalonHospital.com/aliquet/nisl/nunc.aspx');
insert into HealthCareInst (instid, name, phone, email, address, website) values (4746, 'Verdun Hospital', '8416161231', 'VerdunHospital@example.com', '568 Service Terrace', 'http://VerdunHospital.com/in/libero/ut.png');
insert into HealthCareInst (instid, name, phone, email, address, website) values (4597, 'Birth House Jeanne Mance', '5096835475', 'BirthHouseJeanneMance@moonfruit.com', '320 Golf View Plaza', 'http://BirthHouseJeanneMance.com/faucibus/posuere/cubilia.aspx');
insert into HealthCareInst (instid, name, phone, email, address, website) values (7734, 'Maison de Naissance Cote-des-Neiges', '7906903376', 'MaisondenaissanceCDN@diigo.com', '26567 Mandrake Way', 'http://MaisondenaissanceCDN.com/a/pede/posuere/non/velit.jpg');
insert into HealthCareInst (instid, name, phone, email, address, website) values (6864, 'Clinique Communautaire de Pointe-Saint-Charles', '7385499188', 'Clinique communautairePSCs@mashable.com', '622 Melby Road', 'http://blogger.com/lectus/quam/sapien/varius.js');
insert into HealthCareInst (instid, name, phone, email, address, website) values (7485, 'Maison de Naissance de lEstrie', '3025082033', 'Maison de Naissance de lEstrie@bbb.org', '692 Banding Street', 'https://MdNlEstrie.edu/consectetuer.js');
insert into HealthCareInst (instid, name, phone, email, address, website) values (2197, 'Maison de Naissance La Riviere', '5757797475', 'MaisonDeNaissance-LaRiviere@guardian.co.uk', '1653 Doe Crossing Street', 'https://MaisonDeNaissance-LaRiviere.org/mus/vivamus.aspx');
insert into HealthCareInst (instid, name, phone, email, address, website) values (1496, 'Lac-Saint-Louis', '5755735578', 'MaisonDeNaissance-LSL@tumblr.com', '19 Clyde Gallagher Park', 'http://MaisonDeNaissance-LSL.com/fusce/lacus/purus.png');
insert into HealthCareInst (instid, name, phone, email, address, website) values (329, 'CLSC de Parc-Extension', '6154457716', 'CLSCdeParc-Extension@tripod.com', '8 Bobwhite Park', 'http://CLSCdeParc-Extension.io/sapien/a/libero.aspx');
insert into HealthCareInst (instid, name, phone, email, address, website) values (2120, 'CLSC Saint Catherine', '3604482302', 'CLSCSaintCatherine@topsy.com', '9836 Bobwhite Avenue', 'https://CLSCSaintCatherine.com/sit/amet/diam/imperdiet.js');
insert into HealthCareInst (instid, name, phone, email, address, website) values (6962, 'Clinique Medicale de lAlternative', '4087611198', 'CliniqueMedicaledelAlternative@jalbum.net', '5 Harbort Lane', 'https://CliniqueMedicaledelAlternative.fm/turpis/ipsum.jsp');

--Birthing Clinic (instid)
insert into BirthingClinic (instid ) values (4597);
insert into BirthingClinic (instid ) values (7734);
insert into BirthingClinic (instid ) values (7485);
insert into BirthingClinic (instid ) values (2197);
insert into BirthingClinic (instid ) values (1496);
insert into BirthingClinic (instid ) values (4746);

--Community Clinic (instid)
insert into  CommunityClinic (instid ) values (6864);
insert into  CommunityClinic (instid ) values (329);
insert into  CommunityClinic (instid ) values (2120);
insert into  CommunityClinic (instid ) values (6962);
insert into  CommunityClinic (instid ) values (1694);


--Midwife (mid, name, phone, email, instid)
--int 329
insert into Midwife (mid, name, phone, email, instid) values (1, 'Marion Girard', 9522039860, 'eattew0@last.fm', 329);
insert into Midwife (mid, name, phone, email, instid) values (2, 'Oona Linthead', 5831301227, 'olinthead1@earthlink.net', 329);
--inst 1496 LAC ST LOUIS
insert into Midwife (mid, name, phone, email, instid) values (9, 'Clarabelle Hart', 7336764509, 'chartless8@gmpg.org', 1496);
insert into Midwife (mid, name, phone, email, instid) values (19, 'Kristal Akaster', 4053707070, 'kakasteri@usgs.gov', 1496);
--inst 2120
insert into Midwife (mid, name, phone, email, instid) values (5, 'Leslie Leimster', 5954964198, 'lleimster4@twitpic.com',  2120);
insert into Midwife (mid, name, phone, email, instid) values (18, 'Byrle Balsillie', 4437622614, 'bbalsillieh@furl.net', 2120);
--inst 2197
insert into Midwife (mid, name, phone, email, instid) values (3, 'Troy Bergstram', 5346369620, 'tbergstram2@simplemachines.org', 2197);
insert into Midwife (mid, name, phone, email, instid) values (11, 'Clayson Divisek', 4262053287, 'cdiviseka@parallels.com', 2197);
insert into Midwife (mid, name, phone, email, instid) values (12, 'Broderick Rouchy', 6113479581, 'brouchyb@indiatimes.com', 2197);
insert into Midwife (mid, name, phone, email, instid) values (13, 'Joyous Heisham', 5629416342, 'jheishamc@unc.edu', 2197);
--inst 4597
insert into Midwife (mid, name, phone, email, instid) values (15, 'Alleen Okenfold', 1298050860, 'aokenfolde@cocolog-nifty.com', 4597);
insert into Midwife (mid, name, phone, email, instid) values (20, 'Emily Attew', 9639486456, 'MGirard@livejournal.com', 4597);
--inst 6864
insert into Midwife (mid, name, phone, email, instid) values (6, 'Woodrow Suttie', 1945541975, 'wsuttie5@multiply.com',  6864);
insert into Midwife (mid, name, phone, email, instid) values (7, 'Ilse Blowick', 3521531446, 'iblowick6@illinois.edu', 6864);
insert into Midwife (mid, name, phone, email, instid) values (16, 'Sarine Peetermann', 2939104521, 'speetermannf@wsj.com', 6864);
--inst 6962
insert into Midwife (mid, name, phone, email, instid) values (4, 'Peyton Leabeater', 4634925190, 'pleabeater3@t-online.de', 6962);
insert into Midwife (mid, name, phone, email, instid) values (17, 'Tracey Divisek', 7716545905, 'tdivisekg@pbs.org', 6962);
--inst 7485
insert into Midwife (mid, name, phone, email, instid) values (8, 'Odelle Glantz', 9675254788, 'oglantz7@salon.com', 7485);
insert into Midwife (mid, name, phone, email, instid) values (14, 'Bernardina Whitnall', 2055754883, 'bwhitnalld@ameblo.jp', 7485);
--inst 7734
insert into Midwife (mid, name, phone, email, instid) values (10, 'Gonzalo Edgeson', 2288750373, 'gedgeson9@ucoz.com',  7734);


--nonBirthingParent(parentid, hcardid, name, phone, address, DOB, bloodType, email, profession)
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1001, 'VHMW69395412', 'Reese Brown', 9818528541, '71318 Fieldstone Street', '12/26/1974', 'O+', 'dcoule0@umn.edu', 'Recruiting Manager');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1002, 'YOYY83913351', 'Teresa Claybourne', 6973837544, '9 Independence Trail', '9/11/1968', 'AB+', 'tclaybourne1@netlog.com', 'Executive Secretary');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1003, 'UJAT90283483', 'Bea Tuison', 2328794530, '01935 Manitowish Crossing', '2/6/1997', 'A+', 'btuison2@artisteer.com', 'Senior Quality Engineer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1004, 'JRJS34800050', 'Cyb Elrick', 9951327645, '1778 Sutteridge Street', '10/8/1971', 'AB-', 'celrick3@wisc.edu', 'Help Desk Technician');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1005, 'WATQ50814990', 'Vivia Abramowitch', 8686116780, '9472 Calypso Trail', '6/14/1993', 'AB+', 'vabramowitch4@yahoo.co.jp', 'Media Manager III');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1006, 'MHWU43489028', 'Alvin Whyte', 2077009929, '10746 Golf Course Point', '7/26/1987', 'AB-', 'awhyte5@upenn.edu', 'Operator');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1007, 'NAMJ25274974', 'Lazarus Hellier', 6673045287, '0571 Kropf Terrace', '2/10/1952', 'B+', 'lhellier6@miitbeian.gov.cn', 'Health Coach IV');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1008, 'OABL20115348', 'Teirtza Edowes', 3512755331, '74277 Anhalt Avenue', '12/17/1974', 'B-', 'tedowes7@elpais.com', 'Librarian');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1009, 'QQTJ89507562', 'Beverie Crosfeld', 5041375497, '048 Forster Park', '6/29/1981', 'B-', 'bcrosfeld8@vistaprint.com', 'Systems Administrator III');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1010, 'TECM88053491', 'Kellen Jandak', 7575755407, '56006 Cody Avenue', '10/19/1962', 'B+', 'kjandak9@sitemeter.com', 'Civil Engineer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1011, 'CZPD74296645', 'Korie Skeemer', 9324373500, '84502 4th Parkway', '8/12/1974', 'AB-', 'kskeemera@chicagotribune.com', 'Administrative Officer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1012, 'HARX56427730', 'Lamont Bolstridge', 4594963041, '59 Muir Pass', '3/2/1984', 'AB-', 'lbolstridgeb@youtu.be', 'Desktop Support Technician');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1013, 'NTTQ99114158', 'Vera Geoghegan', 1293242815, '58 Sullivan Street', '9/10/1995', 'A-', 'vgeogheganc@scientificamerican.com', 'Administrative Officer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1014, 'ALTP24675992', 'Corabella Ludvigsen', 9566319469, '2 John Wall Terrace', '3/16/1957', 'B-', 'cludvigsend@timesonline.co.uk', 'Software Engineer IV');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1015, 'ZGWS33454759', 'Codee Duckhouse', 2722614626, '16 Westridge Junction', '8/23/1995', 'A+', 'cduckhousee@mit.edu', 'Software Test Engineer II');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1016, 'RNPZ03587341', 'Lynda Greenhouse', 9663491968, '04870 Spaight Drive', '11/18/1954', 'AB+', 'lgreenhousef@reddit.com', 'Environmental Specialist');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1017, 'OTEO13644998', 'Hubey Metcalf', 1648194586, '821 Fieldstone Trail', '7/20/1977', 'AB+', 'hmetcalfg@twitter.com', 'Systems Administrator II');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1018, 'WPJJ18327573', 'Junie Hoffner', 9623406627, '22345 Blue Bill Park Lane', '8/26/1960', 'B+', 'jhoffnerh@mtv.com', 'Nuclear Power Engineer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1019, 'FHOP08019311', 'Ira Hinzer', 7189209444, '9 Cherokee Center', '9/4/1958', 'AB+', 'ihinzeri@umn.edu', 'Mechanical Systems Engineer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1020, 'DVSA56667004', 'Penn Trigwell', 6313971585, '6495 Derek Plaza', '1/11/1974', 'B-', 'ptrigwellj@ocn.ne.jp', 'Web Developer IV');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1021, 'LQQF64919356', 'Prisca Ringrose', 9633223328, '736 La Follette Point', '2/16/1969', 'B+', 'pringrosek@timesonline.co.uk', 'Quality Engineer');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1022, 'FIMN55657098', 'Leanor Dibbin', 1461939771, '0 Jana Court', '8/13/1959', 'A-', 'ldibbinl@example.com', 'Associate Professor');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1023, 'TUIY06447697', 'Vina Huggens', 2495964077, '656 Killdeer Center', '2/4/1973', 'B+', 'vhuggensm@is.gd', 'Account Executive');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1024, 'TCIF21296384', 'Adi Veness', 3072808520, '3 Eastlawn Parkway', '7/5/1978', 'AB-', 'avenessn@netvibes.com', 'Director of Sales');
insert into NonBirthingParent (parentid, hcardid, name, phone, address, DOB, bloodType, email, profession) values (1025, 'PDZC89119485', 'Marco Dupont', 3818611046, '2214 Everett Way', '7/30/1964', 'B+', 'lwardleyo@ft.com', 'VP Accounting');

--BIRTHING PARENTS ONLY NO CHILDREN YET
--Patient(patid, hcardid, name, phone, address, DOB, bloodType)
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2001, 'ELUA15368597', 'Victoria Gutierrez', 7138996202, '9627 Sheridan Alley', '1990-10-31', 'B+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2002, 'YQDB87551256', 'Gennie Chapman', 8199365780, '072 Delladonna Parkway', '1982-09-23', 'O+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2003, 'BRPC98246328', 'Marlow McGifford', 6993451748, '9431 Straubel Court', '1987-06-26', 'A+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2004, 'UKZY76209305', 'Tally Hast', 7546394652, '55 Rusk Court', '1977-11-30', 'B-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2005, 'FFAF64947881', 'Lilias Burgill', 3794909835, '46 Rieder Drive', '1980-09-10', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2006, 'ZACB94851070', 'Carlina Tisor', 8056306241, '1 Arrowood Point', '1977-09-28', 'B-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2007, 'ZIRR89843855', 'Cornela Rumgay', 4217686412, '756 Parkside Junction', '1985-08-23', 'B+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2008, 'MHJD48722781', 'Con Tandy', 7783556477, '25 Mallard Terrace', '1985-07-31', 'O+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2009, 'WEHH79511381', 'Devonne Rieger', 8673601948, '56595 Esch Lane', '1978-12-25', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2010, 'ZOMN07389367', 'Antonia Bourdice', 9584013063, '1 Riverside Lane', '1988-12-24', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2011, 'FWLP30920055', 'Jenifer Sproule', 8206247583, '23 Forest Run Court', '1994-10-02', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2012, 'QBHD76016000', 'Izak Prigg', 3801537151, '15 Esker Circle', '1981-11-23', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2013, 'EXZM96316184', 'Olive Frosdick', 7598383938, '38337 Tennyson Way', '1988-10-12', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2014, 'GUGO25191530', 'Ellie Bonome', 9646095796, '83 Crest Line Road', '1970-10-11', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2015, 'CXYQ69088468', 'Haley Kenforth', 2396033785, '40 Cody Circle', '1992-10-11', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2016, 'EADL38048447', 'Cull Mercey', 6045994856, '4517 Loftsgordon Court', '2000-05-12', 'B+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2017, 'LAEH85066268', 'Hurlee McGonigal', 9473978020, '255 Lighthouse Bay Street', '1950-12-24', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2018, 'OFRO07408519', 'Riva Trail', 5092678938, '05 Sundown Street', '1995-04-20', 'B-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2019, 'PMPL95191362', 'Raff Yalden', 4479469871, '20 West Lane', '1987-05-30', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2020, 'UAIA41499249', 'Blondy Kennicott', 5288105866, '81 East Trail', '1999-10-10', 'A+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2021, 'XRCY05570611', 'Audrie Mergue', 1621816862, '329 Paget Parkway', '1986-09-12', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2022, 'YUQF23730883', 'Cathyleen MacGillivray', 2385053405, '6269 2nd Circle', '1997-07-26', 'B-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2023, 'MZTW24721463', 'Augusto McCullough', 8197355713, '6781 Hayes Street', '1981-07-02', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2024, 'CESE28504256', 'Clarine Tankin', 8894352634, '88 Eastlawn Trail', '2001-02-20', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2025, 'XNAW84293181', 'El Bougen', 8042247999, '4689 Almo Hill', '1975-07-17', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2026, 'RTAF25860270', 'Domeniga Cotsford', 8329914220, '6 Pleasure Trail', '1990-10-13', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2027, 'NDCB81758162', 'Dalila Pinckard', 9094274122, '09349 Northfield Avenue', '1985-01-18', 'B+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2028, 'YKRT92594573', 'Cyndi Shew', 6364664097, '0 Cardinal Parkway', '1979-08-08', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2029, 'JAVU29937585', 'Marylinda Btham', 4425745303, '6 Coleman Point', '1998-10-17', 'A-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (2030, 'ZJRM18283745', 'Ariane Price', 3939490922, '43 Northland Street', '1988-10-16', 'A+');

--BirthingParent(patid, email, profession) 
insert into BirthingParent (patid, email, profession) values (2001, 'lholleworth0@dion.ne.jp', 'Speech Pathologist');
insert into BirthingParent (patid, email, profession) values (2002, 'nsalvati1@netlog.com', 'Junior Executive');
insert into BirthingParent (patid, email, profession) values (2003, 'tfuke2@is.gd', 'Structural Analysis Engineer');
insert into BirthingParent (patid, email, profession) values (2004, 'bpennicard3@oaic.gov.au', 'Recruiting Manager');
insert into BirthingParent (patid, email, profession) values (2005, 'lrobatham5@census.gov', 'Payment Adjustment Coordinator');
insert into BirthingParent (patid, email, profession) values (2006,  'ngibbons6@guardian.co.uk', 'Project Manager');
insert into BirthingParent (patid, email, profession) values (2007, 'alasty7@bbc.co.uk', 'Senior Editor');
insert into BirthingParent (patid, email, profession) values (2008, 'lcastanaga8@nhs.uk', 'Budget/Accounting Analyst IV');
insert into BirthingParent (patid, email, profession) values (2009, 'dsoaper9@google.com', 'Librarian');
insert into BirthingParent (patid, email, profession) values (2010, 'sgurnaya@etsy.com', 'Recruiter');
insert into BirthingParent (patid, email, profession) values (2011, 'atrimmeb@drupal.org', 'Quality Control Specialist');
insert into BirthingParent (patid, email, profession) values (2012, 'emaystonc@cnbc.com', 'Sales Associate');
insert into BirthingParent (patid, email, profession) values (2013, 'lwarehamd@photobucket.com', 'Teacher');
insert into BirthingParent (patid, email, profession) values (2014, 'jgowinge@elegantthemes.com', 'Librarian');
insert into BirthingParent (patid, email, profession) values (2015, 'ebromidgef@domainmarket.com', 'Project Manager');
insert into BirthingParent (patid, email, profession) values (2016, 'bescoffreyg@nih.gov', 'Senior Financial Analyst');
insert into BirthingParent (patid, email, profession) values (2017, 'gdoulh@odnoklassniki.ru', 'VP Quality Control');
insert into BirthingParent (patid, email, profession) values (2018, 'lamericii@mapy.cz', 'Speech Pathologist');
insert into BirthingParent (patid, email, profession) values (2019, 'tdoogj@1688.com', 'VP Accounting');
insert into BirthingParent (patid, email, profession) values (2020, 'hbrockwayk@ifeng.com', 'Statistician III');
insert into BirthingParent (patid, email, profession) values (2021, 'jgreystokel@ning.com', 'Marketing Manager');
insert into BirthingParent (patid, email, profession) values (2022, 'wgrosvenorm@chron.com', 'Director of Sales');
insert into BirthingParent (patid, email, profession) values (2023, 'cminneyn@smh.com.au', 'Media Manager I');
insert into BirthingParent (patid, email, profession) values (2024, 'mbreedero@goo.ne.jp', 'Mechanical Systems Engineer');
insert into BirthingParent (patid, email, profession) values (2025,  'ecollinghamp@chicagotribune.com', 'Chief Design Engineer');
insert into BirthingParent (patid, email, profession) values (2026, 'eborelandq@e-recht24.de', 'Administrative Assistant II');
insert into BirthingParent (patid, email, profession) values (2027, 'vdeemr@google.fr', 'Geologist IV');
insert into BirthingParent (patid, email, profession) values (2028, 'kkilgallons@samsung.com', 'Food Chemist');
insert into BirthingParent (patid, email, profession) values (2029, 'vforber4@spiegel.de', 'Chemical Engineer');
insert into BirthingParent (patid, email, profession) values (2030, 'njosephofft@ted.com', 'Database Administrator IV');



--Couple(cid, programInterest, patid, parid)
insert into Couple (cid, programInterest, patid, parentid) values (100001, 0, 2001, 1001);
insert into Couple (cid, programInterest, patid, parentid) values (100002, 1, 2002, 1002);
insert into Couple (cid, programInterest, patid, parentid) values (100003, 1, 2003, 1003);
insert into Couple (cid, programInterest, patid, parentid) values (100004, 0, 2004, 1004);
insert into Couple (cid, programInterest, patid, parentid) values (100005, 1, 2005, 1005);
insert into Couple (cid, programInterest, patid, parentid) values (100006, 1, 2006, 1006);
insert into Couple (cid, programInterest, patid, parentid) values (100007, 0, 2007, 1007);
insert into Couple (cid, programInterest, patid, parentid) values (100008, 1, 2008, 1008);
insert into Couple (cid, programInterest, patid, parentid) values (100009, 1, 2009, 1009);
insert into Couple (cid, programInterest, patid, parentid) values (100010, 0, 2010, 1010);
insert into Couple (cid, programInterest, patid, parentid) values (100011, 1, 2011, 1011);
insert into Couple (cid, programInterest, patid, parentid) values (100012, 1, 2012, 1012);
insert into Couple (cid, programInterest, patid, parentid) values (100013, 1, 2013, 1013);
insert into Couple (cid, programInterest, patid, parentid) values (100014, 1, 2014, 1014);
insert into Couple (cid, programInterest, patid, parentid) values (100015, 0, 2015, 1015);
insert into Couple (cid, programInterest, patid, parentid) values (100016, 0, 2016, 1016);
insert into Couple (cid, programInterest, patid, parentid) values (100017, 1, 2017, 1017);
insert into Couple (cid, programInterest, patid, parentid) values (100018, 0, 2018, 1018);
insert into Couple (cid, programInterest, patid, parentid) values (100019, 1, 2019, 1019);
insert into Couple (cid, programInterest, patid, parentid) values (100020, 0, 2020, 1020);
insert into Couple (cid, programInterest, patid, parentid) values (100021, 1, 2021, 1021);
insert into Couple (cid, programInterest, patid, parentid) values (100022, 1, 2022, 1022);
insert into Couple (cid, programInterest, patid, parentid) values (100023, 0, 2023, 1023);
insert into Couple (cid, programInterest, patid, parentid) values (100024, 1, 2024, 1024);
insert into Couple (cid, programInterest, patid, parentid) values (100025, 0, 2025, 1025);
insert into Couple (cid, programInterest, patid, parentid) values (100026, 0, 2026, null);
insert into Couple (cid, programInterest, patid, parentid) values (100027, 1, 2027, null);
insert into Couple (cid, programInterest, patid, parentid) values (100028, 1, 2028, null);
insert into Couple (cid, programInterest, patid, parentid) values (100029, 0, 2029, null);
insert into Couple (cid, programInterest, patid, parentid) values (100030, 0, 2030, null);

--InfoSession(sessionid, date, time, language, mid)
insert into InfoSession (sessionid, date, time, language, mid) values (200001, '2020-03-26', '18:00', 'French', 5);
insert into InfoSession (sessionid, date, time, language, mid) values (200002, '2022-04-02', '18:00', 'English', 12);
insert into InfoSession (sessionid, date, time, language, mid) values (200003, '2021-04-25', '18:00', 'Spanish', 8);
insert into InfoSession (sessionid, date, time, language, mid) values (200004, '2021-09-21', '18:00', 'French', 20);
insert into InfoSession (sessionid, date, time, language, mid) values (200005, '2021-11-08', '18:00', 'Chinese', 7);
insert into InfoSession (sessionid, date, time, language, mid) values (200006, '2021-08-14', '18:00', 'French', 3);

--parentsInvited(sessionid,cid, attendanceStatus)
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200001, 100001, 0);
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200002, 100002, 0);
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200002, 100003, 1);
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200004, 100004, 1);
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200005, 100005, 1);

insert into parentsInvited (sessionid, cid, attendanceStatus) values (200006, 100006, 0);
insert into parentsInvited (sessionid, cid, attendanceStatus) values (200006, 100007, 1);

--NOTE ONLY FIRST HSA CONSISTENT DATA ATM

--2couples  with 2 pregnancies:
--1
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000001, 2, 1, 0, '2021-10-01', '2021-10-15', '2021-10-25', '2021-10-20', 100001, 20, 15, 4597);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1100001, 1, 1, 0, '2020-01-01', '2020-01-25', '2020-01-20', '2020-01-24', 100001, 20, 15, 4746);
--2
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000002, 2, 2, 1, '2022-01-01', '2022-01-16', '2022-01-20', '2022-01-17', 100002, 12, 11, null);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1100002, 1, 2, 0, '2020-02-01', '2020-02-14', '2020-02-27', '2020-02-25', 100002, 12, 13, 2197);
--5  CUR preg w consistent data for apts and test BUT NOT DUE IN JULY, 5a 5 records Marian mid 1
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000003, 1, 1, 1, '2022-04-01', '2022-04-10', '2022-04-07', '2022-04-03', 100003, 1, 2, null);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000004, 1, 1, 0, '2022-05-01', '2022-05-11', '2022-05-16', '2022-05-9', 100004, 1, null, 2197);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000005, 1, 1, 0, '2022-06-01', '2022-06-02', null, null, 100005, 1, 2, 1496);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000006, 2, 1, 0, '2022-04-01', '2022-04-25', '2022-04-26', '2022-04-20', 100006, 1, null, 4597);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000007, 2, 1, 0, '2022-05-01', '2022-05-21', '2022-05-25', null, 100007, 1, 2, 4746);
-- 5 PAST preg , 5a 1 records Marain mid 1
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000008, 4, 1, 0, '2021-11-01', '2021-11-12', '2021-11-04', '2021-11-06', 100008, 7, 16, 2197);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000009, 3, 1, 0, '2020-09-01', '2020-09-22', '2020-09-25', '2020-09-15', 100009, 3, 11, 2197);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000010, 1, 1, 0, '2021-10-01', '2021-10-24', '2021-10-13', '2021-10-16', 100010, 4, 17, 7734);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000011, 3, 1, 0, '2020-12-01', '2020-12-10', '2020-12-12', '2020-11-29', 100011, 2, 1, 7485);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000012, 5, 1, 1, '2021-03-01', '2021-03-08', '2021-03-19', '2021-03-07', 100012, 17, 4, null);
-- 5 DUE IN JULY THIS YEAR
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000013, 4, 1, 0, '2022-07-01', '2022-07-08', '2022-07-09', '2022-07-12', 100013, 6, 16, 4746);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000014, 5, 1, 0, '2022-07-01', '2022-07-25', '2022-07-20', '2022-07-10', 100014, 6, null, 1496);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000015, 2, 1, 0, '2022-08-01', '2022-07-15', '2022-07-10', '2022-07-25', 100015, 12, 13, 7485);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000016, 4, 1, 0, '2022-07-01', '2022-07-01', '2022-07-01', '2022-07-01', 100015, 7, null, 7734);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000017, 3, 1, 1, '2022-07-01', '2022-07-01', '2022-07-01', null, 100017, 11, 3, 2197);

-- 8 = More than one baby in a single pregnancy ( 2 mothers have had twins twice) AND recorded in DB
--5a 1 records Marain mid 
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000018, 1, 2, 0, '2020-02-01', '2020-01-22', '2020-01-25', '2020-01-15', 100018, 20, 15, 4597);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1100018, 2, 3, 0, '2021-11-01', '2021-11-12', '2021-11-04', '2021-11-06', 100018, 1, 2, 7734);
--fertile 2
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000019, 1, 2, 0, '2020-04-01', '2020-04-22', '2020-04-25', '2020-04-15', 100019, 8, 14, 4597);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1100019, 2, 2, 1, '2021-10-01', '2021-10-24', '2021-10-13', '2021-10-16', 100019, 20, 15, null);

insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000020, 2, 2, 0, '2020-08-01', '2020-08-03', '2020-08-05', '2020-08-02', 100020, 5, 18, 1496);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000021, 1, 2, 0, '2020-07-01', '2020-07-03', '2020-07-05', '2020-07-02', 100021, 10, null, 4746);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000022, 1, 2, 0, '2021-11-01', '2021-11-25', '2021-11-30', '2021-11-27', 100022, 4, 17, 4746);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000023, 3, 2, 0, '2020-06-01', '2020-06-03', '2020-06-04', null, 100023, 15, 20, 7734);
------

--7 : 5b are under the care of midwife 9 or 19 
----not current
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000024, 1, 1, 0, '2021-06-01', '2021-06-17', '2021-06-25', '2021-06-09', 100024, 9, 19, 2197);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000025, 1, 1, 0, '2021-11-01', '2021-11-05', '2021-11-12', '2021-11-26', 100025, 9, 19, 7485);
----Currently pregnant, have not given birth  
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000026, 1, 1, 0, '2022-02-01', '2022-02-20', '2022-02-15', '2022-02-24', 100026, 9, 19, 7485);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000027, 3, 1, 0, '2022-03-01', '2021-03-24', '2021-03-24', '2021-03-06', 100027, 19, 9, 4597);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000028, 2, 1, 0, '2022-05-01', '2022-05-30', '2022-05-14', null, 100028, 19, null, 2197);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000029, 1, 1, 1, '2022-04-01', '2022-04-05', '2022-04-15', null, 100029, 19, null, null);
insert into Pregnancy (pregid, ithPregnancy, numberBabies, isHomeBirth, regRoughDueDate, uSoundDueDate, lastMenstDueDate, finalEstDueDate, cid, primMid, secondMid, instid) values (1000030, 1, 1, 1, '2022-06-01', '2022-06-11', '2022-06-30', null, 100030, 9, 19, null);

--PATIENTS WHO ARE CHILDREN
--Patient(patid, hcardid, name, phone, address, DOB, bloodType)
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3001, null, 'Franny Atwill', 8454299479, '2837 Farmco Road', '2021-11-16', 'O-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3002, null, 'Russell Lody', 7869464839, '5 Lighthouse Bay Trail', '2020-09-13', null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3003, null, 'Ingelbert Pearmine', 7849326298, '97992 Maryland Center', '2021-10-16', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3004, 'PNYQ63454703', 'Duane MacIan', 6693948789, '522 Bunting Drive', '2020-12-01', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3005, 'ROSL99754594', 'Rosalinda Kreutzer', 9186987775, '2825 Michigan Road', '2021-03-10', 'AB+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3006, 'BXCN69816840', 'Caterina Maude', 8962740217, '9 Lukken Way', '2021-10-24', null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3007, 'AEJQ99925508', 'Ruperto Cheevers', 3215847632, '1 Huxley Center', '2020-01-23', null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3008, null, 'Elsbeth Wakefield', 3579686784, '0 International Street', '2020-02-05', 'O+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3009, null, 'Debora Srawley', 9156793667, '9 Lillian Avenue', '2020-02-05', 'O+');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3010, null, 'Heindrick Riha', 8245848957, '05841 Lakeland Way', '2021-06-15', null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3011, null, 'Kane Kelle', 5929183583, '10 Oakridge Drive', '2021-11-01', 'AB-');
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3012, 'LQJB55889722', 'Angelita Place', 8254175392, '23 Awyl Road', null, null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3013, 'LAJV50197202', 'Carter Soap', 8947175392, '45 Windsor Road', null, null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3014, null, 'Nora Bush', 8947175392, '45 Ontario Street', null, null);
insert into Patient (patid, hcardid, name, phone, address, DOB, bloodType) values (3015, null, 'To Be Decided', 9056713000, '2019 Canboro Street', null, null);


--Child (patid, gender, pregid)
--NOTE that currently all pregids assigned bw 1000008-12 BUT 7 more need to be assoc w pregid
insert into Child (patid, gender, pregid) values (3001, 'Female', 1000008);
insert into Child (patid, gender, pregid) values (3002, null, 1000009);
insert into Child (patid, gender, pregid) values (3003, 'Male', 1000010);
insert into Child (patid, gender, pregid) values (3004, 'Male', 1000011);
insert into Child (patid, gender, pregid) values (3005, 'Female', 1000012);
--couples with mult pregnancies (same couple two preg)
insert into Child (patid, gender, pregid) values (3006, 'Male', 1000001); 
insert into Child (patid, gender, pregid) values (3007, 'Female', 1100001);
--twins
insert into Child (patid, gender, pregid) values (3008, 'Male', 1000018);
insert into Child (patid, gender, pregid) values (3009, 'Male', 1000018);
--For 5d "cur preg but have not given birth" - for egs where the CHILD NODE EXISTS BUT BIRTH DATE NULL
insert into Child (patid, gender, pregid) values (3010, null, 1000024);
insert into Child (patid, gender, pregid) values (3011, null, 1000025);
insert into Child (patid, gender, pregid) values (3012, 'Female', 1000003);
insert into Child (patid, gender, pregid) values (3013, 'Female', 1000004);
insert into Child (patid, gender, pregid) values (3014, 'Female', 1000026);
insert into Child (patid, gender, pregid) values (3015, 'Male', 1000027);

--Appointment (aptid, date, time, mid, pregid) 
insert into Appointment (aptid, date, time, mid, pregid) values (300001, '2020-03-18', '12:00', 15, 1000023);
insert into Appointment (aptid, date, time, mid, pregid) values (300002, '2021-12-16', '16:00', 9, 1000026);
insert into Appointment (aptid, date, time, mid, pregid) values (300003, '2022-06-16', '16:00', 7, 1000016);
insert into Appointment (aptid, date, time, mid, pregid) values (300004, '2021-06-03', '14:00', 7, 1000008);
insert into Appointment (aptid, date, time, mid, pregid) values (300005, '2022-01-30', '16:00', 19, 1000027);
insert into Appointment (aptid, date, time, mid, pregid) values (300006, '2021-09-08', '14:00', 7, 1000008);
insert into Appointment (aptid, date, time, mid, pregid) values (300007, '2021-11-05', '10:00', 9, 1000026);
insert into Appointment (aptid, date, time, mid, pregid) values (300008, '2020-10-07', '16:00', 8, 1000019);
insert into Appointment (aptid, date, time, mid, pregid) values (300009, '2022-05-06', '16:00', 9, 1000030);
insert into Appointment (aptid, date, time, mid, pregid) values (300010, '2021-12-13', '16:00', 19, 1000028);
insert into Appointment (aptid, date, time, mid, pregid) values (300011, '2021-08-18', '12:00', 9, 1000025);
insert into Appointment (aptid, date, time, mid, pregid) values (300012, '2020-06-24', '14:00', 2, 1000011);
insert into Appointment (aptid, date, time, mid, pregid) values (300013, '2020-01-22', '12:00', 15, 1000023);
insert into Appointment (aptid, date, time, mid, pregid) values (300014, '2020-06-21', '12:00', 10, 1000021);
insert into Appointment (aptid, date, time, mid, pregid) values (300015, '2022-03-24', '14:00', 6, 1000013);

--5 a M Girard is Midwife 1 : has pregnancies 1000003 - 1000007 , Return March 21 - 25 of 2022
--ASSUME INCLUSE  =  6 records
insert into Appointment (aptid, date, time, mid, pregid) values (300023, '2022-03-25', '12:00', 1, 1000003);
insert into Appointment (aptid, date, time, mid, pregid) values (300025, '2022-03-23', '16:00', 1, 1000007);
insert into Appointment (aptid, date, time, mid, pregid) values (300026, '2022-03-25', '16:00', 1, 1000005);
insert into Appointment (aptid, date, time, mid, pregid) values (300027, '2022-03-24', '16:00', 1, 1000006);
insert into Appointment (aptid, date, time, mid, pregid) values (300024, '2022-03-21', '16:00', 1, 1000005);

insert into Appointment (aptid, date, time, mid, pregid) values (300022, '2022-01-11', '16:00', 1, 1000004);
insert into Appointment (aptid, date, time, mid, pregid) values (300028, '2022-03-27', '14:00', 1, 1000003);
insert into Appointment (aptid, date, time, mid, pregid) values (300029, '2021-12-11', '14:00', 1, 1000003);
insert into Appointment (aptid, date, time, mid, pregid) values (300030, '2021-12-04', '12:00', 1, 1000004);
insert into Appointment (aptid, date, time, mid, pregid) values (300031, '2021-08-27', '12:00', 1, 1000003);
insert into Appointment (aptid, date, time, mid, pregid) values (300032, '2022-02-21', '14:00', 1, 1000004);

--AppointmentNote(noteid, notedate, notetime, observations, aptid)
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400001, '2022-03-25', '16:55', 'Operative regional standardization', 300026);
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400002, '2022-02-21', '14:10', 'Universal static extranet', 300032);
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400003, '2020-10-07', '16:55', 'Integrated even-keeled frame', 300008);
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400004, '2022-12-16', '16:15', 'Fully-configurable solution-oriented benchmark', 300002);
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400005, '2022-06-16', '16:05', 'Organized client-server encoding', 300003);
insert into AptNote (noteid, noteDate, noteTime, observations, aptid) values (400006, '2022-06-16', '16:45', 'Business-focused bandwidth-monitored methodology', 300003);

--PARENT TESTS
--'Victoria Gutierrez' patid = 2001, couple cid = 100001 Q5b
    -- second preg : 1000001--final due day'2021-10-20'
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500001, 'blood iron', 'massa id nisl amet justo morbi ut odio cras', 'too high', '2021-06-17', '2021-06-30', 1000001, 106, 2001, 20);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500002, 'blood iron', 'blandit nam  tempus vel pede morbi', 'too low', '2021-07-10', '2021-07-19', 1000001, 105, 2001, 20);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500003, 'blood iron', 'pede malesuada in imperdiet et commodo', 'just right', '2021-08-31', '2021-09-15', 1000001, 110, 2001, 20);
    --first preg : 1100001
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500004, 'blood iron', 'viverra dapibus nulla suscipit at ipsum ac tellus semper interdum', 'too low', '2020-08-29', '2020-09-17', 1100001, 107, 2010, 20);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500005, 'blood iron', 'mus etiam vel augue  rutrum neque aenean auctor', 'too low', '2021-05-02', '2021-05-21', 1100001, 101, 2006, 20);

--2 other pregs with blood iron test (NOT VICTORIA)
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500006, 'blood iron', 'vel augue neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean', 'low', '2021-01-10', '2021-02-02', 1000012, 110, 2009, 17);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500007, 'blood iron', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', 'low', '2021-04-01', '2021-04-29', 1000024, 110, 2010, 9);

--tests of victorias that arent blood iron
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500008, 'breach ultrasound', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', 'magna vestibulum aliquet ultrices erat tortor', '2021-09-04', '2021-09-19', 1000025, 110, 2001, 9);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500009, 'dating ultrasound', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', null, '2022-02-15', null, 1000013, 106, 2001, 6);

insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500010, 'routine ultrasound', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 'purus eu magna vulputate luctus cum sociis natoque penatibus ', '2020-07-23', '2020-07-25', 1000019, 104, 3006, 8);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500011, 'hormone levels', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', '2020-04-18', '2022-04-20', 1000023, 110, 2007, 15);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500012, 'routine ultrasound', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 'elit proin risus praesent lectus vestibulum', '2019-10-29', '2019-11-08', 1100002, 106, 2002, 12);

--TESTS FOR CHILDREN
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500016, 'mi in porttitor pede justo eu massa', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 'tincidunt in leo maecenas pulvinar lobortis s in felis eu sapien', '2022-01-29', '2022-02-10', 1000028, 103, 3012, 19);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500017, 'eleifend quam a', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', 'faucibus orci luctus et ultrices posuere cubilia', '2022-04-14', '2022-04-25', 1000007, 110, 3007, 1);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500018, 'lobortis convallis tortor risus', 'mattis pulvinar nulla pede  elit ac nulla sed', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '2021-09-21', '2021-09-30', 1000002, 101, 3011, 12);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500019, 'quis odio consequat varius integer', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', '2021-08-19', '2021-08-22', 1000008, 105, 3004, 7);
insert into Test (testid, testType, sample, result, dateSampleTaken, dateLabWorkCompleted, pregid, techid, patid, mid) values (500020, 'nonummy integer non', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 'maecenas leo id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', '2021-01-06', '2021-01-18', 1000012, 106, 3001, 17);
