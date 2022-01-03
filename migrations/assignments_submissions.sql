CREATE TABLE assignments(
  id SERIAL PRIMARY KEY NOT NULL,
  name varchar(255),
  content text,
  day DATE,
  chapter int,
  duration TIME
);

CREATE TABLE assignment_submission(
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration int,
  submission_date DATE
)