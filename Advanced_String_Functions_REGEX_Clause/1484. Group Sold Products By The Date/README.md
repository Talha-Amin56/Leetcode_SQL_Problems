# Activities Table - Product Sales Summary Task

This task requires finding for each date the number of different products sold and their names. The product names for each date should be sorted lexicographically and presented as a comma-separated list.

## Table Schema

**Activities Table**

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- The table does not have a primary key.
- Each row contains the product name and the date it was sold in the market.

## Task Requirements

For each date:
1. Calculate the number of different products sold.
2. Provide a comma-separated list of unique product names sorted lexicographically.

Return the result table ordered by `sell_date`.

## Example

### Input

**Activities Table**

| sell_date  | product     |
|------------|-------------|
| 2020-05-30 | Headphone   |
| 2020-06-01 | Pencil      |
| 2020-06-02 | Mask        |
| 2020-05-30 | Basketball  |
| 2020-06-01 | Bible       |
| 2020-06-02 | Mask        |
| 2020-05-30 | T-Shirt     |

### Output

**Result Table**

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

### Explanation

- On 2020-05-30, the products sold were `Headphone`, `Basketball`, and `T-Shirt`. After sorting lexicographically and counting, the result is: `3 products`, `Basketball,Headphone,T-shirt`.
- On 2020-06-01, the products sold were `Pencil` and `Bible`. The result is: `2 products`, `Bible,Pencil`.
- On 2020-06-02, only `Mask` was sold. The result is: `1 product`, `Mask`.

---

**Note**: The products for each date should be sorted in lexicographical order and separated by commas.
