# Keys and Relationships

# Students Table

## Primary Key
- student_id

## Candidate Keys
- email
- phone

## Foreign Keys
- batch_id references batches(batch_id)

## Constraints
- email UNIQUE
- student_name NOT NULL

---

# Batches Table

## Primary Key
- batch_id

## Unique Columns
- batch_name

---

# Courses Table

## Primary Key
- course_id

---

# Enrollments Table

Purpose:
Connects students and courses.

## Primary Key
- enrollment_id

## Foreign Keys
- student_id references students(student_id)
- course_id references courses(course_id)

## Composite Unique Key
- (student_id, course_id)

---

# Problems Table

## Primary Key
- problem_id

## Alternate Key
- problem_slug

---

# Test Cases Table

## Primary Key
- test_case_id

## Foreign Key
- problem_id references problems(problem_id)

---

# Contest Problem Mapping

## Composite Primary Key
- contest_id
- problem_id

## Foreign Keys
- contest_id references contests(contest_id)
- problem_id references problems(problem_id)

---

# Attendance Table

## Primary Key
- attendance_id

## Composite Unique Key
- (student_id, session_id)

---

# Constraints

## NOT NULL Constraints
- student_name
- email
- course_name
- problem_title

## UNIQUE Constraints
- email
- phone
- batch_name

## CHECK Constraints

- score >= 0
- attendance_status IN ('Present', 'Absent')
