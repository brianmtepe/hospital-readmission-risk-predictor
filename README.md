Hospital Readmission Analytics & Risk Prediction Dashboard

Overview

Healthcare analytics project focused on identifying hospital readmission patterns, high-risk patient groups, and operational risk factors using Power BI, SQL, and Python.

The project combines clinical insight with data analytics to support readmission monitoring, discharge planning, and healthcare decision-making.

---

Technology Stack

SQL | Python (Pandas) | Power BI | scikit-learn

---

Dashboard Pages

1. Executive Readmission Overview

"Executive Overview" (images/Readmission_Risk_Executive_Summary.png)

Highlights

- Readmission rate monitoring
- High-risk patient overview
- Executive clinical summary
- Key healthcare KPIs

---

2. Clinical Performance Analysis

"Clinical Performance Dashboard" (images/Clinical_Readmission_Risk_Overview.jpeg)

Analysis Areas

- Readmission trends
- Length of stay analysis
- Polypharmacy impact
- Discharge pathway monitoring

---

3. Care Pathway Optimization

"Care Pathways Optimization" (images/Care_Transition_&_Financial_Risk_Analysis.jpeg)

Operational Insights

- Financial exposure analysis
- Medication burden correlation
- Readmission cost drivers
- Intervention prioritization

---

Problem Statement

Hospital readmissions within 30 days are associated with increased healthcare costs, resource strain, and gaps in discharge planning and follow-up care.

Understanding readmission drivers can support earlier intervention, improve patient outcomes, and reduce avoidable healthcare expenditure.

---

Solution Overview

This project analyzes hospital readmission data to identify patterns associated with increased readmission risk.

The dashboard supports:

- Risk stratification
- Readmission trend analysis
- Operational monitoring
- Clinical insight visualization

Built using:

- SQL
- Python
- Power BI

---

📊 SQL Analytics Highlights

The analytics pipeline relies on SQL for transforming raw clinical records into structured datasets ready for reporting and analysis.

Key SQL Functions Demonstrated

Data Cleaning and Standardization

- Normalization of inconsistent clinical records and diagnosis categories
- Data validation and quality assurance checks
- Handling missing and duplicate records

Feature Engineering

- Construction of patient risk cohorts
- Age group segmentation
- Polypharmacy risk categorization
- Clinical risk factor mapping

Readmission Analytics

- Aggregation of readmission rates across patient groups
- Length of stay analysis
- Discharge pathway evaluation
- Readmission trend monitoring

Advanced SQL Techniques

- Common Table Expressions (CTEs)
- Window Functions
- Conditional Logic (CASE WHEN)
- Aggregate Functions
- Multi-table Joins
- Data Quality Validation Queries

Repository SQL Files

- "01_database_setup.sql"
- "02_feature_engineering.sql"
- "03_analytics_views.sql"
- "04_data_quality_checks.sql"

---

Project Structure

Hospital_Readmission_Project/
│
├── images/
│   ├── Readmission_Risk_Executive_Summary.png
│   ├── Clinical_Readmission_Risk_Overview.jpeg
│   └── Care_Transition_&_Financial_Risk_Analysis.jpeg
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_feature_engineering.sql
│   ├── 03_analytics_views.sql
│   └── 04_data_quality_checks.sql
│
├── notebooks/
│
├── dashboard/
│
└── README.md

---

Key Insights

- Patients with moderate length of stay (3–8 days) demonstrated elevated readmission patterns.
- Polypharmacy (high medication burden) was associated with increased readmission risk.
- Certain discharge pathways showed higher readmission trends.
- Older patient groups exhibited higher-risk clinical profiles.
- Readmission risk varied significantly across patient cohorts and clinical characteristics.

---

Clinical Recommendations

- Strengthen medication reconciliation workflows.
- Improve discharge planning processes.
- Introduce early post-discharge follow-up programs.
- Prioritize monitoring for higher-risk patient groups.
- Utilize risk stratification models to support targeted interventions.

---

Core Features

Risk Stratification

- Patient grouping into Low, Medium, and High-Risk categories.
- Identification of vulnerable patient populations.

Operational Analytics

- Length of stay analysis.
- Readmission trend monitoring.
- Financial exposure tracking.
- Discharge pathway assessment.

Interactive Dashboards

Dynamic filtering by:

- Age group
- Risk category
- Discharge destination
- Clinical characteristics

Predictive Modeling

- Logistic Regression model for readmission risk estimation.
- Feature-based risk prediction framework.

---

Tools & Technologies

Tool| Purpose
SQL| Data cleaning, transformation, and analytics
Python (Pandas)| Data preparation and analysis
Power BI| Dashboard development and visualization
scikit-learn| Logistic Regression modeling

---

Business Value

This project demonstrates how healthcare organizations can leverage analytics to:

- Identify patients at elevated risk of readmission.
- Improve discharge planning workflows.
- Monitor operational performance indicators.
- Support data-driven resource allocation.
- Reduce avoidable readmission costs.
- Strengthen quality improvement initiatives.
- Enhance patient outcome monitoring.

---

Project Status

- ✅ Executive Readmission Overview
- ✅ Clinical Performance Analysis
- ✅ Care Pathway Optimization
- 🚧 Predictive Risk Stratification Enhancement

---

Portfolio & Professional Links

For additional healthcare analytics projects and professional updates:

GitHub Portfolio:
https://github.com/brianmtepe

The repository forms part of a broader healthcare analytics portfolio focused on:

- Clinical Operations Analytics
- Public Health Reporting
- Healthcare Data Visualization
- Monitoring & Evaluation (M&E)
- Healthcare Decision Support Systems

---

Author

Brian Mtepe, KRCHN

Healthcare Data Analyst

Skills

- Healthcare Analytics
- SQL
- Python
- Power BI
- Data Visualization
- Clinical Informatics
- Monitoring & Evaluation (M&E)

---

Transforming healthcare data into actionable clinical and operational insights.
