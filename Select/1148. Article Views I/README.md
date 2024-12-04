# SQL Query Challenge: Authors Viewing Their Own Articles

## Problem Description

You are given a table named `Views` with the following columns:

- `article_id` (int): The ID of the article that was viewed.
- `author_id` (int): The ID of the author who wrote the article.
- `viewer_id` (int): The ID of the viewer who viewed the article.
- `view_date` (date): The date the article was viewed.

### Key Points

- There is **no primary key** for this table, and it may contain duplicate rows.
- If `author_id` is equal to `viewer_id`, it means the author viewed their own article.

### Objective

Write a query to find all authors (`author_id`) who viewed at least one of their own articles. 

- Return the result as a single column named `id`, containing the unique IDs of such authors.
- Sort the result by `id` in ascending order.

---

## Example

### Input

The `Views` table:

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

### Output

The result table:

| id   |
|------|
| 4    |
| 7    |

### Explanation

- Author `7` viewed their own article (`viewer_id = 7` and `author_id = 7` for `article_id = 2`).
- Author `4` viewed their own article (`viewer_id = 4` and `author_id = 4` for `article_id = 3`).
- Author `3` did not view their own articles.

---

## Notes

- The result should contain only unique `author_id` values.
- Sort the output by `id` in ascending order.
- Ensure the query handles duplicate rows properly.

---

Happy querying!
