#Mihrete Samuel
#Assignment 2 

#QUESTION 1

USE my_guitar_shop;
SELECT * FROM ex.customers;
SELECT * FROM addresses;
INSERT INTO addresses(customer_id, line1, line2, city, state, zip_code, phone, disabled)
VALUES('6', '12765 Lark Str. ', 'Apt 201', 'College Park', 'MD', '20742', '301-999-8888', '0')

#QUESTION 2
USE my_guitar_shop;
SELECT * FROM orders;
INSERT INTO 
orders (customer_id, order_date, ship_amount, tax_amount, ship_date, ship_address_id, card_type, card_number, card_expires, billing_address_id)
VALUES('6', '2017-09-25 11: 35:18', '5', '0', now(), '13', 'Visa', '1234567890123456') 
    
# QUESTION 3

USE my_guitar_shop;
UPDATE Orders
SET tax_amount= 3.60
WHERE order_id= 10;

#QUESTION 4

USE my_guitar_shop;
DELETE FROM my_guitar_shop.addresses
WHERE address_id = 6;
DELETE FROM my_guitar_shop.orders
WHERE ship_address_id = 15;


#QUESTION 6

USE my_guitar_shop;
SELECT product_name,
SUM((item_price - discount_amount) * quantity)
AS product_total
 FROM products p 
JOIN order_items o 
ON p.product_id = o.product_id
GROUP BY product_name WITH ROLLUP;