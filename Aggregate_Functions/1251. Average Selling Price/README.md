# Average Selling Price Calculation

This solution calculates the average selling price for each product by considering the product's price during the period in which it was sold and the number of units sold during that period. The average selling price should be calculated as the total price of a product during its sale period divided by the total number of units sold. The result should be rounded to two decimal places, and if a product has not sold any units, its average selling price is assumed to be 0.

## Problem Description

### Tables

#### Prices
The `Prices` table stores the price of each product during a specific period.

| Column Name   | Type    |
|---------------|---------|
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |

- (product_id, start_date, end_date) is the primary key.
- Each row represents the price of a product during a specific period (`start_date` to `end_date`).
- The product price remains constant during each period.

#### UnitsSold
The `UnitsSold` table stores information about the units of products sold on specific dates.

| Column Name   | Type    |
|---------------|---------|
| product_id    | int     |
| purchase_date | date    |
| units         | int     |

- Each row represents the units of a product sold on a specific date.
- Duplicate rows may exist for the same product.

### Input Example

#### Prices table:

| product_id | start_date | end_date   | price  |
|------------|------------|------------|--------|
| 1          | 2019-02-17 | 2019-02-28 | 5      |
| 1          | 2019-03-01 | 2019-03-22 | 20     |
| 2          | 2019-02-01 | 2019-02-20 | 15     |
| 2          | 2019-02-21 | 2019-03-31 | 30     |

#### UnitsSold table:

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

### Output Example

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

### Explanation

#### Product 1:
- Price during 2019-02-17 to 2019-02-28: 5
- Price during 2019-03-01 to 2019-03-22: 20
- Units sold:
  - 100 units sold at price 5
  - 15 units sold at price 20

Total price: (100 * 5) + (15 * 20) = 500 + 300 = 800  
Total units sold: 100 + 15 = 115  
Average selling price = 800 / 115 = 6.96

#### Product 2:
- Price during 2019-02-01 to 2019-02-20: 15
- Price during 2019-02-21 to 2019-03-31: 30
- Units sold:
  - 200 units sold at price 15
  - 30 units sold at price 30

Total price: (200 * 15) + (30 * 30) = 3000 + 900 = 3900  
Total units sold: 200 + 30 = 230  
Average selling price = 3900 / 230 = 16.96

### Assumptions

- If no units have been sold for a product, its average selling price is 0.
- The solution should handle situations where there are no sales for a product or periods without sales.
- The average selling price must be rounded to two decimal places.

## Solution Strategy

1. **Join Tables**: Join the `Prices` and `UnitsSold` tables on `product_id` and ensure that the `purchase_date` from `UnitsSold` falls between `start_date` and `end_date` from `Prices`.
2. **Calculate Total Price and Units Sold**: For each product, compute the total price by multiplying units sold by the price for that period, and sum up the units sold.
3. **Calculate Average**: Divide the total price by the total units sold for each product to calculate the average selling price. Round to two decimal places.
4. **Handle Products with No Sales**: For products with no sales, assume the average price is 0.

## Running Instructions

1. Set up the database and import the `Prices` and `UnitsSold` tables with relevant data.
2. Execute the solution to get the average selling price for each product.

## Constraints

- The tables may contain multiple rows for each product with different periods and sales.
- Duplicate rows in the `UnitsSold` table should be handled correctly, ensuring accurate calculations of total units sold.

## Output

The result will display the `product_id` and the corresponding `average_price` for each product, with the price rounded to two decimal places.

---

### Notes

- Ensure that the solution handles rounding correctly, as rounding errors may arise.
- Pay attention to the correct date ranges for price periods and sales.
