USE HMS
GO
/*
SQL PROJECT NAME  : Hotel Management System(HMS)
					Trainee Name : Rakibul Islam
					Trainee ID : 1271973
				Batch ID : ESAD-CS/PNTL-M/53/01
----------------------------------------------------------------------------------------------
Table of Contents: DML
			--> SECTION 01: INSERT DATA USING INSERT INTO KEYWORD
			--> SECTION 02: UPDATE DELETE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 2.1 : UPDATE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 2.2 : DELETE DATA THROUGH STORED PROCEDURE
				SUB SECTION => 2.3 : STORED PROCEDURE WITH TRY CATCH AND RAISE ERROR
			--> SECTION 03: INSERT UPDATE DELETE DATA THROUGH VIEW
				SUB SECTION => 3.1 : INSERT DATA through view
				SUB SECTION => 3.2 : UPDATE DATA through view
				SUB SECTION => 3.3 : DELETE DATA through view
			--> SECTION 04: RETREIVE DATA USING FUNCTION(SCALAR, SIMPLE TABLE VALUED, MULTISTATEMENT TABLE VALUED)
			--> SECTION 05: TEST TRIGGER (FOR/AFTER TRIGGER ON TABLE, INSTEAD OF TRIGGER ON TABLE & VIEW)
			--> SECTION 06: QUERY
				SUB SECTION => 6.01 : SELECT FROM TABLE
				SUB SECTION => 6.02 : SELECT FROM VIEW
				SUB SECTION => 6.03 : SELECT INTO
				SUB SECTION => 6.04 : IMPLICIT JOIN WITH WHERE BY CLAUSE, ORDER BY CLAUSE
				SUB SECTION => 6.05 : INNER JOIN WITH GROUP BY CLAUSE
				SUB SECTION => 6.06 : OUTER JOIN
				SUB SECTION => 6.07 : CROSS JOIN
				SUB SECTION => 6.08 : TOP CLAUSE WITH TIES
				SUB SECTION => 6.09 : DISTINCT
				SUB SECTION => 6.10 : COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR
				SUB SECTION => 6.11 : LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE
				SUB SECTION => 6.12 : OFFSET FETCH
				SUB SECTION => 6.13 : UNION
				SUB SECTION => 6.14 : EXCEPT INTERSECT
				SUB SECTION => 6.15 : AGGREGATE FUNCTIONS
				SUB SECTION => 6.16 : GROUP BY & HAVING CLAUSE
				SUB SECTION => 6.17 : ROLLUP & CUBE OPERATOR
				SUB SECTION => 6.18 : GROUPING SETS
				SUB SECTION => 6.19 : SUB-QUERIES (INNER, CORRELATED)
				SUB SECTION => 6.20 : EXISTS
				SUB SECTION => 6.21 : CTE
				SUB SECTION => 6.22 : MERGE
				SUB SECTION => 6.23 : BUILT IN FUNCTION
				SUB SECTION => 6.24 : CASE
				SUB SECTION => 6.25 : IIF
				SUB SECTION => 6.26 : COALESCE & ISNULL
				SUB SECTION => 6.27 : WHILE
				SUB SECTION => 6.28 : GROPING FUNCTION
				SUB SECTION => 6.29 : RANKING FUNCTION
				SUB SECTION => 6.30 : IF ELSE & PRINT
				SUB SECTION => 6.31 : TRY CATCH
				SUB SECTION => 6.32 : GOTO
				SUB SECTION => 6.33 : WAITFOR
				SUB SECTION => 6.34 : sp_helptext
				SUB SECTION => 6.35 : TRANSACTION WITH SAVE POINT
*/
/*
==============================  SECTION 01  ==============================
					INSERT DATA USING INSERT INTO KEYWORD
==========================================================================
*/
INSERT INTO HOTEL VALUES ('H001','LEISUREASIA','10 HOLLAND ROAD','SINGAPORE',87853515,'CONFIRMED')
GO
INSERT INTO FACILTY_TYPE VALUES
	   ('FT001', 'STANDARD ROOM', 'TWIN SIZE BED OR KING SIZE BED', 2, 50.00, 1000.00),
       ('FT002', 'DELUXE ROOM', 'TWIN SIZE BED OR KING SIZE BED', 2, 70.00, 1000.00),
       ('FT003', 'FAMILY ROOM', 'TWO TWIN SIZE BED AND ONE KING SIZE BED', 4, 90.00, 1000.00),
       ('FT004', 'CONFERENCE HALL 1', 'MULTI-PURPOSE HALL', 50, 500.00, 5000.00),
       ('FT005', 'CONFERENCE HALL 2', 'MULTI-PURPOSE HALL', 100, 1000.00, 5000.00),
       ('FT006', 'MEETING ROOM 1', 'ALL PURPOSE ROOM', 10, 50.00, 500.00),
       ('FT007', 'MEETING ROOM 2', 'ALL PURPOSE ROOM', 20, 100.00, 500.00)
GO
INSERT INTO FACILTY VALUES
	   ('F001', 'ROOMS', 'NEED BOOKING DETAILS', 'OK', 'H001'),
       ('F002', 'CONFERENCE VENUES', 'NEED BOOKING DETAILS', 'OK', 'H001'),
       ('F003', 'SWIMMING POOL', 'FREE OF CHARGE BY MEMBER', 'OK', 'H001'),
       ('F004', 'GYMS', 'FREE OF CHARGE BY MEMBER', 'OK', 'H001'),
       ('F005', 'RESTAURANTS', 'INTERNATIONAL FOODS (BREAKFAST/LUNCH/DINNER)', 'OK', 'H001'),
       ('F006', 'BUSINESS LOUNGE', 'FREE OF CHARGE', 'OK', 'H001'),
       ('F007', 'SIGHTSEEING', 'FREE OF CHARGE', 'OK', 'H001'),
       ('F008', 'ROOM SERVICE', 'FREE OF CHARGE', 'OK', 'H001'),
       ('F009', 'BAR', 'FREE OF CHARGE', 'OK', 'H001'),
       ('F010', 'RECEPTION', '24HR RECEPTION', 'OK', 'H001')
GO
INSERT INTO SERVICE_CATEGORY VALUES 
									('SC001', 'FOOD&MEALS', 'PROVIDED BY THE HOTEL', 'RESTAURANT'),
                                    ('SC002', 'ACCOMODATION', 'PROVIDED BY THE HOTEL', 'HOTEL'),
                                    ('SC003', 'EVENT VENUES', 'PROVIDED BY THE HOTEL', 'PLACE'),
                                    ('SC004', 'GYM', 'PROVIDED BY THE HOTEL', 'FITNESS CENTER'),
                                    ('SC005', 'ENTERTAINMENT', 'PROVIDED BY THE HOTEL', 'SERVICE INDUSTRY'),
                                    ('SC006', 'SITE-SEEING TOURS', 'PROVIDED BY THE HOTEL', 'SERVICE INDUSTRY'),
                                    ('SC007', 'ROOM SERVICE', 'PROVIDED BY THE HOTEL', 'SERVICE INDUSTRY')
GO
INSERT INTO SERVICE VALUES 
 ('S001', 'BREAKFAST', 'MEALS', 'NO FOOD AND DRINK FROM OUTSIDE', 'FOR ONE PERSON', 'INTERNATIONAL FOODS', 'OK', '07:00', '500', 'SC001', 'H001'),
 ('S002', 'LUNCH', 'MEALS', 'NO FOOD AND DRINK FROM OUTSIDE', 'FOR ONE PERSON', 'INTERNATIONAL FOODS', 'OK', '12:00', '500', 'SC001', 'H001'),
 ('S003', 'DINNER', 'MEALS', 'NO FOOD AND DRINK FROM OUTSIDE', 'FOR ONE PERSON', 'INTERNATIONAL FOODS', 'OK', '18:00', '500', 'SC001', 'H001'),
 ('S004', 'LAUNDRY', 'CLOTHING SERVICE', 'NO RESTRICTIONS', 'DRY CLEAN OR NORMAL LAUNDRY', 'ANY KINDS OF CLOTHES', 'OK', '08:00', '1000', 'SC007', 'H001'),
 ('S005', 'VENUES', 'EVENT VENUES CAN BE BOOK ONE MONTH BEFORE THE ACTUAL EVEMT', 'NO RESTRICTIONS', 'FOR MANY PERSON', 'PLACES PROVIDED BY THE HOTEL', 'OK', '07:00', '1000', 'SC003', 'H001'),
 ('S006', 'TAXIS', '24HR BOOKING TAXI', 'NO RESTRICTIONS', 'FOR ONE OR MANY PERSON', 'TRANSPORTATION', 'OK', '06:00', '500', 'SC002', 'H001'),
 ('S007', 'AIRPORT SHUTTLE BUS', 'BASED ON THE SCHEDULE', 'NO RESTRICTION', 'FOR ONE OR MANY PERSON', 'FREE SERVICE PROVIDED BY THE HOTEL', 'OK', '06:00', '500', 'SC002', 'H001'),
 ('S008', 'RENT-A-CAR', 'EARLY BOOKING IS PROVIDED AND CAN CHOOSE OF DIFFERENT CARS (E.G. SEDAN, SUV, MPV)', 'NO RESTRICTION', 'FOR ONE OR MANY PERSON', 'TRANSPORTATION', 'OK', '06:00', '500', 'SC002', 'H001'),
 ('S009', 'TOURS', 'EARLY BOOKING IS PROVIDED', 'NO RESTRICTION', 'FOR ONE OR MANY PERSON', 'TOUR GUIDE', 'OK', '08:00', '500', 'SC007', 'H001')
 GO
INSERT INTO ADVERTISMENT VALUES 
 (1, 'HOLIDAY PACKAGE 3D2N', 'THIS PACKAGE FITS PERFECTLY FOR A WEEKEND GETAWAYS','05-JUNE-2018', '07-JUNE-2018', 250.00, 'BREAKFAST FOR TWO', 'DINNER', 'OK'),
 (2, 'HOLIDAY PACKAGE 5D4N', 'ENJOY THE WEEKEND OFF WITH THIS PACKAGE','05-JUNE-2018', '09-JUNE-2018', 500.00, 'BREAKFAST FOR TWO', 'DINNER', 'OK'),
 (3, 'FAMILY PACKAGE 3D2N', 'ENJOY YOUR BONDING TIME WITH YOUR FAMILY WITH THIS PACKAGE','05-JUNE-2018', '07-JUNE-2018', 450.00, 'BREAKFAST FOR FOUR', 'DINNER', 'OK'),
 (4, 'FAMILY PACKAGE 5D4N', 'THIS PACKAGE IS PERFECT FOR FAMILY A WEEK LONG BONDING','05-JUNE-2018', '09-JUNE-2018', 900.00, 'BREAKFAST FOR FOUR', 'DINNER', 'OK'),
 (5, 'BUSINESS PACKAGE 3D2N', 'ENJOY THIS PACKAGE TO SUIT YOUR BUSINESS NEEDS','05-JUNE-2018', '07-JUNE-2018', 500.00, 'BREAKFAST FOR TWO, MEETING ROOM 1 (2HR/DAY)', 'DINNER', 'OK'),
 (6, 'SCHOOL-HOLIDAY 3D2N', 'THIS PACKAGE IS GREAT FOR CHILDREN TO ENJOY THE WEEKEND DURING SCHOOL HOLIDAY','05-JUNE-2018', '07-JUNE-2018', 200.00, 'BREAKFAST FOR TWO', 'DINNER', 'OK'),
 (7, 'SCHOOL TRIP 3D2N', 'THIS PACKAGE IS PERFECT FOR SCHOOL TRIP','05-JUNE-2018', '07-JUNE-2018', 5000.00, '10 ROOMS INCL BREAKFAST,LUNCH, DINNER, TOUR GUIDE 3D', 'TAXI AND RENT-A-CAR', 'OK')
 GO
INSERT INTO ADV_PACKAGE VALUES 
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 4),
 (5, 5),
 (6, 6),
 (7, 7)
 GO
INSERT INTO PACKAGE_SERVICE VALUES 
 (1, 'S001'),
 (2, 'S002'),
 (3, 'S003'),
 (4, 'S004'),
 (5, 'S005'),
 (6, 'S006'),
 (7, 'S007'),
 (8, 'S008'),
 (9, 'S009')
GO
INSERT INTO RELATION_FACILTYTYPE_SERVICE VALUES
 ('FT001', 'S001'),
 ('FT002', 'S002'),
 ('FT003', 'S003'),
 ('FT004', 'S004'),
 ('FT005', 'S005'),
 ('FT006', 'S006'),
 ('FT007', 'S007'),
 ('FT008', 'S008'),
 ('FT009', 'S009')
GO
 INSERT INTO CUSTOMER VALUES 
 ('C001', 'KEVIN', '10 RIVER VALLEY ROAD', 85881252, 'SINGAPORE', 'KEVIN98@GMAIL.COM'),
 ('C002', 'DAVID', '312 RIVER VALLEY ROAD', 64872515, 'SINGAPORE', 'DAVID123@HOTMAIL.COM'),
 ('C003', 'HARRY', '2 RIVER VALLEY CLOSE', 85881252, 'SINGAPORE', 'HARRY25@LIVE.COM'),
 ('C004', 'LEONARD', '32 JURONG EAST ROAD', 53251548, 'SINGAPORE', 'LEONARD97@YAHOO.COM'),
 ('C005', 'EDWIN', '155 HOLLAND ROAD', 98784565, 'SINGAPORE', 'EDWIN97@GMAIL.COM'),
 ('C006', 'MICHELLE', '80 WOODLANDS ROAD', 96923511, 'SINGAPORE', 'MICH95@GMAIL.COM'),
 ('C007', 'STACY', '77 TAMPINES ROAD', 91232587, 'SINGAPORE', 'STACY22@YAHOO.COM'),
 ('C008', 'VANIA', '35 SERANGOON ROAD', 87843521, 'SINGAPORE', 'VANIA325@YAHOO.COM'),
 ('C009', 'MONICA', '225 TIONG BAHRU ROAD', 93665251, 'SINGAPORE', 'MONICA11@GMAIL.COM'),
 ('C010', 'MICHAEL', '8 TOA PAYOH ROAD', 87878888, 'SINGAPORE', 'MICHAEL97@GMAIL.COM')
GO
 
INSERT INTO EMPLOYEE VALUES
 ('E001', 'BIMA', 88888080, 'BIMA88@GMAIL.COM', 'MANAGER'),
 ('E002', 'SHEILLA', 86501234, 'SHEILLA123@YAHOO.COM', 'STAFF'),
 ('E003', 'FERDY', 60512354, 'FERDY33@GMAIL.COM', 'STAFF'),
 ('E004', 'VANESSA', 98574512, 'VANESSA99@GMAIL.COM', 'FINANCE'),
 ('E005', 'ARIEF', 91023514, 'ARIEF10@GMAIL.COM', 'DIRECTOR')
GO

INSERT INTO RESERVATION VALUES 
 ('R001', 'RESERVATION 1', 'CONFIRMED', 'ONLINE', '01-JUNE-2018', 0, 'HOTEL RESERVATION', 'C001', 'E002'),
 ('R002', 'RESERVATION 2', 'CONFIRMED', 'PHONE', '01-JUNE-2018', 0, 'HOTEL RESERVATION', 'C002', 'E002'),
 ('R003', 'RESERVATION 3', 'CONFIRMED', 'PHONE', '02-JUNE-2018', 0, 'HOTEL RESERVATION', 'C003', 'E003'),
 ('R004', 'RESERVATION 4', 'CONFIRMED', 'IN-PERSON', '05-JUNE-2018', 0, 'HOTEL RESERVATION', 'C004', 'E003'),
 ('R005', 'RESERVATION 5', 'CONFIRMED', 'IN-PERSON', '05-JUNE-2018', 0, 'HOTEL RESERVATION', 'C005', 'E002'),
 ('R006', 'RESERVATION 6', 'CONFIRMED', 'ONLINE', '25-MAY-2018', 0, 'HOTEL RESERVATION', 'C006', 'E002'),
 ('R007', 'RESERVATION 7', 'CONFIRMED', 'PHONE', '26-MAY-2018', 0, 'HOTEL RESERVATION', 'C007', 'E003'),
 ('R008', 'RESERVATION 8', 'CONFIRMED', 'PHONE', '27-MAY-2018', 0, 'HOTEL RESERVATION', 'C008', 'E003'),
 ('R009', 'RESERVATION 9', 'CONFIRMED', 'ONLINE', '28-MAY-2018', 0, 'HOTEL RESERVATION', 'C009', 'E003'),
 ('R010', 'RESERVATION 10', 'CONFIRMED', 'ONLINE', '29-MAY-2018', 0, 'HOTEL RESERVATION', 'C010', 'E002')
GO
INSERT INTO BOOKING_DETAILS VALUES 
 ('BD001', '05-JUNE-2018', '07-JUNE-2018', 2, 550.00, 1, 'R001'),
 ('BD002', '05-JUNE-2018', '09-JUNE-2018', 3, 950.00, 2, 'R002'),
 ('BD003', '05-JUNE-2018', '07-JUNE-2018', 3, 800.00, 3, 'R003'),
 ('BD004', '05-JUNE-2018', '09-JUNE-2018', 2, 450.00, 4, 'R004'),
 ('BD005', '05-JUNE-2018', '07-JUNE-2018', 4, 500.00, 5, 'R005'),
 ('BD006', '05-JUNE-2018', '07-JUNE-2018', 2, 500.00, 6, 'R006'),
 ('BD007', '05-JUNE-2018', '07-JUNE-2018', 1, 7550.00, 7, 'R007'),
 ('BD008', '05-JUNE-2018', '07-JUNE-2018', 1, 1050.00, 3, 'R008'),
 ('BD009', '05-JUNE-2018', '07-JUNE-2018', 2, 525.00, 2, 'R009'),
 ('BD010', '05-JUNE-2018', '07-JUNE-2018', 2, 780.00, 2, 'R010')
GO
INSERT INTO FACILITY_BOOKING VALUES 
 (1, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD001'),
 (2, 'ROOM', '05-JUNE-2018', '09-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD002'),
 (3, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD003'),
 (4, 'ROOM', '05-JUNE-2018', '09-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD004'),
 (5, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD005'),
 (6, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD006'),
 (7, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD007'),
 (8, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD008'),
 (9, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD009'),
 (10, 'ROOM', '05-JUNE-2018', '07-JUNE-2018', 'HOTEL ROOM', 'F001', 'BD010')
GO
INSERT INTO PAYMENT VALUES 
(1, 'CREDIT CARD', 550.00, 'R001'),
(2, 'CREDIT CARD', 950.00, 'R002'),
(3, 'CREDIT CARD', 800.00, 'R003'),
(4, 'CREDIT CARD', 450.00, 'R004'),
(5, 'CREDIT CARD', 500.00, 'R005'),
(6, 'CASH', 500.00, 'R006'),
(7, 'CREDIT CARD', 7550.00, 'R007'),
(8, 'CREDIT CARD', 1050.00, 'R008'),
(9, 'CREDIT CARD', 525.00, 'R009'),
(10, 'CREDIT CARD', 955.00, 'R010')
GO
INSERT INTO RELATION_CUSTOMER_BOOKING VALUES
 ('C001', 'BD001', 'C001'),
 ('C002', 'BD002', 'C002'),
 ('C003', 'BD003', 'C003'),
 ('C004', 'BD004', 'C004'),
 ('C005', 'BD005', 'C005'),
 ('C006', 'BD006', 'C006'),
 ('C007', 'BD007', 'C007'),
 ('C008', 'BD008', 'C008'),
 ('C009', 'BD009', 'C009'),
 ('C010', 'BD010', 'C010')
GO
INSERT INTO OTHERCHARGES VALUES 
 ('OC001', 'NOTHING', 'NOTHING', 0.00, 'BD001'),
 ('OC002', 'NOTHING', 'NOTHING', 0.00, 'BD002'),
 ('OC003', 'NOTHING', 'NOTHING', 0.00, 'BD003'),
 ('OC004', 'NOTHING', 'NOTHING', 0.00, 'BD004'),
 ('OC005', 'NOTHING', 'NOTHING', 0.00, 'BD005'),
 ('OC006', 'NOTHING', 'NOTHING', 0.00, 'BD006'),
 ('OC007', 'NOTHING', 'NOTHING', 0.00, 'BD007'),
 ('OC008', 'NOTHING', 'NOTHING', 0.00, 'BD008'),
 ('OC009', 'NOTHING', 'NOTHING', 0.00, 'BD009'),
 ('OC010', 'DINNER FOR THREE', 'BUFFET', 175.00, 'BD010')
GO
/*
==============================  SECTION 02  ==============================
			UPDATE DELETE DATA THROUGH STORED PROCEDURE
==========================================================================
*/

--============== UPDATE DATA THROUGH STORED PROCEDURE ============--

-- STORED PROCEDURE for update CUSTOMER (closing date & closing remarks)
EXEC spUpdateCUSTOMER 1, '2022-01-01', 'END DATE'
EXEC spUpdateCUSTOMER 2, '2022-02-07', 'END DATE'
EXEC spUpdateCUSTOMER 3, '2022-02-17', 'END DATE'
EXEC spUpdateCUSTOMER 4, '2022-03-19', 'END DATE'
EXEC spUpdateCUSTOMER 5, '2022-04-05', 'END DATE'
EXEC spUpdateCUSTOMER 6, '2022-05-11', 'END DATE'
EXEC spUpdateCUSTOMER 7, '2022-06-04', 'END DATE'
GO
SELECT * FROM CUSTOMER
GO
--============== STORED PROCEDURE WITH TRY CATCH AND RAISE ERROR ============--

EXEC spRaisError
GO

/*
==============================  SECTION 03  ==============================
					INSERT UPDATE DELETE DATA THROUGH VIEW
==========================================================================
*/
--============== INSERT DATA through view ============--
SELECT * FROM BOOKING_DETAILS
GO
INSERT INTO BOOKING_DETAILS(BOOKING_DETAILS_ID,BD_QUANTITY, BD_TOTAL_PRICE) VALUES(11, 5,5000)
INSERT INTO BOOKING_DETAILS(BOOKING_DETAILS_ID,BD_QUANTITY, BD_TOTAL_PRICE) VALUES(9, 10, 6000)
INSERT INTO BOOKING_DETAILS(BOOKING_DETAILS_ID,BD_QUANTITY, BD_TOTAL_PRICE) VALUES(13, 3,7000)
GO
SELECT * FROM BOOKING_DETAILS
GO
--============== UPDATE DATA through view ============--
UPDATE RESERVATION
SET R_DISCOUNT_PERCENTAGE = 0.5
WHERE CUSTOMER_ID = 10
GO
SELECT * FROM RESERVATION
GO

--============== DELETE DATA through view ============--
DELETE FROM PAYMENT
WHERE PAYMENT_ID = 16
GO
SELECT * FROM PAYMENT
GO
/*
==============================  SECTION 04  ==============================
						RETREIVE DATA USING FUNCTION
==========================================================================
*/

-- A Scalar Function to get monthly total Booking using two parameter @year & @month
SELECT dbo.hmsCurrentYearBooking() AS 'Currrent Year Booking'
GO


-- A Inline Table Valued Function to get monthly Booking, quantity & total price using two parameter @year & @month
SELECT * FROM dbo.hmsMonthlyBooking(2022,5)
GO


-- A Multi Statement Table Valued Function to get monthly Bokking using two parameter @year & @month
SELECT * FROM dbo.hmsMonthlyBookingDetails(2022,5)
GO
/*
==============================  SECTION 05  ==============================
							   TEST TRIGGER
==========================================================================
*/
--============== FOR/AFTER TRIGGER ON TABLE ============--

-- EX - 01
-- INSERT DATA IN Stockin TABLE and AUTOMATICALLY UPDATE STOCK IN Prodcut TABLE

SELECT * FROM RESERVATION
SELECT * FROM RESERVATION

INSERT INTO RESERVATION(RESERVATION_ID, R_TYPE) VALUES (4, 12)
GO

SELECT * FROM RESERVATION
SELECT * FROM RESERVATION
GO

-- EX - 02
-- INSERT DATA ON tblADVERTISMENTForInfrastructure TABLE and AUTOMATICALLY UPDATE STOCK IN SERVICE TABLE

SELECT * FROM tblADVERTISMENT
SELECT * FROM tblSERVICEForInfrastructure

INSERT INTO tblSERVICEForInfrastructure(SERVICE_ID, SERVICE_DESC) VALUES(4, 5)

SELECT * FROM tblSERVICE
SELECT * FROM tblSERVICEForInfrastructure
GO


--============== INSTEAD OF TRIGGER ON TABLE ============--


--INSTEAD OF INSERT TRIGGER ON RESERVATION TO get price from PAYMENT table and manipulate data in current table

SELECT * FROM RESERVATION
SELECT * FROM PAYMENT
GO
INSERT INTO RESERVATION(RESERVATION_ID, CUSTOMER_ID, R_DISCOUNT_PERCENTAGE) VALUES
(15, 5, .10)
GO
SELECT * FROM RESERVATION
GO


--============== AN INSTEAD OF TRIGGER ON VIEW ============--

SELECT * FROM FACILITY_BOOKING

INSERT INTO FACILITY_BOOKING(FACILITY_BOOKING_ID,FACILITY_ID, FB_DESC) VALUES(13, 3, .10)

SELECT * FROM FACILITY_BOOKING
GO
/*
==============================  SECTION 06 ==============================
								  QUERY
==========================================================================
*/


--============== 6.01 A SELECT STATEMENT TO GET EMPLOYEE FROM A TABLE ============--

SELECT * FROM EMPLOYEE
GO

--============== 6.02 A SELECT STATEMENT TO GET today PACKAGE_SERVICE information FROM A VIEW ============--

SELECT * FROM VW_PACKAGE_SERVICE
GO

--============== 6.03 SELECT INTO > SAVE SERVICE TO A NEW TEMPORARY TABLE ============--

SELECT * INTO #hmsSERVICE_DESC
FROM SERVICE
GO
SELECT * FROM #hmsSERVICE_DESC
GO
--============== 6.04 IMPLICIT JOIN WITH WHERE BY CLAUSE, ORDER BY CLAUSE ============--
SELECT HOTEL_NAME, FACILTY_TYPE_NAME FROM  HOTEL,FACILTY_TYPE
WHERE HOTEL.HOTEL_ID = FACILTY_TYPE.FACILTY_TYPE_ID
ORDER BY HOTEL_NAME ASC, FACILTY_TYPE_NAME DESC
GO

--============== 6.05 INNER JOIN WITH GROUP BY CLAUSE ============--
SELECT R_NAME, COUNT(CUSTOMER_ID) AS CUSTOMER FROM RESERVATION hmInfo
INNER JOIN CUSTOMER ON CUSTOMER_ID = hmInfo.CUSTOMER_ID
INNER JOIN RESERVATION ON R.CUSTOMER_ID = hmInfo.CUSTOMER_ID
GROUP BY R.CUSTOMER_ID
GO
--============== 6.06 OUTER JOIN ============--

SELECT * FROM RELATION_CUSTOMER_BOOKINGInfo hmInfo
LEFT JOIN CUSTOMER ON CUSTOMER_ID1 = hmInfo.CUSTOMER_ID1
RIGHT JOIN EMPLOYEE ON EMPLOYEE.EMPLOYEE_ID = hmInfo.EMPLOYEE_ID
FULL JOIN [RESERVATION] s ON R.RESERVATION_ID = hmInfo.RESERVATION_ID
GO

--============== 6.07 CROSS JOIN ============--

SELECT * FROM EMPLOYEE hmInfo
CROSS JOIN CUSTOMER
GO

--============== 6.08 TOP CLAUSE WITH TIES ============--

SELECT TOP 5 WITH TIES C.CUSTOMER_ID, CUSTOMER_NAME FROM customerInfo
INNER JOIN CUSTOMER ON CUSTOMER.CUSTOMER_ID = customerInfo.CUSTOMER_ID
ORDER BY CUSTOMER_ID
GO
--============== 6.09 DISTINCT ============--

SELECT DISTINCT EMPLOYEE.EMPLOYEE_ID, EMPLOYEE_NAME FROM EMPLOYEE
INNER JOIN CUSTOMER ON CUSTOMER.CUSTOMER_ID = customerInfo.CUSTOMER_ID
ORDER BY CUSTOMER.CUSTOMER_NAME
GO

--============== 6.10 COMPARISON, LOGICAL(AND OR NOT) & BETWEEN OPERATOR ============--

SELECT * FROM CUSTOMER
WHERE CUSTOMER_COUNTRY = 1
AND dob BETWEEN '1996-01-01' AND '1997-12-10'
AND NOT CUSTOMER_ID = 4
AND CUSTOMER_PHONENO > 076452
OR CUSTOMER_ID = 2
GO

--============== 6.11 LIKE, IN, NOT IN, OPERATOR & IS NULL CLAUSE ============--

SELECT * FROM CUSTOMER
WHERE CUSTOMER_NAME LIKE '%n'
AND CUSTOMER_ID NOT IN ('1' ,'2')
AND reference IS NULL
GO

--============== 6.12 OFFSET FETCH ============--

-- OFFSET 5 ROWS
SELECT * FROM EMPLOYEE
ORDER BY EMPLOYEE_ID
OFFSET 5 ROWS
GO

-- OFFSET 10 ROWS AND GET NEXT 5 ROWS

SELECT * FROM CUSTOMER
ORDER BY CUSTOMER_ID
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY
GO

--============== 6.13 UNION ============--

SELECT * FROM EMPLOYEE
WHERE EMPLOYEE_ID IN ('1', '2', '3')

UNION

SELECT * FROM EMPLOYEE
WHERE EMPLOYEE_ID IN ('4', '5', '6')
GO

--============== 6.14 EXCEPT INTERSECT ============--

-- EXCEPT
SELECT * FROM EMPLOYEE

EXCEPT

SELECT * FROM EMPLOYEE
WHERE EMPLOYEE_NAME = 2
GO
--INTERSECT

SELECT * FROM CUSTOMER
WHERE CUSTOMER_ID > 10

INTERSECT

SELECT * FROM CUSTOMER
WHERE CUSTOMER_ID > 15
GO

--============== 6.15 AGGREGATE FUNCTION ============--

SELECT	COUNT(*) 'Total Customer',
		SUM(BD_TOTAL_PRICE) 'Total Price',
		AVG(BD_QUANTITY) 'Average Price',
		MIN(ADVERTISEMENT_ID2) 'ADVERTISEMENT FEE',
		(MAX(BD_TOTAL_PRICE))*100 'MAX Discount %'
FROM BOOKING_DETAILS
GO

--============== 6.16 AGGREGATE FUNCTION WITH GROUP BY & HAVING CLAUSE ============--

SELECT SERVICE.SERVICE_NAME count(SERVICE.SERVICE_ID) Total, SUM(SERVICE_DESC) 'NET SERVICE' FROM SERVICE
INNER JOIN CUSTOMER ON SERVICE.SERVICE_ID = SERVICE.SERVICE_ID
GROUP BY SERVICE.SERVICE_ID
HAVING SUM(SERVICE_DESC) > 50000
GO
--============== 6.17 ROLLUP & CUBE OPERATOR ============--

--ROLLUP
SELECT R.RESERVATION_ID, R.R_NAME, SUM(EMPLOYEE_ID.salary) Salary FROM RESERVATION
INNER JOIN R_STATUS ON R_NAME.RESERVATION_ID = EMPLOYEEInfo.RESERVATION_ID
INNER JOIN BOOKING d ON B.BOOKING_DETAILS_ID = B.BOOKING_DETAILS_ID
GROUP BY  ROLLUP (B.BOOKING_DETAILS_ID,B.BOOKING_DETAILS_ID)
ORDER BY B.BOOKING_DETAILS_ID DESC,B.BOOKING_DETAILS_ID DESC
GO

-- CUBE
SELECT R.RESERVATION_ID, R.R_NAME, SUM(EMPLOYEE_ID.salary) Salary FROM RESERVATION
INNER JOIN R_STATUS ON R_NAME.RESERVATION_ID = EMPLOYEEInfo.RESERVATION_ID
INNER JOIN BOOKING d ON B.BOOKING_DETAILS_ID = B.BOOKING_DETAILS_ID
GROUP BY  CUBE (B.BOOKING_DETAILS_ID,B.BOOKING_DETAILS_ID)
ORDER BY B.BOOKING_DETAILS_ID DESC,B.BOOKING_DETAILS_ID DESC
GO
--A subquery to findout CUSTOMER who have not enrolled yet

SELECT [CUSTOMER_NAME], CUSTOMER_COUNTRY, CUSTOMER_EMAIL_ADDRESS, CUSTOMER_PHONENO, [CUSTOMER_ADDRESS] FROM CUSTOMER
WHERE CUSTOMER_ID NOT IN (SELECT EMPLOYEE_ID FROM EMPLOYEE)
ORDER BY [CUSTOMER_NAME]
GO

--A correlated subquery

SELECT cs.BOOKING_DETAILS_ID, SUM(cs.Booking) 'NET SALES' FROM BOOKING_DETAILS cs
GROUP BY  cs.BOOKING_DETAILS_ID
HAVING SUM(cs.Booking) > (SELECT AVG(cs2.Booking) FROM BOOKING_DETAILS cs2 WHERE cs.BOOKING_DETAILS_ID = cs2.BOOKING_DETAILS_ID)
GO
--============== 6.20 EXISTS ============--

SELECT [CUSTOMER_NAME], CUSTOMER_COUNTRY, CUSTOMER_EMAIL_ADDRESS, CUSTOMER_PHONENO, [CUSTOMER_ADDRESS] FROM CUSTOMER
WHERE NOT EXISTS 
			(SELECT * FROM EMPLOYEE
				WHERE EMPLOYEE.EMPLOYEE_ID = EMPLOYEE.EMPLOYEE_ID)
GO

--============== 6.21 CTE ============--

-- A CTE TO GET MAXIMUM SALES COURSE
WITH Booking AS
(
SELECT F.FB_NAME, count(hmInfo.FACILITY_BOOKING) TotalCourse FROM FACILITY_BOOKING hmInfo
INNER JOIN BOOKING c ON B.BOOKING_DETAILS_ID = hmInfo.FACILITY_ID
GROUP BY B.FACILITY_ID
)
SELECT P_TYPE, P_TOTAL_PRICE from PAYMENT
WHERE PAYMENT_ID = (SELECT MAX(P_TOTAL_PRICE) FROM PAYMENT)
GO
--============== 6.22 MERGE ============--
SELECT * FROM CUSTOMER
SELECT * FROM EMPLOYEE
GO
MERGE CUSTOMER AS SOURCE
USING EMPLOYEE AS TARGET
ON SOURCE.CUSTOMER_ID = TARGET.EMPLOYEE_ID
WHEN MATCHED THEN
				UPDATE SET
				CUSTOMER_ID = SOURCE.CUSTOMER_ID,
				CUSTOMER_ID = SOURCE.CUSTOMER_ID;
GO
--============== 6.23 BUILT IN FUNCTION ============--

-- Get current date and time
SELECT GETDATE()
GO

-- GET STRING LENGTH
SELECT EMPLOYEE_ID, LEN([EMPLOYEE_NAME]) 'Name Length' FROM EMPLOYEE
GO

-- CONVERT DATA USING CAST()
SELECT CAST(1500 AS decimal(17,2)) AS DecimalNumber
GO

-- CONVERT DATA USING CONVERT()
DECLARE @currTime DATETIME = GETDATE()
SELECT CONVERT(VARCHAR, @currTime, 108) AS ConvertToTime
GO

-- CONVERT DATA USING TRY_CONVERT()
SELECT TRY_CONVERT(FLOAT, 'HELLO', 1) AS ReturnNull
GO

-- GET DIFFERENCE OF DATES
SELECT DATEDIFF(DAY, '2021-01-01', '2022-01-01') AS DAYinYear
GO

-- GET A MONTH NAME
SELECT DATENAME(MONTH, GETDATE()) AS 'Month'
GO

--============== 6.24 CASE ============--

SELECT EMPLOYEE.[EMPLOYEE_NAME], 
eInfo.EMPLOYEE_POSITION,
	CASE 
		WHEN (eInfo.EMPLOYEE_POSITION < 40000) THEN 'Lower Salary'
		WHEN (eInfo.EMPLOYEE_POSITION > 40000) THEN 'Good Salary'
		WHEN (eInfo.EMPLOYEE_POSITION > 50000) THEN 'Better Salary'
		WHEN (eInfo.EMPLOYEE_POSITION > 50000) THEN 'Great Salary'
END AS 'Status'
FROM EMPLOYEE eInfo
INNER JOIN EMPLOYEE ON eInfo.EMPLOYEE_ID = EMPLOYEE.EMPLOYEE_ID
GO
--============== 6.25 IIF ============--

SELECT EMPLOYEE.[EMPLOYEE_NAME], 
eInfo.EMPLOYEE_POSITION,
IIF((eInfo.EMPLOYEE_ID > 50000), 'Great Salary', 'Lower Salary') AS 'Status'
FROM EMPLOYEE eInfo
INNER JOIN EMPLOYEE ON eInfo.EMPLOYEE_ID = EMPLOYEE.EMPLOYEE_ID
GO
--============== 6.26 COALESCE & ISNULL ============--

SELECT COALESCE(EMPLOYEE_POSITION,'MANAGER') AS 'Comment',
ISNULL(EMPLOYEE_POSITION, 'MANAGER') AS 'Comment'
FROM EMPLOYEE
GO

--============== 6.27 WHILE ============--

	DECLARE @customer int
	SET @customer = 0

	WHILE @customer < 20

	BEGIN
	  SET @customer = @customer + 1
	  INSERT INTO CUSTOMER(CUSTOMER_ID, CUSTOMER_COUNTRY) VALUES((NEXT VALUE FOR [dbo].seqNum), NULL)
	END

	SELECT * FROM CUSTOMER
GO
--============== 6.28 GROPING FUNCTION ============--
SELECT 
	CASE 
		WHEN GROUPING(EMPLOYEE_POSITION) = 1 THEN 'MANAGER'
		ELSE EMPLOYEE_POSITION
	END EMPLOYEE_POSITION
FROM EMPLOYEE
GROUP BY EMPLOYEE_POSITION
GO
--============== 6.29 RANKING FUNCTION ============--
SELECT 
RANK() OVER(ORDER BY CUSTOMER_ID) AS 'Rank',
DENSE_RANK() OVER(ORDER BY CUSTOMER_NAME) AS 'Dense_Rank',
NTILE(3) OVER(ORDER BY CUSTOMER_COUNTRY) AS 'NTILE'
FROM CUSTOMER
GO
--============== 6.30 IF ELSE & PRINT ============--

DECLARE @totalPAYMENT MONEY
SELECT @totalPAYMENT = SUM((P_TOTAL_PRICE))
FROM PAYMENT
WHERE YEAR(P_TYPE) = YEAR(GETDATE())
IF @totalPAYMENT > 1000000
	BEGIN
		PRINT 'Great ! The payment is greater than target in this year !!'
	END
ELSE
	BEGIN
		PRINT 'Didn''t Reached the goal !'
	END
GO
--============== 6.31 TRY CATCH ============--

BEGIN TRY
	DELETE FROM CUSTOMER
	PRINT 'SUCCESSFULLY DELETED'
END TRY

BEGIN CATCH
		DECLARE @Error VARCHAR(200) = 'Error' + CONVERT(varchar, ERROR_NUMBER(), 1) + ' : ' + ERROR_MESSAGE()
		PRINT (@Error)
END CATCH
GO

--============== 6.32 GOTO ============--

DECLARE @value INT
SET @value = 0

WHILE @value <= 10
	BEGIN
	   IF @value = 2
		  GOTO printMsg
	   SET @value = @value + 1

	   	IF @value = 9
		  GOTO printMsg2
	   SET @value = @value + 1
	END
printMsg:
   PRINT 'Crossed Value 2'
printMsg2:
   PRINT 'Crossed Value 9'
GO

--============== 6.33 WAITFOR ============--

PRINT 'HELLO'
WAITFOR DELAY '00:00:03'
PRINT 'GOOD LUCK'
GO

--============== 6.34 SYSTEM STORED PROCEDURE(sp_helptext) TO GET UNENCRYPTED STORED PROCEDURE SCRIPT  ============--

EXEC sp_helptext spUpdateCUSTOMER
GO

--============== 6.35 TRANSACTION WITH SAVE POINT  ============--

SELECT * INTO #CUSTOMER
FROM CUSTOMER
GO
SELECT * FROM #CUSTOMER
GO

BEGIN TRANSACTION
	DELETE FROM #CUSTOMER WHERE CUSTOMER_ID = 5
	SAVE TRANSACTION tran1
		DELETE FROM #CUSTOMER WHERE CUSTOMER_ID = 6
		SAVE TRANSACTION tran2
			DELETE FROM #CUSTOMER WHERE CUSTOMER_ID = 7
			SAVE TRANSACTION tran3

			SELECT * FROM #CUSTOMER

		ROLLBACK TRANSACTION tran2
		SELECT * FROM #CUSTOMER
	ROLLBACK TRANSACTION tran1
	SELECT * FROM #CUSTOMER
COMMIT TRANSACTION
GO
-------------------------------------------------------------------------------------------------------

