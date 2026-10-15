PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS PAYMENT;
DROP TABLE IF EXISTS RENTAL;
DROP TABLE IF EXISTS VEHICLE;
DROP TABLE IF EXISTS CUSTOMER;

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INTEGER PRIMARY KEY,
    CUSTOMER_NAME TEXT NOT NULL,
    PHONE TEXT,
    ADDRESS TEXT
);

CREATE TABLE VEHICLE (
    VEHICLE_ID INTEGER PRIMARY KEY,
    VEHICLE_NAME TEXT NOT NULL,
    VEHICLE_TYPE TEXT NOT NULL,
    RENT_PER_DAY REAL NOT NULL,
    STATUS TEXT NOT NULL
);

CREATE TABLE RENTAL (
    RENTAL_ID INTEGER PRIMARY KEY,
    CUSTOMER_ID INTEGER NOT NULL,
    VEHICLE_ID INTEGER NOT NULL,
    RENTAL_DATE TEXT NOT NULL,
    RETURN_DATE TEXT NOT NULL,
    TOTAL_AMOUNT REAL NOT NULL,
    RENTAL_STATUS TEXT NOT NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLE(VEHICLE_ID)
);

CREATE TABLE PAYMENT (
    PAYMENT_ID INTEGER PRIMARY KEY,
    RENTAL_ID INTEGER NOT NULL,
    PAYMENT_DATE TEXT NOT NULL,
    AMOUNT REAL NOT NULL,
    PAYMENT_METHOD TEXT NOT NULL,
    PAYMENT_STATUS TEXT NOT NULL,
    FOREIGN KEY (RENTAL_ID) REFERENCES RENTAL(RENTAL_ID)
);

INSERT INTO CUSTOMER VALUES
(1,'Amit Patil','9876543210','Aurangabad'),
(2,'Sneha Sharma','9876543211','Mumbai'),
(3,'Rahul Deshmukh','9876543212','Nashik'),
(4,'Priya Jadhav','9876543213','Nagpur'),
(5,'Rohan Kulkarni','9876543214','Pune'),
(6,'Neha Pawar','9876543215','Pune'),
(7,'Akash More','9876543216','Aurangabad'),
(8,'Pooja Shinde','9876543217','Nashik'),
(9,'Sanket Patil','9876543218','Mumbai'),
(10,'Kiran Joshi','9876543219','Nagpur'),
(11,'Anjali Kale','9876543220','Pune'),
(12,'Vishal Gaikwad','9876543221','Aurangabad'),
(13,'Sakshi Pawar','9876543222','Nashik'),
(14,'Omkar Shinde','9876543223','Mumbai'),
(15,'Pallavi More','9876543224','Nagpur'),
(16,'Nikhil Jadhav','9876543225','Pune'),
(17,'Rutuja Patil','9876543226','Aurangabad'),
(18,'Siddharth Kale','9876543227','Mumbai'),
(19,'Mrunal Joshi','9876543228','Nashik'),
(20,'Tejas Kulkarni','9876543229','Nagpur');

INSERT INTO VEHICLE VALUES
(101,'Maruti Swift','Car',1500,'Available'),
(102,'Hyundai Creta','SUV',2500,'Available'),
(103,'Honda City','Car',2000,'Rented'),
(104,'Royal Enfield','Bike',800,'Available'),
(105,'Toyota Innova','SUV',3000,'Rented'),
(106,'Tata Nexon','Car',1800,'Available'),
(107,'KTM Duke','Bike',1000,'Maintenance'),
(108,'Mahindra Scorpio','SUV',2800,'Available'),
(109,'Honda Activa','Scooter',500,'Available'),
(110,'Hyundai i20','Car',1600,'Available'),
(111,'Maruti Baleno','Car',1700,'Available'),
(112,'Kia Seltos','SUV',2700,'Available'),
(113,'Yamaha FZ','Bike',700,'Available'),
(114,'Tata Harrier','SUV',3200,'Available'),
(115,'Honda Amaze','Car',1400,'Available'),
(116,'TVS Jupiter','Scooter',450,'Available'),
(117,'Royal Enfield Classic','Bike',900,'Available'),
(118,'Mahindra Thar','SUV',3500,'Available'),
(119,'Maruti Dzire','Car',1300,'Available'),
(120,'Kia Sonet','SUV',2300,'Available');

INSERT INTO RENTAL VALUES
(1,1,101,'2026-10-01','2026-10-03',3000,'Completed'),
(2,2,102,'2026-10-02','2026-10-04',5000,'Completed'),
(3,3,103,'2026-10-03','2026-10-05',4000,'Completed'),
(4,4,104,'2026-10-04','2026-10-05',800,'Completed'),
(5,5,105,'2026-10-05','2026-10-07',6000,'Completed'),
(6,6,106,'2026-10-06','2026-10-08',3600,'Completed'),
(7,7,107,'2026-10-07','2026-10-09',2000,'Completed'),
(8,8,108,'2026-10-08','2026-10-10',5600,'Completed'),
(9,9,109,'2026-10-09','2026-10-11',1000,'Completed'),
(10,10,110,'2026-10-10','2026-10-12',3200,'Completed'),
(11,11,111,'2026-10-11','2026-10-13',3400,'Active'),
(12,12,112,'2026-10-12','2026-10-14',5400,'Active'),
(13,13,113,'2026-10-13','2026-10-15',1400,'Active'),
(14,14,114,'2026-10-14','2026-10-16',6400,'Active'),
(15,15,115,'2026-10-15','2026-10-17',2800,'Active'),
(16,16,116,'2026-10-16','2026-10-18',900,'Active'),
(17,17,117,'2026-10-17','2026-10-19',1800,'Active'),
(18,18,118,'2026-10-18','2026-10-20',7000,'Active'),
(19,19,119,'2026-10-19','2026-10-21',2600,'Active'),
(20,20,120,'2026-10-20','2026-10-22',4600,'Active');

INSERT INTO PAYMENT VALUES
(1,1,'2026-10-01',3000,'UPI','Paid'),
(2,2,'2026-10-02',5000,'Card','Paid'),
(3,3,'2026-10-03',4000,'Cash','Paid'),
(4,4,'2026-10-04',800,'Cash','Paid'),
(5,5,'2026-10-05',6000,'UPI','Paid'),
(6,6,'2026-10-06',3600,'Card','Paid'),
(7,7,'2026-10-07',2000,'UPI','Paid'),
(8,8,'2026-10-08',5600,'Cash','Paid'),
(9,9,'2026-10-09',1000,'UPI','Paid'),
(10,10,'2026-10-10',3200,'Card','Paid'),
(11,11,'2026-10-11',3400,'UPI','Paid'),
(12,12,'2026-10-12',5400,'Card','Paid'),
(13,13,'2026-10-13',1400,'Cash','Pending'),
(14,14,'2026-10-14',6400,'UPI','Paid'),
(15,15,'2026-10-15',2800,'Card','Pending'),
(16,16,'2026-10-16',900,'Cash','Paid'),
(17,17,'2026-10-17',1800,'UPI','Paid'),
(18,18,'2026-10-18',7000,'Card','Paid'),
(19,19,'2026-10-19',2600,'Cash','Pending'),
(20,20,'2026-10-20',4600,'UPI','Paid');
SELECT name
FROM sqlite_master
WHERE type = 'table';

-- QUERY 1: Display all customers
SELECT * FROM CUSTOMER;

-- QUERY 2: Display all vehicles
SELECT * FROM VEHICLE;

-- QUERY 3: Display all rental records
SELECT * FROM RENTAL;

-- QUERY 4: Display all payment records
SELECT * FROM PAYMENT;

-- QUERY 5: Display customers from Pune
SELECT *
FROM CUSTOMER
WHERE ADDRESS = 'Pune';

-- QUERY 6: Display customers from Mumbai
SELECT *
FROM CUSTOMER
WHERE ADDRESS = 'Mumbai';

-- QUERY 7: Display available vehicles
SELECT *
FROM VEHICLE
WHERE STATUS = 'Available';

-- QUERY 8: Display rented vehicles
SELECT *
FROM VEHICLE
WHERE STATUS = 'Rented';

-- QUERY 9: Display all cars
SELECT *
FROM VEHICLE
WHERE VEHICLE_TYPE = 'Car';

-- QUERY 10: Display all SUVs
SELECT *
FROM VEHICLE
WHERE VEHICLE_TYPE = 'SUV';

-- QUERY 11: Display all bikes
SELECT *
FROM VEHICLE
WHERE VEHICLE_TYPE = 'Bike';

-- QUERY 12: Display all scooters
SELECT *
FROM VEHICLE
WHERE RENT_PER_DAY > 1500;

-- QUERY 13: Vehicles with rent between 1000 and 2500
SELECT *
FROM VEHICLE
WHERE RENT_PER_DAY BETWEEN 1000 AND 2500;

-- QUERY 14: Vehicles ordered by highest rent
SELECT *
FROM VEHICLE
ORDER BY RENT_PER_DAY DESC;

-- QUERY 15: Vehicles ordered by lowest rent
SELECT *
FROM VEHICLE
ORDER BY RENT_PER_DAY ASC;

-- QUERY 16: Customers in alphabetical order
SELECT *
FROM CUSTOMER
ORDER BY CUSTOMER_NAME ASC;

-- QUERY 17: Display active rentals
SELECT *
FROM RENTAL
WHERE RENTAL_STATUS = 'Active';

-- QUERY 18: Display completed rentals
SELECT *
FROM RENTAL
WHERE RENTAL_STATUS = 'Completed';

-- QUERY 19: Rentals costing more than 3000
SELECT *
FROM RENTAL
WHERE TOTAL_AMOUNT > 3000;

-- QUERY 20: Rentals from October 1 to October 10
SELECT *
FROM RENTAL
WHERE RENTAL_DATE BETWEEN '2026-10-01' AND '2026-10-10';

-- QUERY 21: Display paid payments
SELECT *
FROM PAYMENT
WHERE PAYMENT_STATUS = 'Paid';

-- QUERY 22: Display pending payments
SELECT *
FROM PAYMENT
WHERE PAYMENT_STATUS = 'Pending';

-- QUERY 23: Display UPI payments
SELECT *
FROM PAYMENT
WHERE PAYMENT_METHOD = 'UPI';

-- QUERY 24: Display rentals with customer names
SELECT
    R.RENTAL_ID,
    C.CUSTOMER_NAME,
    R.RENTAL_DATE,
    R.RETURN_DATE,
    R.TOTAL_AMOUNT,
    R.RENTAL_STATUS
FROM RENTAL R
JOIN CUSTOMER C
ON R.CUSTOMER_ID = C.CUSTOMER_ID;

-- QUERY 25: Display rentals with vehicle names
SELECT
    R.RENTAL_ID,
    V.VEHICLE_NAME,
    V.VEHICLE_TYPE,
    R.RENTAL_DATE,
    R.RETURN_DATE,
    R.TOTAL_AMOUNT
FROM RENTAL R
JOIN VEHICLE V
ON R.VEHICLE_ID = V.VEHICLE_ID;

-- QUERY 26: Display customer and vehicle details
SELECT
    R.RENTAL_ID,
    C.CUSTOMER_NAME,
    C.PHONE,
    V.VEHICLE_NAME,
    V.VEHICLE_TYPE,
    V.RENT_PER_DAY,
    R.TOTAL_AMOUNT,
    R.RENTAL_STATUS
FROM RENTAL R
JOIN CUSTOMER C
ON R.CUSTOMER_ID = C.CUSTOMER_ID
JOIN VEHICLE V
ON R.VEHICLE_ID = V.VEHICLE_ID;

-- QUERY 27: Display payments with customer names
SELECT
    P.PAYMENT_ID,
    C.CUSTOMER_NAME,
    P.PAYMENT_DATE,
    P.AMOUNT,
    P.PAYMENT_METHOD,
    P.PAYMENT_STATUS
FROM PAYMENT P
JOIN RENTAL R
ON P.RENTAL_ID = R.RENTAL_ID
JOIN CUSTOMER C
ON R.CUSTOMER_ID = C.CUSTOMER_ID;

-- QUERY 28: Display complete rental and payment details
SELECT
    C.CUSTOMER_NAME,
    V.VEHICLE_NAME,
    R.RENTAL_DATE,
    R.RETURN_DATE,
    R.TOTAL_AMOUNT,
    P.PAYMENT_METHOD,
    P.PAYMENT_STATUS
FROM CUSTOMER C
JOIN RENTAL R
ON C.CUSTOMER_ID = R.CUSTOMER_ID
JOIN VEHICLE V
ON R.VEHICLE_ID = V.VEHICLE_ID
JOIN PAYMENT P
ON R.RENTAL_ID = P.RENTAL_ID;

-- QUERY 29: Display customers with pending payments
SELECT
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    V.VEHICLE_NAME,
    P.AMOUNT,
    P.PAYMENT_METHOD,
    P.PAYMENT_STATUS
FROM PAYMENT P
JOIN RENTAL R
ON P.RENTAL_ID = R.RENTAL_ID
JOIN CUSTOMER C
ON R.CUSTOMER_ID = C.CUSTOMER_ID
JOIN VEHICLE V
ON R.VEHICLE_ID = V.VEHICLE_ID
WHERE P.PAYMENT_STATUS = 'Pending';

-- QUERY 30: Display all rental details in table form
SELECT
    R.RENTAL_ID,
    C.CUSTOMER_NAME,
    V.VEHICLE_NAME,
    V.VEHICLE_TYPE,
    R.RENTAL_DATE,
    R.RETURN_DATE,
    R.TOTAL_AMOUNT,
    R.RENTAL_STATUS
FROM RENTAL R
JOIN CUSTOMER C
ON R.CUSTOMER_ID = C.CUSTOMER_ID
JOIN VEHICLE V
ON R.VEHICLE_ID = V.VEHICLE_ID
ORDER BY R.RENTAL_ID;