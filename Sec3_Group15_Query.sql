SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `EventManagement` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `EventManagement`;

--
-- Table structure for table `event` 
--

CREATE TABLE events(
  EEVENT_ID      varchar(4)       NOT NULL    primary key,
  ETYPE          nvarchar(2)      NOT NULL,
  EDATE          date             NOT NULL,
  ELOCATION      nvarchar(100)    NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events` 
--

INSERT INTO events ( EEVENT_ID, ETYPE, EDATE, ELOCATION) VALUES
('1001', 'PE', '2020-01-07', '250 Rt 59, Airmont NY 10901'),
('1004', 'PE', '2020-02-12', '297 Grant Avenue,Auburn NY 13021'),
('2006', 'CE', '2021-06-02', '3949 Route 31, Clay NY 13041'),
('3002', 'LE', '2022-09-12', '30 Catskill, Catskill NY 12414'),
('2008', 'LE', '2021-10-02', '311 RT 9W, Glenmont NY 12077'),
('1007', 'OE', '2020-05-15', '1549 Rt 9, Halfmoon NY 12065'),
('1008', 'CE', '2020-07-17', '425 Route 31, Macedon NY 14502'),
('2005', 'CE', '2021-02-12', '288 Larkin, Monroe NY 10950'),
('2012', 'OE', '2021-12-02', '650 Main Ave, Norwalk CT 6851'),
('1009', 'CE', '2020-12-23', '180 River Rd, Lisbon CT 6351');

--
-- Table structure for table `employee`
--

CREATE TABLE employee(
  EMP_ID          varchar(6)      NOT NULL    primary key,
  EMP_FNAME       nvarchar(20)    NOT NULL,
  EMP_LNAME       nvarchar(20)    NOT NULL,
  EMP_SALARY      decimal(10,2)   NOT NULL,
  EMP_DEPARTMENT  varchar(100)    NOT NULL,
  EEVENT_ID       varchar(4)      NOT NULL,
  EMTELLNUM       varchar(12)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO employee ( EMP_ID, EMP_FNAME, EMP_LNAME, EMP_SALARY, EMP_DEPARTMENT, EEVENT_ID, EMTELLNUM) VALUES
('034365', 'Naruto', 'Uzumaki', 50000, 'Event Management'                     , '2005', NULL),
('034369', 'Sasuke', 'Uchiha' , 49000, 'Event Designs'                        , '2008','093-231-8764'),
('034345', 'Sakura', 'Haruno' , 48000, 'Event Coordination'                   , '1008','082-452-1235'),
('034341', 'Kakashi','Hatake' , 50000, 'Event Management'                     , '1007', NULL),
('034111', 'Boruto', 'Uzumaki', 49000, 'Event Designs'                        , '2006','084-392-8871'),
('034257', 'Sarada', 'Uchiha' , 52000, 'Special Event Planning Service'       , '1004','080-047-9735'),
('034777', 'Neji'  , 'Hyuga'  , 28000, 'Workshops/Seminars training'          , '3002', NULL),
('034546', 'Hinata', 'Hyuga'  , 47000, 'Event Entertainment'                  , '1009','096-327-4658'),
('034648', 'Kiba'  , 'Inuzuka', 30000, 'Conference and Venue Sourcing Service', '2005','094-483-6158'),
('034554', 'Shino', 'Aburame' , 30000, 'Conference and Venue Sourcing Service', '1001','096-887-6314');

--
-- Table structure for table `sponsor` ***30 rec!***
--

CREATE TABLE  sponsor( 
  SP_ID           varchar(6)      NOT NULL primary key,
  SPNAME          nvarchar(20)    NOT NULL,
  SPBUDGET        decimal(10,2)   NOT NULL,
  EEVENT_ID       varchar(4)      NOT NULL,
  SPTELLNUM       varchar(12)
);

--
-- Dumping data for table `sponsor` 
--


INSERT INTO sponsor ( SP_ID, SPNAME, SPBUDGET, EEVENT_ID, SPTELLNUM) VALUES
('115131', 'Amazon Web Services'              ,1000000 ,'1007' ,'081-810-4724'),
('115132', 'McDonalds'                        ,100000  ,'2005' ,'080-591-9473'),
('115133', 'Puma'                             ,250000  ,'1009' ,'080-591-9573'),
('115134', 'PepsiCo'                          ,500000  ,'2006' ,'080-591-9637'),
('123201', 'BIG HIT ENTERTAINMENT'            ,300000  ,'1008' ,'080-592-3573'),
('123202', 'BRAVADO'                          ,120000  ,'1009' ,'080-592-3727'),
('123203', 'SAMGSOM'                          ,340000  ,'1001' ,'080-592-3937'),
('123204', 'Blend 285'                        ,85000   ,'1007' ,'080-592-5137'),
('123255', 'Johnny Walker'                    ,850000  ,'2008' ,'080-592-5727'),
('123256', 'Regency'                          ,600000  ,'3002' ,'080-592-5873'),
('123257', 'Jack Daniel'                      ,1000000 ,'1004' ,'080-592-5972'),
('123244', 'NVAK FOUNDA­TION'                  ,340000  ,'2012' ,'080-592-6849'),
('123245', 'GENER8TOR'                        ,400000  ,'2007' ,'080-592-7423'),
('123246', 'Warner Music Group'               ,90000   ,'2005' ,'080-592-7832'),
('123247', 'Sony Music Entertainment'         ,800000  ,'2005' ,'080-592-9433'),
('215131', 'Amazon Web Services'              ,2000000 ,'2012' ,'080-592-9472'),
('123277', 'Universal Music Publishing Group' ,600000  ,'1007' ,'080-592-9473'),
('123288', 'YG Entertainment'                 ,1000000 ,'1004' ,'080-592-9637'),
('123287', 'JYP Entertainment'                ,1200000 ,'1007' ,'080-596-0737'),
('123286', 'SM Entertainment'                 ,980000  ,'2012' ,'080-596-1157'),
('223201', 'BIG HIT ENTERTAINMENT'            ,980000  ,'1004' ,'080-596-1167'),
('115144', 'Swensens'                         ,870000  ,'2005' ,'080-596-5071'),
('215132', 'McDonalds'                        ,830000  ,'2006' ,'080-596-5175'),
('115139', 'Laem Charoen Seafood'             ,780000  ,'1008' ,'080-596-5177'),
('115169', 'AU BON PAIN'                      ,1230000 ,'2008' ,'080-596-5437'),
('223247', 'Sony Music Entertainment'         ,300000  ,'3002' ,'080-596-5737'),
('115199', 'BONCHON'                          ,540000  ,'3002' ,'080-596-5873'),
('115187', 'COCO FRESH TEA'                   ,820000  ,'2006' ,'080-596-6017'),
('215199', 'BONCHON'                          ,24000   ,'1008' ,'080-596-6337'),
('315132', 'McDonalds'                        ,450000  ,'1009' ,'080-596-6837'),
('223246', 'Warner Music Group'               ,240000  ,'1009' ,'080-596-6973');

--
-- Table structure for table `ticket`
--

CREATE TABLE ticket(
  TK_ID           varchar(6)    NOT NULL    primary key,
  TKTYPE          char(2)       NOT NULL,
  TKDATE          date          NOT NULL, 
  EEVENT_ID       varchar(4)    NOT NULL,
  TSEAT           varchar(3)
);

--
-- Dumping data for table `ticket` 
--

INSERT INTO ticket ( TK_ID, TKTYPE, TKDATE, EEVENT_ID, TSEAT) VALUES
('100101', 'RS', '2020-01-07', '1001', 'A01'),
('100102', 'RS', '2020-01-07', '1001', 'A02'),
('100103', 'RS', '2020-01-07', '1001', 'A04'),
('100401', 'RS', '2020-02-12', '1004', 'A01'),
('100402', 'RS', '2020-02-12', '1004', 'A03'),
('100403', 'RS', '2020-02-12', '1004', 'B04'),
('100701', 'GA', '2020-05-15', '1007', 'B02'),
('100702', 'GA', '2020-05-15', '1007', 'B07'),
('100703', 'VP', '2020-05-15', '1007', 'B08'),
('100801', 'GA', '2020-07-17', '1008', 'D03'),
('100802', 'VP', '2020-07-17', '1008', 'D02'),
('100803', 'VP', '2020-07-17', '1008', 'D01'),
('100901', 'OP', '2020-12-23', '1009', 'E05'),
('100902', 'MP', '2020-12-23', '1009', 'E06'),
('100903', 'CD', '2020-12-23', '1009', 'E07'),
('200501', 'OP', '2021-02-12', '2005', 'B08'),
('200502', 'OP', '2021-02-12', '2005', 'B09'),
('200503', 'ED', '2021-02-12', '2005', 'B10'),
('200601', 'OP', '2021-06-02', '2006', 'P01'),
('200602', 'MP', '2021-06-02', '2006', 'P04'),
('200603', 'CD', '2021-06-02', '2006', 'P05'),
('200801', 'GA', '2021-10-02', '2008', 'B09'),
('200802', 'VP', '2021-10-02', '2008', 'B10'),
('200803', 'GA', '2021-10-02', '2008', 'C01'),
('201201', 'GA', '2021-12-02', '2012', 'Z01'),
('201202', 'GA', '2021-12-02', '2012', 'Z02'),
('201203', 'GA', '2021-12-02', '2012', 'Z05'),
('300201', 'VP', '2022-09-12', '3002', 'A01'),
('300202', 'VP', '2022-09-12', '3002', 'B01'),
('300203', 'VP', '2022-09-12', '3002', 'C01');

--
-- Table structure for table `audience`
--

CREATE TABLE audience(
  AUD_ID          varchar(4)       NOT NULL    primary key,
  AUDNAME         varchar(20)      NOT NULL,
  TK_ID           varchar(6)       NOT NULL,
  AUDTELLNUM      varchar(12)
);

--
-- Dumping data for table `audience` 
--

INSERT INTO audience( AUD_ID, AUDNAME, TK_ID, AUDTELLNUM) VALUES
('0101', 'Joyce Byers'        ,'100101','091-192-9787'),
('0102', 'Jim Hopper'         ,'100102','094-192-9962'),
('0507', 'Mike Wheeler'       ,'100402','099-194-1959'),
('0502', 'Eleven'             ,'100801','098-194-1994'),
('0202', 'Dustin Henderson'   ,'100802','098-194-2499'),
('0404', 'Lucas Sinclair'     ,'100901','097-194-2697'),
('0304', 'Nancy Wheeler'      ,'100902','095-194-4493'),
('0405', 'Jonathan Byers'     ,'200503','098-194-4541'),
('0402', 'Karen Wheeler'      ,'100703','061-159-4566'),
('0904', 'Martin Brenner'     ,'200502','065-995-9798'),
('0906', 'Will Byers'         ,'200601','065-995-9663'),
('0103', 'Max Mayfield'       ,'200602','064-939-9369'),
('0506', 'Steve Harrington'   ,'200603','065-328-2269'),
('0309', 'Billy Hargrove'     ,'100401','093-554-5693'),
('0606', 'Bob Newby'          ,'100803','092-926-5493'),
('0104', 'Sam Owens'          ,'100903','093-594-9163'),
('0509', 'Robin Buckley'      ,'200501','093-564-9661'),
('0501', 'Erica Sinclair'     ,'100103','061-493-9935'),
('0609', 'Murray Bauman'      ,'200802','090-396-4298'),
('0704', 'Rachel Green'       ,'200803','099-398-2946'),
('0407', 'Ross Geller'        ,'201201','065-323-9828'),
('0707', 'Monica Geller'      ,'200801','093-391-4293'),
('0305', 'Phoebe Buffay'      ,'201202','093-362-6199'),
('0406', 'Joey Tribbiani'     ,'100701','080-894-9456'),
('0607', 'Chandler Bing'      ,'100702','061-164-4564'),
('0105', 'Michel Tribbiani'   ,'300203','092-651-4163'),
('0601', 'Gina Tribbiani'     ,'300201','065-329-7932'),
('0907', 'Alex Garrett'       ,'201203','064-329-4298'),
('0901', 'Bobbie Morganstern' ,'300202','062-326-9228'),
('0809', 'Zach Miller'        ,'100403','093-393-9228')
;

--
-- Table structure for table `foodbevzone` ***30 rec!***
--

CREATE TABLE foodbevzone(
  FBNAME          nvarchar(60)     NOT NULL,
  FBOWNER          nvarchar(100)    NOT NULL,
  FBRENT          int(6)           NOT NULL, 
  FBTELLNUM       varchar(12),
  EEVENT_ID       varchar(4)       NOT NULL,
  FBZONE          char(1)          NOT NULL,
  CONSTRAINT CHK_FBZONE	CHECK (FBZONE in ('A','B','C','D','E','F','G','H','I','J','K','L'))
);

--
-- Dumping data for table `foodbevzone`
--


INSERT INTO foodbevzone( FBNAME, FBOWNER, FBRENT, FBTELLNUM, EEVENT_ID, FBZONE) VALUES
( 'The Lunch Box'        ,'Optimus Prime'   , 100101  ,'088-937-2834','1001','A'),
( 'The Extreme Burger'   ,'Harry Potter'    , 100405  ,'093-454-9262','1004','F'),
( 'The Grill Queen'      ,'Bilbo Baggins'   , 100903  ,'098-598-9946','1009','B'),
( 'Chickpea Chow'        ,'Ace Ventura'     , 100803  ,'093-459-5168','1008','D'),
( 'Eat Fest'             ,'Sarah Connor'    , 300204  ,'093-459-2997','3002','G'),
( 'Fries Empire'         ,'Katniss Everdeen', 300209  ,'098-616-2959','3002','E'),
( 'The Cake Shack'       ,'Jack Burton'     , 100805  ,'093-163-9369','1008','A'),
( 'Tamale Train'         ,'Axel Foley'      , 202105  ,'061-362-9693','2012','J'),
( 'The Pizza Cart'       ,'Obi-Wan Kenobi'  , 100104  ,'061-294-4919','1001','D'),
( 'The Fish Boat'        ,'Luke Skywalker'  , 201209  ,'098-156-4491','2012','H'),
( 'Mobile Dogs'          ,'Forrest Gump'    , 201204  ,'093-296-9551','2012','I'),
( 'Outside Eatery'       ,'Daniel Plainview', 100710  ,'093-269-9461','1007','E'),
( 'The Urban Grill'      ,'Hannibal Lecter' , 200804  ,'098-192-4491','2008','F'),
( 'The Streatery'        ,'Doc Brown'       , 200805  ,'098-639-9628','2008','G'),
( 'The Juice Camion'     ,'Jack Sparrow'    , 100804  ,'098-639-9398','1008','C'),
( 'Food Truck Fanatic'   ,'Marty McFly'     , 200506  ,'098-626-9949','2005','L'),
( 'Street Fair'          ,'Michael Corleone', 200604  ,'093-429-9649','2006','C'),
( 'The Taco Station'     ,'Tyler Durden'    , 100109  ,'062-149-5979','1001','E'),
( 'Heathy House'         ,'Han Solo'        , 200609  ,'062-149-5929','2006','B'),
( 'Guerilla Taco'        ,'Ethan Hunt'      , 100905  ,'080-798-5155','1009','H'),
( 'The Minions'          ,'James Bond'      , 100402  ,'093-469-4292','1004','E'),
( 'The Omelette Truck'   ,'Archie Andrews'  , 200803  ,'062-142-4199','2008','E'),
( 'Sunrise Scrambles'    ,'Betty Cooper'    , 100703  ,'062-164-9594','1007','I'),
( 'Pancake Flippers'     ,'Veronica Lodge'  , 200605  ,'092-898-4871','2006','F'),
( 'Hot Potatoes'         ,'Jughead Jones'   , 100904  ,'092-898-4483','1009','A'),
( 'Rocky Mountain Pizza' ,'Hermione Lodge'  , 200504  ,'093-454-4259','2005','K'),
( 'Bacon Buggy'          ,'Cheryl Blossom'  , 100409  ,'093-459-9964','1004','C'),
( 'The Lunch Truck'      ,'Josie McCoy'     , 100704  ,'062-146-4998','1007','F'),
( 'Taco Amigos'          ,'Alice Cooper'    , 200503  ,'062-146-6266','2005','H'),
( 'The Lunch'            ,'Josie McCoy'     , 100702  ,'093-446-9429','1007','D'),
( 'Taco Bell'            ,'Alice Cooper'    , 200508  ,'098-624-9391','2005','G');

--
-- Table structure for table `artist` (TRANSACTION table at least 30 records)
--

CREATE TABLE artist(
  AR_ID          varchar(4)       NOT NULL primary key,
  ARNAME         nvarchar(100)    NOT NULL,
  EEVENT_ID      varchar(4)       NOT NULL,
  ARTELLNUM      varchar(12)
);

--
-- Dumping data for table `artist` (Master table 10 records)
--

INSERT INTO artist ( AR_ID, ARNAME, ARTELLNUM, EEVENT_ID) VALUES
('1230', 'Backstreet Boys','094-552-4349', '1007'),
('1231', 'Ariana Grande'  ,'086-937-8126', '1008'),
('1232', 'Katy Perry'     ,'082-125-8372', '1009'),
('1233', 'Ed Sheeran'     ,'093-627-7254', '3002'),
('1234', 'Taylor Swift'   ,'081-847-7764', '2005'),
('1235', 'Shawn Mendes'   ,'098-847-3487', '2006'),
('1236', 'The Weeknd'     ,'082-742-5374', '2008'),
('1237', 'Coldplay'       ,'093-324-3729', '2012'),
('1238', 'Little Mix'     ,'098-345-9992', '1004'),
('1239', 'Bruno Mars'     ,'083-837-6374', '1001'),
('1240', 'Ruel'           ,'097-265-6151', '1009'),
('1241', 'Doja Cat'       ,'061-159-1978', '2005'),
('1242', 'Niki'           ,'093-296-9551', '2006'),
('1243', 'BTS'            ,'082-823-9193', '3002'),
('1244', 'Sam Smith'      ,'098-325-3651', '1009'),
('1245', 'Blackpink'      ,'089-791-5072', '1001'),
('1246', 'The toys'       ,'086-668-4439', '3002'),
('1247', 'Zara Larsson'   ,'064-939-6168', '1004'),
('1248', 'Lauv'           ,'061-565-1666', '1007'),
('1249', 'Dua Lipa'       ,'092-649-6649', '1009'),
('1250', 'Babe Rexha'     ,'098-598-9897', '2006'),
('1251', 'Troye Sivan'    ,'065-269-9361', '2005'),
('1252', 'Ink Warunthorn' ,'062-996-9661', '2008'),
('1253', 'Sia'            ,'081-789-4289', '2012'),
('1254', 'Charlie Puth'   ,'092-984-9999', '1001'),
('1255', 'Keshi'          ,'093-003-8888', '3002'),
('1256', 'Lady Gaga'      ,'082-823-6544', '2008'),
('1257', 'DAY6'           ,'087-774-3322', '2008'),
('1258', 'Winner'         ,'093-359-9916', '2012'),
('1259', 'ZAYN'           ,'062-546-5566', '1004'),
('1260', 'Rihanna'        ,'061-151-4669', '2005'),
('1261', 'Justin Bieber'  ,'097-997-9596', '2006'),
('1262', 'Selena Gomez'   ,'065-269-9396', '1009'),
('1263', 'Billie Eilish'  ,'093-515-5979', '3002'),
('1264', 'The 1975'       ,'061-594-9194', '1007'),
('1265', 'RINI'           ,'093-515-5469', '2012'),
('1266', 'Beyonce'        ,'098-396-4945', '2008'),
('1267', 'Conan Gray'     ,'092-396-6929', '1009'),
('1268', 'Cardi B'        ,'061-141-9649', '2005'),
('1269', 'Destinys Child' ,'062-164-6994', '2006');

------------------ -- UPDATE ----------------------

UPDATE sponsor
SET EEVENT_ID = '1007'
WHERE SP_ID = '123245';

------------------ -- ALTER -----------------------

ALTER TABLE audience
ADD GENDER char(1);

ALTER TABLE audience
DROP COLUMN GENDER;


--------------------- -- BASIC QUERIES ------------------
-- Q01 
select EMP_FNAME from employee
where EMP_FNAME like "S%";

-- Q02
select EMP_DEPARTMENT as "DEPARTMENT",count(EMP_ID) as "num_employee" from employee
group by EMP_DEPARTMENT;

-- Q03
select concat(EMP_FNAME," ",EMP_LNAME)  as "Employee 's full name " from employee
where EMP_SALARY <  40000;

-- Q04
 select concat(EMP_FNAME," ",EMP_LNAME)  as "Employee 's full name " from employee
 where EMP_DEPARTMENT = "Conference and Venue Sourcing Service";

-- Q05
select concat(EMP_FNAME," ",EMP_LNAME)  as "Employee 's full name " from employee
where EMTELLNUM is null;

-- Q06
select TKTYPE,count(TK_ID) as "num_ticket" from ticket
group by TKTYPE;

-- Q07
select EEVENT_ID, count(SP_ID) as "num_Sponsor"  from sponsor
group by EEVENT_ID;

-- Q08
SELECT MIN(SPBUDGET) as "min_budget", MAX(SPBUDGET) as "max_budget" FROM sponsor;

-- Q09
SELECT * FROM artist
ORDER BY ARNAME Asc;

-- Q10
SELECT FBZONE as "Zone", FBNAME as "Store name", FBOWNER as "Owner"
FROM foodbevzone
ORDER BY FBZONE;

-- Q11
SELECT COUNT(SP_ID) as "sponsors"
FROM sponsor
WHERE SPBUDGET < 100000;

-- Q12
SELECT FBZONE as "Food&BevZone", COUNT(FBRENT) as "Total shop"
FROM foodbevzone
GROUP BY FBZONE; 

-- Q13
SELECT * FROM ticket
WHERE TKTYPE = 'GA';

-- Q14
SELECT * FROM events
WHERE EDATE = '2020-12-23';

-- Q15
SELECT * FROM artist
LIMIT 5;

--------------------- -- ADVANCE QUERIES ------------------

-- AD01
select emp.EEVENT_ID,e.ETYPE,EMP_FNAME from employee emp
inner join events e on emp.EEVENT_ID = e.EEVENT_ID
where EMP_DEPARTMENT = "Event Coordination";

-- AD02
select e.EDATE,ARNAME from artist a
inner join  events e on a.EEVENT_ID = e.EEVENT_ID
order by EDATE;

-- AD03
SELECT a.TK_ID as "Ticket no.", AUD_ID as "audience", AUDNAME as "audience name", AUDTELLNUM as "tell no."
FROM audience a
INNER JOIN ticket t ON a.TK_ID = t.TK_ID
ORDER BY t.TK_ID;

-- AD04
select fb.EEVENT_ID ,count(FBRENT) as "num_FB_Sotres",e.EDATE from foodbevzone fb
inner join events e on fb.EEVENT_ID = e.EEVENT_ID
group by EEVENT_ID;

-- AD05
select e.EEVENT_ID,e.ETYPE,SPNAME from events e
inner join sponsor s on e.EEVENT_ID = s.EEVENT_ID
where SPNAME like "P%";

-- AD06
select e.ETYPE,sum(SPBUDGET) as "Total_Budget" from sponsor s
inner join events e on s.EEVENT_ID = e.EEVENT_ID
group by ETYPE;

-- AD07
select TK_ID, TKDATE, emp.EMP_FNAME from ticket t
inner join employee emp on t.EEVENT_ID = emp.EEVENT_ID
where year(TKDATE)< 2021;

-- AD08
-- List the full name and telephone numbers of all employees and sponsors.
SELECT CONCAT(EMP_FNAME," ",EMP_LNAME) As "Name", EMTELLNUM As "Tell no." FROM employee
UNION ALL
SELECT SPNAME AS "Name", SPTELLNUM FROM sponsor;

-- AD09
-- Count the number of audiences who join the event grouped by event ID. 
SELECT t.EEVENT_ID, COUNT(t.TK_ID) AS "Num of audience" FROM ticket t
INNER JOIN audience a ON a.TK_ID = t.TK_ID
GROUP BY t.EEVENT_ID;

-- AD10
-- List the audiences who have a seat at B-zone of each event.
SELECT t.EEVENT_ID As "Event", a.AUDNAME AS "Audience name"FROM ticket t
INNER JOIN audience a ON a.TK_ID = t.TK_ID
WHERE t.TSEAT LIKE 'B%'
ORDER BY t.EEVENT_ID;

-- AD11
SELECT a.AUDNAME as 'Name', a.TK_ID as 'TicketID', t.TKTYPE as 'Ticket_type'
FROM audience a
INNER JOIN ticket t on a.TK_ID = t.TK_ID;

-- AD12
SELECT e.EEVENT_ID as 'Event_ID', e.EDATE as 'Date of Event', COUNT(t.TK_ID) as 'Number of tickets'
FROM events e
INNER join ticket t ON e.EEVENT_ID = t.EEVENT_ID
GROUP BY e.EEVENT_ID;

-- AD13
select e.EEVENT_ID,e.EDATE,sum(SPBUDGET) as "sum_budget" from sponsor s
inner join events e on  s.EEVENT_ID = e.EEVENT_ID
group by EEVENT_ID;

-- AD14
SELECT a.AUDNAME as 'Name', a.AUDTELLNUM as 'Tell no.'
FROM audience a
INNER JOIN ticket t ON a.TK_ID = t.TK_ID
WHERE t.TKTYPE = 'VP';

-- AD15

SELECT CONCAT(EMP_FNAME," ",EMP_LNAME) as "Full name" ,EMTELLNUM as "Tell no." FROM employee WHERE EMTELLNUM IS NOT NULL
UNION
SELECT ARNAME as "Full name" , ARTELLNUM as "Tell no." FROM artist WHERE ARTELLNUM IS NOT NULL;
