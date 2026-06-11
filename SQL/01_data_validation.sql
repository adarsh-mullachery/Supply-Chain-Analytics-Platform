#Total Records
SELECT COUNT(*) AS total_records
FROM supply_chain;

#DataType
DESCRIBE supply_chain;

#Product Categories
SELECT DISTINCT product_type
FROM supply_chain;

#No of Suppliers
SELECT COUNT(DISTINCT supplier_name) AS suppliers
FROM supply_chain;

#No of Locations
SELECT COUNT(DISTINCT location) AS locations
FROM supply_chain;
