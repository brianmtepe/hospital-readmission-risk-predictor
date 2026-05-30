
/*
PROJECT: Hospital Readmission Risk Analytics
FILE: 01_database_setup.sql
OBJECTIVE:
Create foundational healthcare analytics database schema.
SKILLS:
- Database Design
- Schema Engineering
- Table Creation
*/
USE hospital_readmission_db;
CREATE TABLE hospital_encounters (
    encounter_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    age INT,
    gender VARCHAR(20),
    blood_pressure VARCHAR(20),
    cholesterol INT,
    bmi DECIMAL(5,2),
    diabetes VARCHAR(10),
    hypertension VARCHAR(10),
    medication_count INT,
    length_of_stay INT,
    discharge_destination VARCHAR(50),
    readmitted_30_days VARCHAR(10),
    total_cost DECIMAL(12,2),
    primary_diagnosis VARCHAR(100),
    risk_category VARCHAR(20),
    discharge_status VARCHAR(50)
);


