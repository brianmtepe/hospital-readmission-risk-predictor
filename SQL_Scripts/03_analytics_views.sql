/*
PROJECT: Hospital Readmission Risk Analytics
FILE: 04_analytics_views.sql
OBJECTIVE:
Create semantic analytics layer for Power BI dashboards.
SKILLS:
- SQL Views
- Aggregations
- Healthcare KPI Engineering
*/
USE hospital_readmission_db;

/*==================================================
1. READMISSION METRICS VIEW
==================================================*/
CREATE OR REPLACE VIEW vw_readmission_metrics AS
SELECT
    encounter_id,
    patient_id,
    age,
    gender,
    bmi,
    diabetes,
    hypertension,
    medication_count,
    length_of_stay,
    primary_diagnosis,
    discharge_destination,
    total_cost,
    risk_category,
    CASE
        WHEN readmitted_30_days = 'Yes'
        THEN 1
        ELSE 0

    END AS is_readmitted
FROM hospital_encounters;

/*==================================================
2. FINANCIAL IMPACT VIEW
==================================================*/
CREATE OR REPLACE VIEW vw_financial_impact AS
SELECT
    primary_diagnosis,

    COUNT(*) AS total_cases,

    ROUND(AVG(total_cost),2)
    AS avg_cost_per_case,

    ROUND(SUM(total_cost),2)
    AS total_financial_exposure,

    ROUND(SUM(total_cost) * 0.15,2)
    AS estimated_preventable_savings

FROM hospital_encounters
GROUP BY primary_diagnosis;

/*==================================================
3. CARE PATHWAYS VIEW
==================================================*/
CREATE OR REPLACE VIEW vw_care_pathways AS
SELECT
    discharge_destination,
    COUNT(*) AS total_patients,
    SUM(
        CASE
            WHEN readmitted_30_days = 'Yes'
            THEN 1
            ELSE 0
        END
    ) AS total_readmissions,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN readmitted_30_days = 'Yes'
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS readmission_rate_pct

FROM hospital_encounters
GROUP BY discharge_destination;