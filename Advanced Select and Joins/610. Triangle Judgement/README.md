# Triangle SQL Query

This query determines whether the given line segments can form a triangle based on the triangle inequality theorem. The result table includes a column `triangle` with values "Yes" or "No" for each set of line segments.

## Table Schema

**Table Name**: `Triangle`

| Column Name | Type | Description                  |
|-------------|------|------------------------------|
| `x`         | int  | Length of the first segment  |
| `y`         | int  | Length of the second segment |
| `z`         | int  | Length of the third segment  |

- `(x, y, z)` is the primary key.

## Example Input

**Triangle Table**:
