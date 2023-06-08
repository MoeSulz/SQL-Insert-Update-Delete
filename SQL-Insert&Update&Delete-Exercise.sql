-- Exercise 1:
INSERT INTO suppliers(supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, homepage)
VALUES (30, "Mister Whoops", "John Bruv", "Sales Representative", "123 Main Street", "New York", "NY", 10001, "USA", "(347)-3445-3554", "(718)-223-3344", NULL);

-- Exercise 2:
INSERT INTO products(productid, productname, supplierid, categoryID, quantityperunit, unitprice, unitsinstock, unitsonorder, reorderlevel, discontinued)
VALUES (78, "Faygo", 30, 1, "10 boxes x 6 pieces", 2.50, 13, 1, 0, 0);

-- Exercise 3:
SELECT p.productname, p.supplierid, s.companyname
FROM products p
INNER JOIN suppliers s ON p.supplierid = s.SupplierID;

-- Exercise 4:
UPDATE products
SET unitprice = unitprice * 1.15
WHERE productid = 78;

-- Exercise 5:
SELECT p.productname, p.unitprice, s.companyname
FROM products p
INNER JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = "Mister Whoops";

-- Exercise 6:
DELETE FROM products
WHERE productid = 78;

-- Exercise 7:
DELETE FROM suppliers
WHERE supplierid = 30;