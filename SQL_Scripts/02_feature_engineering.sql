
/*
PROJECT: Hospital Readmission Risk Analytics
FILE: 03_feature_engineering.sql
OBJECTIVE:
Generate enterprise healthcare analytics features.
SKILLS:
- CASE WHEN
- Clinical Risk Engineering
- Financial Modeling
- Healthcare Analytics
*/

USE hospital_readmission_db;
SET SQL_SAFE_UPDATES = 0;

/*==================================================
1. FINANCIAL COST ENGINEERING
==================================================*/
UPDATE hospital_encounters
SET total_cost =
(
    2500
    + (length_of_stay * 1200)
    + (medication_count * 85)
    + CASE
        WHEN bmi < 18.5
             OR bmi >= 30
        THEN 1500
        ELSE 0
      END
);

/*==================================================
2. PRIMARY DIAGNOSIS ENGINEERING
==================================================*/
UPDATE hospital_encounters
SET primary_diagnosis =
CASE
    WHEN diabetes = 'Yes'
         AND hypertension = 'Yes'
    THEN 'Cardiometabolic Disease'
    WHEN diabetes = 'Yes'
    THEN 'Diabetes Complications'
    WHEN hypertension = 'Yes'
    THEN 'Hypertensive Crisis'
    ELSE 'General Medical Condition'
END;

/*==================================================
3. READMISSION RISK STRATIFICATION
==================================================*/
USE hospital_readmission_db;
SET SQL_SAFE_UPDATES = 0;
UPDATE hospital_encounters
SET risk_category =
CASE
    WHEN medication_count >= 8 THEN 'High Risk'
    WHEN medication_count BETWEEN 5 AND 7 THEN 'Medium Risk'
    ELSE 'Low Risk'
END;

/*4. DISCHARGE OUTCOME ENGINEERING*/
UPDATE hospital_encounters
SET discharge_status =
CASE
    WHEN readmitted_30_days = 'Yes'
    THEN 'Referred Follow-up'
    ELSE 'Stable Discharge'
END;