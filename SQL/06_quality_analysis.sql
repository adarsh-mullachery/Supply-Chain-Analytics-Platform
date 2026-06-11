#Average Defect Rate
SELECT
ROUND(AVG(defect_rates),2) AS avg_defect_rate
FROM supply_chain;

#Defect Rate by Supplier
SELECT
supplier_name,
ROUND(AVG(defect_rates),2) AS defect_rate
FROM supply_chain
GROUP BY supplier_name
ORDER BY defect_rate DESC;

#Inspection Results Distribution
SELECT
inspection_results,
COUNT(*) AS total
FROM supply_chain
GROUP BY inspection_results;
