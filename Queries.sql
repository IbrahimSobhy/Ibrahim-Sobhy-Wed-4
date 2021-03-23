(1)

SELECT DISTINCT orderNumber FROM orderdetails
WHERE productCode LIKE "S18%"
AND priceEach >100;


(2)

SELECT * FROM payments
WHERE (month(paymentDate)=5 OR month(paymentDate)=6)
OR( year(paymentDate)=2005 OR year(paymentDate)=2006);



(3)

SELECT * FROM customers
WHERE country="usa" 
AND phone LIKE "%5555%"
ORDER BY creditLimit  DESC 
LIMIT 1 OFFSET 5;



