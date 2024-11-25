--1
SELECT cust_name
FROM restbill
WHERE bill_total > 450.00
AND waiter_no IN (
SELECT staff_no
FROM reststaff
WHERE headwaiter = '10');

--2
SELECT first_name, surname
FROM reststaff
WHERE staff_no IN ( 
SELECT headwaiter
FROM reststaff
WHERE staff_no  IN (
SELECT waiter_no
FROM restbill
WHERE cust_name = 'Nerida Smith'
AND bill_date = '160111'
));

--3
SELECT cust_name
FROM restbill
WHERE bill_total IN (
	SELECT MIN(bill_total)
	FROM restbill 
);

--4
SELECT first_name, surname
FROM reststaff
WHERE staff_no NOT IN (
	SELECT waiter_no
	FROM restbill
	);
	
--5
SELECT r.cust_name, n.room_name, hw.first_name, hw.surname
FROM restbill r
INNER JOIN reststaff w  ON w.staff_no = r.waiter_no 
INNER JOIN restrest_table n ON n.table_no = r.table_no
INNER JOIN reststaff hw ON hw.staff_no = w.headwaiter
WHERE r.bill_total IN (
	SELECT MAX(bill_total)
	FROM restbill
	);