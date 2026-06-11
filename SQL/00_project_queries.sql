-- Stage 1: Data Validation

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

#-----------------------------------------#

-- Stage 2: Sales & Revenue Analysis

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

#-----------------------------------------#

-- Stage 3: Inventory Analysis

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

#-----------------------------------------#

-- Stage 4: Supplier Analysis

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

#-----------------------------------------#

-- Stage 5: Logistics Analysis

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

#-----------------------------------------#

-- Stage 6: Quality Analysis

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

#-----------------------------------------#

-- Stage 7: Create Derived Metrics

#Profit
SELECT
sku,
ROUND(revenue_generated
- manufacturing_costs
- shipping_costs
- costs,2) AS profit
FROM supply_chain;

#Top Profitable Products
SELECT
sku,
ROUND(
revenue_generated
- manufacturing_costs
- shipping_costs
- costs
,2) AS profit
FROM supply_chain
ORDER BY profit DESC
LIMIT 10;

#Revenue Ranking
SELECT
sku,
ROUND(revenue_generated,2),
RANK() OVER(
ORDER BY revenue_generated DESC
) AS revenue_rank
FROM supply_chain;

#Supplier Ranking
SELECT
supplier_name,
ROUND(AVG(lead_time),2) avg_lead_time,
RANK() OVER(
ORDER BY AVG(lead_time)
) AS supplier_rank
FROM supply_chain
GROUP BY supplier_name;


#-----------------------------------------#

-- View 1: Supplier Performance

CREATE VIEW vw_supplier_performance AS
SELECT
    supplier_name,
    ROUND(AVG(lead_time),2) AS avg_lead_time,
    ROUND(AVG(defect_rates),2) AS avg_defect_rate,
    ROUND(AVG(manufacturing_costs),2) AS avg_manufacturing_cost
FROM supply_chain
GROUP BY supplier_name;

SELECT *
FROM vw_supplier_performance;

-- View 2: Inventory Health

CREATE VIEW vw_inventory_health AS
SELECT
    sku,
    product_type,
    stock_levels,
    number_of_products_sold,
    ROUND(
        number_of_products_sold /
        NULLIF(stock_levels,0),
        2
    ) AS inventory_turnover
FROM supply_chain;

SELECT *
FROM vw_inventory_health;

-- View 3: Profit Analysis

CREATE VIEW vw_profit_analysis AS
SELECT
    sku,
    product_type,
    revenue_generated,
    manufacturing_costs,
    shipping_costs,
    costs,
    (
        revenue_generated
        - manufacturing_costs
        - shipping_costs
        - costs
    ) AS profit
FROM supply_chain;

SELECT *
FROM vw_profit_analysis;

-- View 4: Logistics Performance 

CREATE VIEW vw_logistics_performance AS
SELECT
    transportation_modes,
    shipping_carriers,
    SUM(costs) AS total_transport_cost,
    AVG(shipping_costs) AS avg_shipping_cost
FROM supply_chain
GROUP BY
    transportation_modes,
    shipping_carriers;
    
SELECT *
FROM vw_logistics_performance;
