# Person Table - Duplicate Email Deletion Task

This task focuses on managing duplicate data in the `Person` table. The goal is to delete duplicate emails while keeping only one entry with the smallest `id` for each email.

## Table Schema

**Person Table**

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key.
- The `email` column contains email addresses, which are guaranteed to be in lowercase.

## Example

### Input

**Person Table**

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

### Output

**Person Table**

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

### Explanation

In the example above:
- The email `john@example.com` appears twice. The row with the smallest `id` (1) is kept, and the other is deleted.
- The email `bob@example.com` appears only once and remains unchanged.

---

**Note**: The final output order of the `Person` table does not matter.
