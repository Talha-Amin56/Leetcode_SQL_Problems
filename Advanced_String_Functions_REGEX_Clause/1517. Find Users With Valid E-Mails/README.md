# Users Table - Valid Email Filtering Task

This task involves identifying users with valid email addresses from the `Users` table. The objective is to filter out invalid emails based on specific rules for a valid email format.

## Table Schema

**Users Table**

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |
| mail        | varchar |

- `user_id` is the primary key.
- The `mail` column contains email addresses provided by the users.

## Email Validation Rules

A valid email must:
1. Have a prefix name that:
   - Starts with a letter (uppercase or lowercase).
   - May contain letters, digits, underscores `_`, periods `.`, or dashes `-`.
2. Have the domain `@leetcode.com`.

## Example

### Input

**Users Table**

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

### Output

**Result Table**

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

### Explanation

- The email of user 2 does not include a domain.
- The email of user 5 contains the `#` character, which is not allowed.
- The email of user 6 has a domain other than `@leetcode.com`.
- The email of user 7 starts with a period, which is invalid.

---

**Note**: The result table can be returned in any order.
