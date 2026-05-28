CREATE TABLE batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(100) UNIQUE NOT NULL,
    start_date DATE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE,
    batch_id INT,
    FOREIGN KEY (batch_id) REFERENCES batches(batch_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    UNIQUE(student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE problems (
    problem_id INT PRIMARY KEY,
    problem_title VARCHAR(200) NOT NULL,
    difficulty VARCHAR(20)
);

CREATE TABLE test_cases (
    test_case_id INT PRIMARY KEY,
    problem_id INT,
    input_data TEXT,
    expected_output TEXT,
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);

CREATE TABLE contests (
    contest_id INT PRIMARY KEY,
    contest_name VARCHAR(100)
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY,
    student_id INT,
    problem_id INT,
    score INT CHECK(score >= 0),
    status VARCHAR(30),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (problem_id) REFERENCES problems(problem_id)
);
