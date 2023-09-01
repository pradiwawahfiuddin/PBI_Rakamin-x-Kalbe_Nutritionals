#CREATE TABLE
CREATE TABLE customer_orders (
	order_no INT NOT NULL,
    purchase_amount INT NOT NULL,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL,
    PRIMARY KEY (order_no));
    
#INSERT DATA TO TABLE
INSERT INTO customer_orders (order_no, purchase_amount, order_date, customer_id, salesman_id) 
	VALUES
			(10001, 150, '2022-10-05', 2005, 3002),
			(10009, 270, '2022-09-10', 2001, 3005),
            (10002, 65, '2022-10-05', 2002, 3001),
            (10004, 110, '2022-08-17', 2009, 3003),
            (10007, 948, '2022-09-10', 2005, 3002),
            (10005, 2400, '2022-07-27', 2007, 3001);
            
#Create a Query to display all customer orders where purchase amount is less than 100 or exclude those orders which order date is on or greater than 25 Aug 2022 and customer id is above 2001
SELECT *
FROM customer_orders
	WHERE (purchase_amount < 100)
	OR (order_date) < '2022-08-25'
    and customer_id > 2001;
