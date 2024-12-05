# Student Exam Attendance Report

## Problem Statement

You are given three tables: **Students**, **Subjects**, and **Examinations**.

### Table: Students

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| student_name  | varchar |

- **student_id**: Unique identifier for each student.
- **student_name**: Name of the student.

---

### Table: Subjects

| Column Name  | Type    |
|--------------|---------|
| subject_name | varchar |

- **subject_name**: Unique identifier for each subject.

---

### Table: Examinations

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| subject_name | varchar |

- **student_id**: ID of the student who attended the exam.
- **subject_name**: Name of the subject the student attended an exam for.
- There is no primary key, and duplicate rows may exist.

---

### Objective

Write a solution to find the number of times each student attended each exam, even if they did not attend any exam for a particular subject. Ensure that the result includes all students and all subjects.

- The result should include:
  - **student_id**
  - **student_name**
  - **subject_name**
  - **attended_exams** (number of times the student attended the exam for the subject)
- The result should be ordered by **student_id** and **subject_name**.

---

## Input Example

### Students Table:

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

### Subjects Table:

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

### Examinations Table:

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

---

## Output Example

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## Explanation

1. **Alice (student_id = 1)**:
   - Math: Attended 3 times.
   - Physics: Attended 2 times.
   - Programming: Attended 1 time.

2. **Bob (student_id = 2)**:
   - Math: Attended 1 time.
   - Physics: Did not attend (0 times).
   - Programming: Attended 1 time.

3. **Alex (student_id = 6)**:
   - Did not attend any exams (0 times for all subjects).

4. **John (student_id = 13)**:
   - Math: Attended 1 time.
   - Physics: Attended 1 time.
   - Programming: Attended 1 time.

The result table includes all students and subjects, with the count of attended exams for each combination.
