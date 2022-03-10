const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});




const queryString = `
SELECT cohorts.name as cohort, teachers.name as teacher 
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1
`;

const cohortName = process.argv[2];
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`];

pool.query(queryString, values)
.then(res => {
  console.log("res.rows", res.rows);
}).catch(err => console.error('query error', err.stack));

// CREATE TABLE students (
//   id SERIAL PRIMARY KEY NOT NULL,
//   name VARCHAR(255) NOT NULL,
//   email VARCHAR(255),
//   phone VARCHAR(32),
//   github VARCHAR(255),
//   start_date DATE,
//   end_date DATE,
//   cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
// );

// $ node teachers.js JUL02
// connected
// JUL02: Cheyanne Powlowski
// JUL02: Georgiana Fahey
// JUL02: Helmer Rodriguez
// JUL02: Jadyn Bosco
// JUL02: Roberto Towne
// JUL02: Rosalyn Raynor
// JUL02: Talon Gottlieb
// JUL02: Waylon Boehm

// Create a new file named teachers.js.
// Copy the database connection code from students.js.
// Use the query from "BootcampX Queries 4" to get all teachers that made an assistance request during a cohort.
// Accept the cohort name as input from the user.
