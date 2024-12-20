# Patient Type I Diabetes Finder

## Problem Overview

This project contains a solution to identify patients diagnosed with Type I Diabetes based on their medical conditions recorded in the `Patients` table. Specifically, it retrieves patients whose `conditions` column contains codes starting with the prefix "DIAB1", which indicates Type I Diabetes.

## Table Structure

The `Patients` table contains the following columns:

| Column Name   | Type     | Description                                                     |
|----------------|----------|-----------------------------------------------------------------|
| `patient_id`   | int      | A unique identifier for each patient (Primary Key).             |
| `patient_name` | varchar  | The name of the patient.                                        |
| `conditions`   | varchar  | A string containing medical codes related to the patient's conditions. Codes are space-separated. |

**Note:** The `conditions` column may contain multiple medical codes, and `Type I Diabetes` always starts with the prefix "DIAB1".

### Example Data:

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

## Objective

We need to identify patients who have at least one condition that starts with the code "DIAB1", which corresponds to Type I Diabetes.


