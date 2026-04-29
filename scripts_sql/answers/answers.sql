/* PRACTICAL ASSESSMENT QUESTIONS AND FORMULAS:*/
	/*1.  Simple Interest: I = P * r * t*/
	SELECT 
		CAST(Principal * Annual_Rate * Term_Years AS DECIMAL (10,2)) AS simple_interest
	FROM [financial_engineering_db].[dbo].[financial_tasks]
	WHERE Task_ID = '1'

   /*2.  Annual Compound: A = P * (1 + r)^n */
   SELECT 
		CAST((Principal * POWER( 1 + Annual_Rate, Term_Years)) AS DECIMAL (10,2))  AS compound_interest
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '2'

   /* 3.  Hire Purchase Installment: Monthly = [P * (1 + r * t)] / 36 */
   SELECT 
		CAST(Principal *(1 + Annual_Rate * Term_Years)/36 AS DECIMAL (10,2)) AS hire_purchase
	FROM [financial_engineering_db].[dbo].[financial_tasks]
	WHERE Task_ID = '3'
	
   /* 4.  Inflation Projection: A = P * (1 + i)^n */
   SELECT 
		CAST((Principal * POWER( 1 + Annual_Rate, Term_Years)) AS DECIMAL (10,2))  AS inflation
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '4'

   /* 5.  Reducing Balance Depreciation: A = P * (1 - i)^n */
    SELECT 
		CAST((Principal * POWER( 1 - Annual_Rate, Term_Years)) AS DECIMAL (10,2))  reducing_depreciation
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '5'

   /* 6.  Quarterly Compound: A = P * (1 + r/4)^(4 * n) */
   SELECT 
		CAST((Principal * POWER((1 + Annual_Rate/4),(4 * Term_Years))) AS DECIMAL (10,2))  quarterly_compound
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '6'

   /* 7.  Monthly Loan Accrual: I = [P * (1 + r/12)^12] - P */
   SELECT 
		CAST((Principal * POWER((1 + Annual_Rate/12),(12))-Principal) AS DECIMAL (10,2))  loan_accrual
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '7'

   /* 8.  Doubling Time (Simple): t = 1 / r */
   SELECT 
		CAST(1 / Annual_Rate AS DECIMAL (10,2)) AS doubling_time
	FROM [financial_engineering_db].[dbo].[financial_tasks]
	WHERE Task_ID = '8'

   /* 9.  Effective Annual Rate: EAR = (1 + r/m)^m - 1 */
   SELECT 
		CAST((POWER (1 + Annual_Rate/12,12) -1) AS DECIMAL (10,2))  effective_rate
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '9'

   /* 10. Semi-Annual Growth: A = P * (1 + r/2)^(2 * n) */
   SELECT 
		CAST((Principal * POWER((1 + Annual_Rate/2),(2 * Term_Years))) AS DECIMAL (10,2))  semi_annual_growth
   FROM [financial_engineering_db].[dbo].[financial_tasks]
   WHERE Task_ID = '10'