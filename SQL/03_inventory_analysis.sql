#Average Stock Level
SELECT
ROUND(AVG(stock_levels),2)
FROM supply_chain;

#Low Inventory Products
SELECT
sku,
stock_levels
FROM supply_chain
ORDER BY stock_levels
LIMIT 10;

#Inventory Turn Over
SELECT
sku,
number_of_products_sold /
NULLIF(stock_levels,0) AS inventory_turnover
FROM supply_chain
ORDER BY inventory_turnover DESC;


#Demand or Fast Moving Products
SELECT
sku,
number_of_products_sold
FROM supply_chain
ORDER BY number_of_products_sold DESC
LIMIT 10;
