# SQL Query Challenge: Invalid Tweets

## Problem Description

You are given a table named `Tweets` with the following columns:

- `tweet_id` (int): The primary key for the table, uniquely identifying each tweet.
- `content` (varchar): The content of the tweet, consisting of characters on an American Keyboard, and no other special characters.

### Objective

Write a query to find the `tweet_id` of all **invalid** tweets. A tweet is considered invalid if the number of characters in the content is **strictly greater than 15**.

Return the result table in any order.

---

## Example

### Input

The `Tweets` table:

| tweet_id | content                           |
|----------|-----------------------------------|
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

### Output

The result table:

| tweet_id |
|----------|
| 2        |

### Explanation

- Tweet 1 has a length of 11, which is valid.
- Tweet 2 has a length of 33, which is invalid because it exceeds 15 characters.

---

## Notes

- The result can be returned in any order.
- Ensure that the query handles tweets with exactly 15 characters correctly (i.e., they should not be considered invalid).
- The `content` field does not contain any special characters outside of an American Keyboard.

---

Happy querying!
