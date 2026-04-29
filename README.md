## Computational Financial Modeling (SQL)

## 📌 Overview
This project demonstrates how **financial mathematics** can be translated into **computational models** using SQL. By leveraging SQL queries, we can automate calculations such as interest accrual, depreciation, inflation adjustments, and loan repayments with high numerical precision.

The goal is to bridge **finance** and **data science**:
- Finance provides the **mathematical models** (formulas for interest, depreciation, growth, etc.).
- Data science provides the **computational tools** (SQL queries, data types, validation).
- Together, they enable **accurate, scalable, and auditable financial reporting**.

---

## ⚙️ Technical Setup
- **Environment**: Microsoft SQL Server Management Studio (SSMS)  
- **Database**: `FinancialEngineeringDB`  
- **Table**: `FinancialTasks`  
- **Precision**: All outputs formatted to **two decimal places** (e.g., `DECIMAL(10,2)`)  
- **Validation**: Results must match reference outputs exactly  

---

## 🔗 Linking Finance to Data
Financial models are essentially **mathematical formulas**. SQL allows us to:
1. **Translate formulas into queries** → e.g., compound interest becomes a `POWER()` function in SQL.
2. **Ensure precision** → using `DECIMAL` data types avoids rounding errors in currency.
3. **Automate calculations** → queries can be reused across datasets and scaled to millions of records.
4. **Validate results** → outputs can be compared against known financial benchmarks.

---

## 📊 Example Tasks

| ID | Financial Concept | Formula | SQL Implementation | Reference Result |
|----|------------------|---------|--------------------|------------------|
| 01 | Simple Interest | \( I = P \cdot r \cdot t \) | `SELECT 4500*0.07*5;` | 1575.00 |
| 02 | Compound Interest | \( A = P(1+r)^t \) | `SELECT 12000*POWER(1.065,8);` | 19860.13 |
| 03 | Hire Purchase | \( \text{Monthly} = \frac{P(1+rt)}{36} \) | `SELECT (18700*(1+0.11*3))/36;` | 690.81 |
| 04 | Inflation | \( A = P(1+i)^n \) | `SELECT 1550*POWER(1.055,12);` | 2946.90 |
| 05 | Depreciation | \( A = P(1-d)^n \) | `SELECT 480000*POWER(1-0.18,6);` | 145920.44 |
| 06 | Quarterly Compound | \( A = P(1+\frac{r}{4})^{4n} \) | `SELECT 95000*POWER(1+0.09/4,16);` | 135621.84 |
| 07 | Loan Accrual | \( I = [P(1+\frac{r}{12})^{12}] - P \) | `SELECT (30000*POWER(1+0.14/12,12))-30000;` | 4480.25 |
| 08 | Doubling Time (SI) | \( t = \frac{1}{r} \) | `SELECT 1/0.125;` | 8.00 Years |
| 09 | Effective Annual Rate | \( EAR = (1+\frac{r}{m})^m - 1 \) | `SELECT POWER(1+0.132/12,12)-1;` | 0.1403 |
| 10 | Semi-Annual Growth | \( A = P(1+\frac{r}{2})^{2n} \) | `SELECT 2500000*POWER(1+0.15/2,20);` | 10804532.18 |

---

## ✅ Key Takeaways
- **Finance is data**: Every financial formula can be expressed as a computational query.  
- **SQL is the bridge**: It transforms abstract formulas into precise, repeatable calculations.  
- **Precision matters**: Using `DECIMAL` ensures financial integrity in reporting.  
- **Validation ensures trust**: Outputs must match reference values exactly to confirm accuracy.  

---

## 🚀 Applications
- Banking systems (loan interest, repayment schedules)  
- Investment platforms (compound growth, effective annual rates)  
- Accounting software (depreciation, inflation adjustments)  
- Risk modeling & forecasting  

---
