

#EXERCISE 1
USE my_guitar_shop;

DROP PROCEDURE IF EXISTS insert_category;

DELIMITER //

CREATE PROCEDURE insert_cartegory

(
	category_name VARCHAR(225)
    
)

BEGIN 
	INSERT INTO categories
    VALUES (DEFAULT, cartegory_name);
END//


DELIMITER ;

#EXERCISE 2

DROP PROCEDURE IF EXISTS discount_price;

DELIMITER //

CREATE PROCEDURE discount_price
(  category_name INT

)
RETURNS DECIMAL (10, 2);
BEGIN 
DECLARE discount_price_var DECIMAL(10,2)

