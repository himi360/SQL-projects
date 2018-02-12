#Mihrete Samuel


#QUESTION 1

USE ex;

SELECT concat(customer_first_name, '  ', customer_last_name) as customer_name, 
concat(customer_address, ' , ',customer_city,' , ', customer_state,' , ', customer_zip) as customer_address,
concat('Tel: ', customer_phone) AS customer_phone
FROM customers
WHERE customer_last_name >= 'RO' AND customer_last_name <= 'Z'
ORDER BY customer_last_name ASC;

#QUESTION 2

USE ex;

SELECT invoice_number, invoice_date, invoice_total, invoice_due_date,
CASE WHEN month( invoice_due_date) =6 THEN date_format(invoice_due_date, ' DUE IN %M %Y' )
WHEN month (invoice_due_date) =7 THEN date_format (invoice_due_date, 'Due in %M %Y' )
END AS month_due
FROM active_invoices
ORDER BY invoice_total DESC;


#QUESTION 3

USE ex;

SELECT project_number, concat(first_name, " ", last_name) AS employee_name, department_name
FROM departments d
LEFT JOIN employees e
on d.department_number = e.department_number
LEFT JOIN projects p
on e.employee_id = p.employee_id
ORDER BY department_name ASC, employee_name DESC;

#QUESTION 4
USE ap;

SELECT invoice_id, line_item_description, line_item_amount, account_description 
FROM ap.general_ledger_accounts
LEFT JOIN ap.invoice_line_items
ON general_ledger_accounts.account_number = invoice_line_items.account_number
WHERE line_item_amount >1000 AND line_item_amount < 2000
order by line_item_amount;
