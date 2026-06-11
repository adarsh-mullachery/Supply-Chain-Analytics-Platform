#Cost by Transportation Mode
SELECT
transportation_modes,
ROUND(SUM(costs),2) AS total_cost
FROM supply_chain
GROUP BY transportation_modes
ORDER BY total_cost DESC;

#Shipping Carrier Performance
SELECT
shipping_carriers,
ROUND(AVG(shipping_costs),2) AS avg_shipping_cost
FROM supply_chain
GROUP BY shipping_carriers;

#Route Analysis
SELECT
routes,
ROUND(SUM(costs),2) AS total_cost
FROM supply_chain
GROUP BY routes
ORDER BY total_cost DESC;
