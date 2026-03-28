
SQL> SPOOL PROJECT.SQL
SQL> CONNECT SYSTEM;
Enter password:
Connected.
SQL> DROP TABLE Payments;

Table dropped.

SQL> DROP TABLE Order_Items;

Table dropped.

SQL> DROP TABLE Orders;

Table dropped.

SQL> DROP TABLE Products;

Table dropped.

SQL> DROP TABLE Users;

Table dropped.

SQL> ----CREATE TABLES
SQL> CREATE TABLE Users (
  2      user_id NUMBER PRIMARY KEY,
  3      name VARCHAR2(50),
  4      email VARCHAR2(50)
  5  );

Table created.

SQL>
SQL> CREATE TABLE Products (
  2      product_id NUMBER PRIMARY KEY,
  3      product_name VARCHAR2(50),
  4      price NUMBER,
  5      stock NUMBER
  6  );

Table created.

SQL>
SQL> CREATE TABLE Orders (
  2      order_id NUMBER PRIMARY KEY,
  3      user_id NUMBER,
  4      order_date DATE,
  5      FOREIGN KEY (user_id) REFERENCES Users(user_id)
  6  );

Table created.

SQL>
SQL> CREATE TABLE Order_Items (
  2      order_item_id NUMBER PRIMARY KEY,
  3      order_id NUMBER,
  4      product_id NUMBER,
  5      quantity NUMBER,
  6      FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  7      FOREIGN KEY (product_id) REFERENCES Products(product_id)
  8  );

Table created.

SQL>
SQL> CREATE TABLE Payments (
  2      payment_id NUMBER PRIMARY KEY,
  3      order_id NUMBER,
  4      amount NUMBER,
  5      payment_date DATE,
  6      FOREIGN KEY (order_id) REFERENCES Orders(order_id)
  7  );

Table created.

SQL> ----INSERT USERS 10
SQL> INSERT INTO Users VALUES (1,'Arun','arun@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (2,'Priya','priya@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (3,'Karthik','karthik@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (4,'Divya','divya@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (5,'Rahul','rahul@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (6,'Sneha','sneha@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (7,'Vikram','vikram@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (8,'Anjali','anjali@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (9,'Ravi','ravi@gmail.com');

1 row created.

SQL> INSERT INTO Users VALUES (10,'Meena','meena@gmail.com');

1 row created.

SQL> ----INSERT PRODUCTS 10
SQL> INSERT INTO Products VALUES (101,'Laptop',50000,10);

1 row created.

SQL> INSERT INTO Products VALUES (102,'Mobile',20000,15);

1 row created.

SQL> INSERT INTO Products VALUES (103,'Tablet',15000,8);

1 row created.

SQL> INSERT INTO Products VALUES (104,'Headphones',2000,20);

1 row created.

SQL> INSERT INTO Products VALUES (105,'Keyboard',1500,25);

1 row created.

SQL> INSERT INTO Products VALUES (106,'Mouse',800,30);

1 row created.

SQL> INSERT INTO Products VALUES (107,'Monitor',12000,10);

1 row created.

SQL> INSERT INTO Products VALUES (108,'Printer',7000,5);

1 row created.

SQL> INSERT INTO Products VALUES (109,'Camera',30000,6);

1 row created.

SQL> INSERT INTO Products VALUES (110,'Speaker',4000,12);

1 row created.

SQL> ---- INSERT ORDERS  10
SQL> INSERT INTO Orders VALUES (1001,1,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1002,2,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1003,3,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1004,4,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1005,5,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1006,6,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1007,7,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1008,8,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1009,9,SYSDATE);

1 row created.

SQL> INSERT INTO Orders VALUES (1010,10,SYSDATE);

1 row created.

SQL> ---INSERT ORDER VALUES 10
SQL> INSERT INTO Order_Items VALUES (1,1001,101,1);

1 row created.

SQL> INSERT INTO Order_Items VALUES (2,1002,102,2);

1 row created.

SQL> INSERT INTO Order_Items VALUES (3,1003,103,1);

1 row created.

SQL> INSERT INTO Order_Items VALUES (4,1004,104,3);

1 row created.

SQL> INSERT INTO Order_Items VALUES (5,1005,105,2);

1 row created.

SQL> INSERT INTO Order_Items VALUES (6,1006,106,1);

1 row created.

SQL> INSERT INTO Order_Items VALUES (7,1007,107,2);

1 row created.

SQL> INSERT INTO Order_Items VALUES (8,1008,108,1);

1 row created.

SQL> INSERT INTO Order_Items VALUES (9,1009,109,1);

1 row created.

SQL> INSERT INTO Order_Items VALUES (10,1010,110,2);

1 row created.

SQL> ---INSERT PAYMENTS
SQL> INSERT INTO Payments VALUES (1,1001,50000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (2,1002,40000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (3,1003,15000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (4,1004,6000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (5,1005,3000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (6,1006,800,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (7,1007,24000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (8,1008,7000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (9,1009,30000,SYSDATE);

1 row created.

SQL> INSERT INTO Payments VALUES (10,1010,8000,SYSDATE);

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM USERS;

   USER_ID NAME
---------- --------------------------------------------------
EMAIL
--------------------------------------------------
         1 Arun
arun@gmail.com

         2 Priya
priya@gmail.com

         3 Karthik
karthik@gmail.com


   USER_ID NAME
---------- --------------------------------------------------
EMAIL
--------------------------------------------------
         4 Divya
divya@gmail.com

         5 Rahul
rahul@gmail.com

         6 Sneha
sneha@gmail.com


   USER_ID NAME
---------- --------------------------------------------------
EMAIL
--------------------------------------------------
         7 Vikram
vikram@gmail.com

         8 Anjali
anjali@gmail.com

         9 Ravi
ravi@gmail.com


   USER_ID NAME
---------- --------------------------------------------------
EMAIL
--------------------------------------------------
        10 Meena
meena@gmail.com


10 rows selected.

SQL> SELECT * FROM PRODUCTS;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
     STOCK
----------
       101 Laptop                                                  50000
        10

       102 Mobile                                                  20000
        15

       103 Tablet                                                  15000
         8


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
     STOCK
----------
       104 Headphones                                               2000
        20

       105 Keyboard                                                 1500
        25

       106 Mouse                                                     800
        30


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
     STOCK
----------
       107 Monitor                                                 12000
        10

       108 Printer                                                  7000
         5

       109 Camera                                                  30000
         6


PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
     STOCK
----------
       110 Speaker                                                  4000
        12


10 rows selected.

SQL> SELECT * FROM PAYMENTS;

PAYMENT_ID   ORDER_ID     AMOUNT PAYMENT_D
---------- ---------- ---------- ---------
         1       1001      50000 28-MAR-26
         2       1002      40000 28-MAR-26
         3       1003      15000 28-MAR-26
         4       1004       6000 28-MAR-26
         5       1005       3000 28-MAR-26
         6       1006        800 28-MAR-26
         7       1007      24000 28-MAR-26
         8       1008       7000 28-MAR-26
         9       1009      30000 28-MAR-26
        10       1010       8000 28-MAR-26

10 rows selected.

SQL> SPOOL OFF
SQL>