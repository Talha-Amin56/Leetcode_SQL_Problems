# SQL Joins: Basic and Advanced

## Overview

SQL Joins are used to combine records from two or more tables based on a related column between them. Understanding joins is crucial for writing efficient queries, especially when working with multiple tables that have relationships.

This repository provides examples and explanations for both **basic** and **advanced** SQL joins, illustrating their usage and key differences.

## Types of SQL Joins

### 1. **Basic Joins**

#### a. **INNER JOIN**
The `INNER JOIN` returns only the rows that have matching values in both tables. It is the most common type of join.

**Syntax:**
```sql
SELECT column1, column2, ...
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;

