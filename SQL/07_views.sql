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


-- View 5: Logistics Performance 

CREATE VIEW vw_logistics_analysis AS
SELECT
    sku,
    transportation_modes,
    shipping_carriers,
    routes,
    shipping_costs,
    costs
FROM supply_chain;