# Schema Understanding

## Overview

The dataset represents a coding platform like CodeJudge where students solve coding problems, attend sessions, and participate in contests.

The raw CSV files contain information about:
- students
- batches
- courses
- coding problems
- submissions
- contests
- attendance
- test cases

---

# Main Tables

## Students Table

Purpose:
Stores student information.

Important Columns:
- student_id
- student_name
- email
- phone
- batch_id

Primary Identifier:
- student_id

Relationships:
- Connected with batches
- Connected with submissions
- Connected with attendance

---

## Batches Table

Purpose:
Stores batch details.

Important Columns:
- batch_id
- batch_name
- start_date

Primary Identifier:
- batch_id

---

## Courses Table

Purpose:
Stores available courses.

Important Columns:
- course_id
- course_name

Primary Identifier:
- course_id

---

## Enrollments Table

Purpose:
Connects students and courses.

Important Columns:
- enrollment_id
- student_id
- course_id

Relationships:
- student_id → students
- course_id → courses

---

## Problems Table

Purpose:
Stores coding problems.

Important Columns:
- problem_id
- problem_title
- difficulty

Relationships:
- Connected with submissions
- Connected with test_cases

---

## Test Cases Table

Purpose:
Stores problem test cases.

Important Columns:
- test_case_id
- problem_id
- expected_output

Relationships:
- problem_id → problems

---

## Contests Table

Purpose:
Stores contest information.

Important Columns:
- contest_id
- contest_name

---

## Contest Problem Mapping Table

Purpose:
Maps contests and problems.

Important Columns:
- contest_id
- problem_id

---

## Submissions Table

Purpose:
Stores code submissions.

Important Columns:
- submission_id
- student_id
- problem_id
- score
- status

Relationships:
- student_id → students
- problem_id → problems

---

# Repeated or Non-Normalized Data

Examples:
1. Student details repeated in submissions
2. Contest names repeated multiple times
3. Problem information repeated in test cases

Normalization removes this redundancy.
