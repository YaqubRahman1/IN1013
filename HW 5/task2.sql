--1

SELECT SUM(bill_total)
    AS 'Income'
	FROM restbill;

--2

SELECT SUM(bill_total)
AS 'Feb Income'
FROM restbill
WHERE bill_date LIKE '1602%';

--3

SELECT AVG(bill_total)
AS 'Average Bill'
FROM restbill;

--4

SELECT MAX(no_of_seats) AS 'Max', MIN(no_of_seats) AS 'MIN', AVG(no_of_seats) AS 'Avg'
FROM restrest_table
WHERE room_name='Blue';

--5

SELECT COUNT(table_no)
AS 'Distinct Tables'
FROM restbill
WHERE waiter_no='4,2';
