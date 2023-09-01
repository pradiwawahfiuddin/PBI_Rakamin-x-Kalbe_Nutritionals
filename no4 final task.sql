#CREATE DATABASE
CREATE SCHEMA `KALBE`;

#CREATE TABLE
CREATE TABLE Inventory (
	Item_code INT NOT NULL,
    Item_name VARCHAR(50) NOT NULL,
    Item_price INT NOT NULL,
    Item_total INT NOT NULL,
    PRIMARY KEY (Item_code));
    
#INSERT DATA TO TABLE
INSERT INTO inventory (Item_code, Item_name, Item_price, Item_total) 
	VALUES
			(2341, 'Promag Tablet', 3000, 100),
            (2342, 'Hydro Coco 250ML', 7000, 20),
            (2343, 'Nutrive Benecol 100ML', 20000, 30),
            (2344, 'Blackmores Vit C 500Mg', 95000, 45),
            (2345, 'Entrasol Gold 370G', 90000, 120);
			
            
#Show Item_name that has the highest number in Item_total
 SELECT item_name
 from inventory
 order by item_total DESC
 Limit 1;

#Update the Item_price of the output of question bullet
UPDATE inventory
set item_price = 110000
WHERE item_name = (SELECT * FROM
				(SELECT item_name
				FROM inventory
                ORDER BY item_total DESC
                Limit 1)temp);

UPDATE inventory
set item_price = 95000
WHERE item_name= 'Entrasol Gold 370G';

#What will happen if we insert another Item_name with Item_code of 2343 into the table?
 INSERT INTO inventory (Item_code, Item_name, Item_price, Item_total) 
	VALUES
			(2343, 'Vitamin C', 5000, 100);

#Delete the Item_name that has the lowest number of Item_total.
DELETE
FROM inventory
WHERE item_total = (SELECT * FROM
					(SELECT MIN(item_total)
					FROM inventory)temp);
select * 
from inventory








