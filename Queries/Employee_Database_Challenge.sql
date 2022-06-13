-- CHALLENGE STARTS -- 

-- Retirement employee by titles:
SELECT  e.emp_no, e.first_name, e.last_name,
		tt.title, tt.from_date, tt.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS tt
		ON (e.emp_no = tt.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC, to_date DESC;

-- Retirement UNIQUE employees by titles:
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Retrieving the number of retirement for each title:
SELECT COUNT(title) title_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title_count DESC;

-- Mentorship Eligibility Program
-- finding emplooyess eligible to participate:

SELECT DISTINCT ON (emp_no) e.emp_no, 
		e.first_name, e.last_name, e.birth_date,
		de.from_date, de.to_date,
		tt.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles AS tt
		ON (e.emp_no = tt.emp_no)
WHERE (de.to_date = '9999-01-01') 
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC