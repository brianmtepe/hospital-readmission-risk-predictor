/*
PROJECT: Hospital Readmission Risk Analytics
FILE: 05_data_quality_checks.sql
OBJECTIVE:
Validate enterprise healthcare analytics pipeline outputs.
SKILLS:
- Data Validation
- Quality Assurance
- KPI Verification
*/

USE hospital_readmission_db;
/*==================================================
1. VERIFY RAW TABLE
==================================================*/
SELECT *
FROM hospital_encounters
LIMIT 10;

/*==================================================
2. VERIFY FINANCIAL ENGINEERING
==================================================*/
SELECT
    patient_id,
    total_cost,
    primary_diagnosis,
    risk_category,
    discharge_status
FROM hospital_encounters
LIMIT 20;

/*==================================================
3. VERIFY READMISSION VIEW
==================================================*/

SELECT *
FROM vw_readmission_metrics
LIMIT 10;

/*==================================================
4. VERIFY FINANCIAL VIEW
==================================================*/
SELECT *
FROM vw_financial_impact;

/*==================================================
5. VERIFY CARE PATHWAYS VIEW
==================================================*/
SELECT *
FROM vw_care_pathways;