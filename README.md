#  Global Superstore – End-to-End Data Analytics

End-to-end Data Analytics project using **Python, SQL, and Power BI** to analyze 51,290 dataset records, extract key operational metrics, and optimize profitability.

---

##  Workflow

Raw Data ➔ Python (EDA & Feature Engineering) ➔ SQL Analytics ➔ Power BI Dashboard ➔ Insights

---

##  Tools

* **Python:** Data cleaning, Feature Engineering, and EDA.
* **SQL:** Business queries and metric aggregation.
* **Power BI:** Interactive executive dashboard.

---

## Data Prep & Feature Engineering (Python)

* **Dataset:** 51,290 rows × 24 columns (`Order Date`, `Sales`, `Profit`, `Customer`, `Region`, etc.).
* **Data Cleaning:** Handled missing values, removed duplicates, fixed data types, and parsed dates.
* **Feature Engineering:**
  * `Shipping Delay` = `Ship Date` − `Order Date`
  * `Profit Margin %` = `Profit` ÷ `Sales`

---

##  SQL Business Findings

|  Business queries| Finding  |
|---|---|
|  Top profit customer | **Customer ID: 1 TC20980)** |
|  High sales, negative profit product | **Cubify CubeX 3D Printer Double Head Print** |
|  Sub-category with highest avg discount | **Binders** |
| Region with highest shipping cost/sales ratio | **East Region** |
|  Best profit margin location | **New York City** |
|  High sales, low profit city | **Cajazeiras** |
|  Top total profit driver product | **Motorola Smart Phone, Full Size** |
|  State with most loss-making orders | **Texas** |

---

##  Power BI Dashboard Structure

1. **Executive Overview** – Business performance & KPIs.
2. **Sales Performance** – Revenue trends, markets & top products.
3. **Profitability Analysis** – Margins, discounts & loss areas.
4. **Customer & Segment** – Customer behavior (~51.7% sales from Consumer segment).
5. **Product & Category** – Performance across Tech, Phones, Copiers & Chairs.
6. **Operations & Shipping** – Delivery efficiency & shipping cost analysis.

---

## 🧠 Business Recommendations

* **APAC Focus:** Increase investment in APAC (top sales market) and double down on **Technology**.
* **Discount Control:** Cap discounts in **Texas** and **Binders** to protect margins.
* **Logistics:** Reduce delivery costs in the **East Region** and promote **Standard Class** shipping.
* **Pricing Fixes:** Revise pricing in low-profit cities (**Cajazeiras**) and cap hardware losses (*Cubify 3D Printer*).
* **VIP Retention:** Launch targeted loyalty programs for top profit contributors (**Customer ID: 1**).


