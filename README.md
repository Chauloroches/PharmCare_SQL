# PharmCare SQL Project
## Project Overview
PharmCare SQL Project is designed to analyze pharmacy data like patient information, medication details, and prescription records. In this project we will be using SQL to perform data analysis, answer common business questions, generate insights into medication usage, patient demographics, and prescription costs.
## Data Sources
The project has 3 CSV files as sources:

#### Patients.csv:
            Contains information about patients.
##### Columns:
            Patient_ID, Name, Age, Gender, Contact_Number, Insurance_Status, Primary_Physician, Registration_Date

#### Prescriptions.csv:
            Contains records of prescriptions issued to patients.
##### Columns:
            Prescription_ID, Patient_ID, Medication_ID, Date_Issued, Quantity, Total_Price

#### Medications.csv:
            Contains details about medications.
##### Columns:
            Medication_ID, Medication_Name, Type, Dosage, Price_Per_Unit, Manufacturer
## Project Objectives
Objectives of this project are:

To practice SQL skills by answering real-world questions using relational data.

To generate insights about patient medication costs, common medications, and demographic distributions.

To create SQL queries that help analyze patterns in prescription data.
## Key SQL Queries
This are some of the Queries in this project:

Determine the average medication cost per patient

Query to calculate the average cost of medications prescribed to each patient.

Identify the highest cost medication.

Query to find the medication with the highest overall cost (price per unit multiplied by quantity issued).

Common medications by patient gender.

Query to identify the most commonly prescribed medications by gender
## How to run the Queries
#### Load the CSV Data:

Import the CSV files (Medications.csv, Patients.csv, Prescriptions.csv) into your SQL database. Ensure that each file is correctly mapped to its respective table (Medications, Patients, and Prescriptions).

#### Run Queries:

Open a SQL client or tool (like MySQL Workbench, phpMyAdmin, or your terminal) and connect to your database.

Use the SQL queries provided in the project files or the examples in this README to perform analyses on the data
## Requirements
#### SQL Database:
                MySQL or any SQL database that supports standard SQL syntax.

#### SQL Client:
                MySQL Workbench, phpMyAdmin, or another SQL client.

#### CSV Import:
                Basic knowledge of loading CSV files into a database (using LOAD DATA INFILE or a similar command).
## Project Structure
PharmCare_SQL_Project/

├── README.md

├── Medications.csv

├── Patients.csv

├── Prescriptions.csv

└── Queries.sql

## Future Improvements
Integrate more advanced analysis, such as joining with insurance or billing data.

Automate data loading and querying with Python or R for larger-scale analysis.

Use data visualization tools to create dashboards based on query results

