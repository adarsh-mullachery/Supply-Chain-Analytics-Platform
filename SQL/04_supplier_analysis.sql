#Average Lead Time per Supplier
SELECT
supplier_name,
ROUND(AVG(lead_time),2) AS avg_lead_time
FROM supply_chain
GROUP BY supplier_name
ORDER BY avg_lead_time;

#Manufacturing Cost by Supplier
SELECT
supplier_name,
ROUND(AVG(manufacturing_costs),2) AS avg_cost
FROM supply_chain
GROUP BY supplier_name
ORDER BY avg_cost;

#Revenue Contribution by Supplier
SELECT
supplier_name,
ROUND(SUM(revenue_generated),2) AS revenue
FROM supply_chain
GROUP BY supplier_name
ORDER BY revenue DESC;
