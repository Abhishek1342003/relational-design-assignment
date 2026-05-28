# Normalization Notes

# Repeated Data Examples

## Example 1
Student information repeated in submissions table.

Solution:
Store student data only in students table.

---

## Example 2
Contest names repeated in contest problems.

Solution:
Create separate contests table.

---

## Example 3
Problem information repeated in test cases.

Solution:
Store problem details separately.

---

# Functional Dependencies

## Example 1

student_id → student_name, email, phone

Meaning:
Student ID determines student details.

---

## Example 2

problem_id → problem_title, difficulty

Meaning:
Problem ID determines problem information.

---

# Partial Dependency

In contest_problem_mapping:

(contest_id, problem_id) → marks

Marks depend on both columns together.

---

# First Normal Form (1NF)

- Atomic values used
- No repeating groups

---

# Second Normal Form (2NF)

- No partial dependency
- Non-key columns fully dependent on primary key

---

# Third Normal Form (3NF)

- No transitive dependency
- Separate master tables created

---

# Trade-Offs

Advantages:
- Reduced redundancy
- Better consistency
- Easier updates

Disadvantages:
- More joins required
