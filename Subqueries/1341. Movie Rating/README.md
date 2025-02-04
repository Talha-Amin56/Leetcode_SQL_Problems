# Movie Ratings Analysis

## Problem Statement

Given three tables:

### 1. Movies Table
| Column Name | Type    |
|-------------|---------|
| movie_id    | int     |
| title       | varchar |

- `movie_id` is the primary key.
- `title` contains the name of the movie.

### 2. Users Table
| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key.
- `name` contains unique values representing the users.

### 3. MovieRating Table
| Column Name | Type    |
|-------------|---------|
| movie_id    | int     |
| user_id     | int     |
| rating      | int     |
| created_at  | date    |

- (`movie_id`, `user_id`) forms a composite primary key.
- `rating` represents the user's review score.
- `created_at` is the date when the review was given.

## Task

Write an SQL query to:

1. Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
2. Find the movie title with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie title.

## Example

### **Input:**
#### Movies Table:
| movie_id | title    |
|----------|---------|
| 1        | Avengers |
| 2        | Frozen 2 |
| 3        | Joker    |

#### Users Table:
| user_id | name   |
|---------|--------|
| 1       | Daniel |
| 2       | Monica |
| 3       | Maria  |
| 4       | James  |

#### MovieRating Table:
| movie_id | user_id | rating | created_at  |
|----------|---------|--------|------------|
| 1        | 1       | 3      | 2020-01-12 |
| 1        | 2       | 4      | 2020-02-11 |
| 1        | 3       | 2      | 2020-02-12 |
| 1        | 4       | 1      | 2020-01-01 |
| 2        | 1       | 5      | 2020-02-17 |
| 2        | 2       | 2      | 2020-02-01 |
| 2        | 3       | 2      | 2020-03-01 |
| 3        | 1       | 3      | 2020-02-22 |
| 3        | 2       | 4      | 2020-02-25 |

### **Output:**
| results |
|---------|
| Daniel  |
| Frozen 2 |

### **Explanation:**
- Daniel and Monica both rated 3 movies, but "Daniel" is lexicographically smaller.
- "Frozen 2" and "Joker" both have an average rating of 3.5 in February 2020, but "Frozen 2" is lexicographically smaller.
