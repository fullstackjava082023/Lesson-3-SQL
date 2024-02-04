Create a table called Students with columns for student_id, first_name, last_name, and email. Make student_id the primary key.
Create a table called Courses with columns for course_id and course_name. Make course_id the primary key.
Create a table called Enrollments with columns for enrollment_id, student_id, and course_id. Make enrollment_id the primary key and add foreign key constraints to reference the Students and Courses tables.
Create a table called Teachers with columns for teacher_id, first_name, and last_name. Make teacher_id the primary key.
Create a table called Assignments with columns for assignment_id, course_id, teacher_id, and assignment_name. Make assignment_id the primary key and add foreign key constraints to reference the Courses and Teachers tables.
Create a table called Grades with columns for grade_id, enrollment_id, assignment_id, and score. Make grade_id the primary key and add foreign key constraints to reference the Enrollments and Assignments tables.
Drop the Grades table.
Alter the Students table to add a column called date_of_birth.
Alter the Enrollments table to add a column called date_enrolled.
Drop the Enrollments table.
