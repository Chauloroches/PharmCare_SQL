CREATE DATABASE PharmCare;
USE PharmCare;

CREATE TABLE Medications(
	Medication_ID VARCHAR(20),
    Medication_Name VARCHAR(20),
    Type VARCHAR(50),
    Dosage INT,
    Price_Per_Unit FLOAT,
    Manufacturer VARCHAR(50)
);
ALTER TABLE Medications
RENAME COLUMN Type   TO _Type;
SELECT * FROM Medications;

CREATE TABLE Patients(
	Patient_ID VARCHAR(50),
    patient_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(20),
    Contact_Number INT,
    Insurance_Status VARCHAR(50),
    Primary_Physician VARCHAR(10),
    Registration_Date DATE
);
ALTER TABLE Patients
MODIFY COLUMN contact_Number VARCHAR(20);
SELECT * FROM Patients;

CREATE TABLE Prescriptions(
	Prescription_ID VARCHAR(10),
    Patient_ID VARCHAR(50),
    Medication_ID VARCHAR(20),
    Date_Issued DATE,
    Quantity INT,
    Total_Price FLOAT
);
SELECT * FROM prescriptions;

-- 1.Count the total number of patients - "How many unique patients are registered in the system?"
SELECT COUNT(DISTINCT Patient_ID) `Number of Patients`
FROM Patients;

-- 2.Calculate the average age of patients - "What is the average age of the patients?"
SELECT ROUND(AVG(Age),0) `Average Age of Patients`
FROM Patients;

-- 3.Identify common medication types - "Which medication type appears most frequently in prescriptions?"
SELECT _Type, COUNT(*) `Common Medication`
FROM Medications
GROUP BY _Type
ORDER BY `Common Medication` DESC;

-- 4.Calculate total revenue from prescriptions - "What is the total revenue generated from all prescriptions?
SELECT ROUND(SUM(Total_Price),2) `Total Revenue`
FROM Prescriptions;
-- 5.Determine patient medication costs - "What is the average cost of medication per patient?"
SELECT P.Patient_ID,Patient_Name,ROUND(AVG(Total_Price),2) `Average_Medication_Cost_Per_Patient`
FROM patients p
JOIN prescriptions pr
ON p.Patient_ID = pr.Patient_ID
GROUP BY 1,2
ORDER BY 3 DESC;

-- 6.Total Spending per Patient
SELECT P.Patient_ID,Patient_Name,ROUND(sum(Total_Price),2) `Spending per Patient`
FROM patients p
JOIN prescriptions pr
ON p.Patient_ID = pr.Patient_ID
GROUP BY 1,2
ORDER BY 3 DESC;

-- 7.Identify Top 5 high-cost medications - "Which medications have generated the highest revenue based on prescription data?"
SELECT m.Manufacturer, m.Medication_Name, m.Price_Per_Unit, ROUND(MAX(m.Price_Per_Unit * pr.Quantity),2) `Highest Cost Medication`
FROM medications m
JOIN prescriptions pr
ON m.Medication_ID = pr.Medication_ID
GROUP BY 1, 2, 3
ORDER BY 4 DESC
LIMIT 5;

-- 8.Identify common medication types by Gender - "Which medication type appears most frequently in prescriptions including Gender"
SELECT _Type,p.Gender,COUNT(*) `Common Medication`
FROM Medications M
JOIN Prescriptions pr
ON m.Medication_ID = pr.Medication_ID
JOIN patients p 
ON pr.Patient_ID = p.Patient_ID
GROUP BY 1,2
ORDER BY 3 DESC

