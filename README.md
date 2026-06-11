# Supply Chain Analytics Dashboard

## Project Overview

This project analyzes a supply chain dataset to identify opportunities for improving profitability, inventory management, supplier performance, and logistics efficiency. The solution combines Python, MySQL, SQL analytics, and Power BI to transform raw operational data into actionable business insights.

## Dataset Information

**Source:** Kaggle Supply Chain Dataset

### Dataset Size

* 100 SKUs
* 24 Columns

### Main Fields

* Product Type
* SKU
* Revenue
* Stock Levels
* Supplier
* Transportation Mode
* Shipping Costs
* Defect Rates
* Manufacturing Costs
* Lead Time
* Inspection Results

---

## Project Workflow

```text
CSV Dataset
    ↓
Python Data Cleaning
    ↓
MySQL Database
    ↓
SQL Analysis & Database Views
    ↓
Python Exploratory Data Analysis (EDA)
    ↓
Power BI Dashboard
    ↓
Business Recommendations
```

---

## Technology Stack

* Python
* Pandas
* NumPy
* MySQL
* SQL
* Power BI
* Matplotlib
* Seaborn

---

## SQL Analysis Performed

### Sales Analysis

* Total Revenue
* Revenue by Product Type
* Top Revenue-Generating SKUs
* Average Product Price

### Inventory Analysis

* Inventory Turnover
* Low Stock Products
* Fast-Moving Products

### Supplier Analysis

* Lead Time Analysis
* Manufacturing Cost Analysis
* Supplier Revenue Contribution

### Logistics Analysis

* Transportation Cost Analysis
* Route Cost Analysis
* Shipping Carrier Analysis

### Quality Analysis

* Defect Rate Analysis
* Inspection Results Distribution

### Advanced Analytics

* Profit Calculation
* Revenue Ranking
* Supplier Ranking

---

## Database Views Created

### `vw_profit_analysis`

Used for profitability analysis and profit-based reporting.

### `vw_inventory_health`

Used to monitor inventory turnover and stock risk.

### `vw_supplier_performance`

Used for supplier performance evaluation.

### `vw_logistics_performance`

Used for logistics cost and transportation analysis.

---

## Key Insights

### Revenue & Profit

| Metric        | Value |
| ------------- | ----- |
| Total Revenue | $577K |
| Total Profit  | $519K |
| Profit Margin | 89.9% |

#### Findings

* Skincare products generate the highest revenue and profit.
* Profit is strongly correlated with revenue.
* Revenue concentration follows the Pareto Principle, where a small number of products contribute most of the profit.

---

## ABC Analysis

| Category | Profit Contribution |
| -------- | ------------------- |
| A        | 79%                 |
| B        | 16%                 |
| C        | 5%                  |

### Findings

* Category A products drive the majority of business profit.
* Inventory planning should prioritize Category A SKUs.
* Strategic focus on high-value products can maximize profitability.

---

## Inventory Analysis

### Findings

* 26 Fast-Moving SKUs
* 49 Medium-Moving SKUs
* 25 Slow-Moving SKUs

### Business Impact

* Fast-moving products face stockout risks.
* Slow-moving products increase inventory carrying costs.
* Inventory optimization can improve working capital efficiency.

---

## Supplier Analysis

### Supplier 1

* Lowest lead time
* Lowest defect rate
* Best overall supplier performance

### Supplier 5

* Highest defect rate
* Requires quality improvement initiatives

### Supplier 4

* Highest manufacturing cost
* Opportunity for cost optimization and negotiation

---

## Logistics Analysis

### Findings

* Road transportation generates the highest logistics cost.
* Carrier B contributes the highest shipping expenses.
* Route A is the most expensive logistics route.
* Sea transportation remains the lowest-cost shipping option.

---

## Power BI Dashboard

### Page 1 – Executive Summary

#### KPIs

* Total Revenue
* Total Profit
* Products Sold
* Profit Margin
* Defect Rate

#### Visuals

* Revenue by Product Type
* Profit by Product Type
* Revenue Distribution
* Top Revenue-Generating SKUs

---

### Page 2 – Operations Dashboard

#### KPIs

* Inventory Turnover
* Lead Time
* Manufacturing Cost
* Logistics Cost

#### Visuals

* Fast-Moving Products
* Supplier Lead Time Analysis
* Transportation Cost by Mode
* Supplier Defect Rate Analysis

---

### Page 3 – Recommendations Dashboard

#### Focus Areas

* Inventory Risk
* Supplier Performance
* Logistics Optimization
* Cost Reduction Opportunities

#### Business Recommendations

* Prioritize Category A SKUs.
* Increase safety stock for fast-moving products.
* Strengthen partnerships with Supplier 1.
* Address quality concerns with Supplier 5.
* Optimize Route A transportation costs.
* Expand utilization of lower-cost transportation modes.

---

## Prescriptive Recommendations

### Inventory Management

* Increase replenishment frequency for fast-moving products.
* Maintain appropriate safety stock levels to prevent stockouts.

### Procurement Strategy

* Allocate a larger share of procurement volume to Supplier 1.
* Continuously monitor supplier lead times and quality metrics.

### Quality Management

* Conduct supplier quality reviews for Supplier 5.
* Implement corrective action plans to reduce defect rates.

### Logistics Optimization

* Investigate Route A cost drivers.
* Review Carrier B shipping expenses and renegotiate contracts where feasible.
* Shift more shipments to lower-cost transportation modes when operationally viable.

### Profitability Enhancement

* Focus inventory investment on Category A products.
* Monitor product profitability and prioritize high-margin SKUs.

---

## Project Outcome

This project demonstrates how data analytics can be leveraged to improve supply chain decision-making through:

* Revenue and profit optimization
* Inventory risk management
* Supplier performance evaluation
* Logistics cost reduction
* Data-driven business recommendations

The final Power BI dashboard provides stakeholders with an interactive and actionable view of supply chain performance, enabling informed operational and strategic decisions.
