SELECT e.emp_no, e.first_name, e.last_name, 
t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_titles LIMIT 100

-- remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles LIMIT 100

SELECT title, COUNT(title)
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC

SELECT * FROM retiring_titles

SELECT DISTINCT ON (emp_no) 
e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de ON (e.emp_no = de.emp_no)
INNER JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE 1=1
AND de.to_date = '1/1/9999' 
AND e.birth_date BETWEEN '1/1/1965' AND '12/31/1965'
ORDER BY emp_no

