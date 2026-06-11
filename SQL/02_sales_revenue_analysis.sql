#Total Revenue 
SELECT ROUND(SUM(revenue_generated),2) AS total_revenue
FROM supply_chain;

#Revenue By Product Type
SELECT product_type,ROUND(SUM(revenue_generated),2) AS total_revenue
FROM supply_chain
GROUP BY product_type
ORDER BY total_revenue DESC;

#Average Product Price By Product Type
SELECT product_type,ROUND(AVG(price),2) AS avg_price
FROM supply_chain
GROUP BY product_type
ORDER BY avg_price DESC;

#Top 10 Revenue Generated SKU's
SELECT sku, revenue_generated
FROM supply_chain
ORDER BY revenue_generated DESC
LIMIT 10;
