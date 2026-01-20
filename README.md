# Hospital Readmission Risk Predictor (Nursing Data Analytics)

## Overview
This project applies nursing data analytics to predict 30-day hospital readmission risk using
patient admission and discharge data.
It demostrates how nurses can use data to support clinical decision-making, discharge planning,
and quality improvement initiatives.

## Nursing and Clinical Context
Hospital readmissions are often linked to:
-Inadequate discharge education
-Poor care transitions 
-Limited post discharge follow-up

Nurses play a central role in identifying at-risk patients and coordinating care.
This project uses data anlytics to support nursing-led interventions aimed at reducing preventable
readmissions.

## Objectives
-Analyze patient demographic and clinical data
-Identify key factors contributing to hospital readmission
-Provide interpretable insights for healthcare decision making
-Support nursing discharge planning and transitional care
-Demostrate applied nursing informatics and analytics skills

## Tools and technology
-Python (Pandas,Numpy,Scikit-learn)
-SQLite (SQL)
-Power BI
-VS code
-Git and Github

## Dataset Description
An anonymized hospital dataset containing:
-Patient age and gender
-Primary diagnosis
-Length of hospital stay
-Previous hospital admissions
-Discharge disposition
-30-day readmission outcome (target variable)

## Analytics Workflow
1.Load raw hospital data (CSV)
2.Clean and encode nursing-relevant variables
3.Store processed data in a relational SQLite database
4.Train a Logistic Regression model to estimate readmission risk
5.Visualize insights in Power BI for nursing and quality teams 

## Predictive Model
-Model:Logistic Regression
-Outcome: 30-day hospital readmission (Yes/No)
-Rationale:
 -Interpretable results for clinical teams 
 -Commonly used in healthcare risk stratification
 -Supports nursing discharge decision-making

## Key Nursing Insights
-Patients with multiple prior admissions have higher readmission risk
-Longer hospital stays are associated with increased readmission
-Older adults benefit from enhanced discharge planning 
-Discharge disposition influence readmission outcomes

## Ethical considerations 
 -Data is anonymized and used for educational purposes only 
 -Model outputs should support,not replace ,clinical judgment 
 -Bias and fairness considerations are acknowledged

## How to Run the Project
'''bash
pip install -r requirements.txt
cd scripts
python load_data.py
python clean_data.py
python store_to_db.py
python model.py

 
 


 


