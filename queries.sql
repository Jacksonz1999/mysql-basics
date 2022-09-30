use employees;

-- INSERT 15 RANDOM EMPLOYEES
INSERT INTO
    `employees` (
        `emp_no`,
        `birth_date`,
        `first_name`,
        `last_name`,
        `gender`,
        `hire_date`
    )
VALUES
    (
        '0',
        '1988-07-14',
        'SMITH',
        'Fred',
        'M',
        '2020-09-12'
    ),
    (
        '1',
        '1986-07-31',
        'Leo',
        'Ralph',
        'M',
        '2018-07-23'
    ),
    (
        '2',
        '1988-07-13',
        'Frances',
        'MDeer',
        'M',
        '2017-01-20'
    ),
    (
        '3',
        '2000-01-11',
        'Neena',
        'Kochhar',
        'F',
        '2020-04-19'
    ),
    (
        '4',
        '1978-03-01',
        'William ',
        'Gietz',
        'M',
        '2021-01-16'
    ),
    (
        '5',
        '1998-02-23',
        'Jason',
        'Malin',
        'M',
        '2016-03-16'
    ),
    (
        '6',
        '1996-06-21',
        'Julia',
        'Nayer',
        'F',
        '2020-02-16'
    ),
    (
        '7',
        '2002-07-23',
        'Laura',
        'Bissot',
        'F',
        '2021-11-16'
    ),
    (
        '8',
        '2000-09-04',
        'Michael',
        'Rogers',
        'M',
        '2022-07-29'
    ),
    (
        '9',
        '1995-11-30',
        'Stephen',
        'Stiles',
        'M',
        '2018-05-01'
    ),
    (
        '10',
        '1997-12-12',
        'Adam',
        'Fripp',
        'M',
        '2017-08-16'
    ),
    (
        '11',
        '1998-05-04',
        'Shanta',
        'Vollman ',
        'F',
        '2015-12-07'
    ),
    (
        '12',
        '1980-04-02',
        'Peter',
        'Hall',
        'M',
        '2021-03-28'
    ),
    (
        '13',
        '1989-03-12',
        'Oliver',
        'Tuvault',
        'M',
        '2022-04-12'
    ),
    (
        '14',
        '1987-01-01',
        'Jennifer',
        'Whalen',
        'F',
        '2016-09-22'
    ),
    (
        '15',
        '1991-09-08',
        'NANCY',
        'Greenberg',
        'F',
        '2017-11-19'
    );

-- UPDATE 3 EMPLOYEES TO CHANGE THE SAME NAME
UPDATE
    employees
SET
    first_name = 'Leo'
WHERE
    emp_no = 2
    AND first_name = "Frances"
    AND last_name = 'MDeer'
    AND birth_date = "1988-07-13";

UPDATE
    employees
SET
    first_name = 'Leo'
WHERE
    emp_no = 4
    AND first_name = "William"
    AND last_name = 'Gietz'
    AND birth_date = "1978-03-01";

SELECT
    *
FROM
    employees.employees;

--mysql salaries
INSERT INTO
    `salaries` (`emp_no`, `salary`, `from_date`, `to_date`)
VALUES
    (0, 5000, '2018-01-01', now()),
    (1, 10000, '2018-01-01', now()),
    (2, 15000, '2018-01-01', now()),
    (3, 18000, '2018-01-01', now()),
    (4, 15000, '2018-01-01', now()),
    (5, 16590, '2018-01-01', now()),
    (6, 20000, '2018-01-01', now()),
    (7, 9860, '2018-01-01', '2022-01-01'),
    (7, 41000, '2022-01-01', now()),
    (8, 10000, '2018-01-01', '2022-01-01'),
    (8, 39800, '2018-01-01', now()),
    (9, 10000, '2018-01-01', '2022-01-01'),
    (9, 35000, '2018-01-01', now()),
    (10, 10000, '2018-01-01', '2022-01-01'),
    (10, 45000, '2018-01-01', now()),
    (11, 10000, '2018-01-01', '2022-01-01'),
    (11, 49000, '2018-01-01', now()),
    (12, 30000, '2018-01-01', now()),
    (13, 50000, '2018-01-01', now()),
    (14, 13500, '2018-01-01', now()),
    (15, 17900, '2018-01-01', now());

SELECT
    *
FROM
    employees.salaries;

--departments
INSERT INTO
    `departments` (`dept_no`, `dept_name`)
VALUES
    ('1', 'Information_Technology'),
    ('2', 'Marketing'),
    ('3', 'General_Management'),
    ('4', 'Human_Resources'),
    ('5', 'Business_Development');

SELECT
    *
FROM
    employees.departments;

-- UPDATE all departments 
set
    SQL_SAFE_UPDATE = 0;

UPDATE
    departments
SET
    dept_name = 'IT'
WHERE
    dept_no = 1
    AND dept_name = "Information_Technology";

UPDATE
    departments
SET
    dept_name = 'MKT'
WHERE
    dept_no = 2
    AND dept_name = "Marketing";

UPDATE
    departments
SET
    dept_name = 'GM'
WHERE
    dept_no = 3
    AND dept_name = "General_Management";

UPDATE
    departments
SET
    dept_name = 'HR'
WHERE
    dept_no = 4
    AND dept_name = "Human_Resources";

UPDATE
    departments
SET
    dept_name = 'BD'
WHERE
    dept_no = 5
    AND dept_name = "Business_Development";

SET
    SQL_SAFE_UPDATES = 1;

-- Dept_emp
INSERT INTO
    `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`)
VALUES
    ('0', '1', '2018-01-01', '2022-01-01'),
    ('0', '3', '2019-01-01', '2022-01-01'),
    ('1', '3', '2020-01-01', '2022-01-01'),
    ('1', '2', '2018-01-01', '2022-01-01'),
    ('2', '4', '2018-01-01', '2022-01-01'),
    ('2', '1', '2019-01-01', '2022-01-01'),
    ('3', '5', '2018-01-01', '2022-01-01'),
    ('3', '2', '2019-01-01', '2022-01-01'),
    ('4', '2', '2018-01-01', '2022-01-01'),
    ('4', '1', '2021-01-01', '2022-01-01'),
    ('5', '3', '2018-01-01', '2022-01-01'),
    ('5', '5', '2019-01-01', '2022-01-01'),
    ('6', '1', '2018-01-01', '2022-01-01'),
    ('12', '1', '2018-01-01', '2022-01-01'),
    ('12', '3', '2019-01-01', '2022-01-01'),
    ('13', '4', '2018-01-01', '2022-01-01'),
    ('13', '1', '2019-01-01', '2022-01-01'),
    ('14', '3', '2018-01-01', '2022-01-01'),
    ('14', '1', '2019-01-01', '2022-01-01'),
    ('15', '2', '2018-01-01', '2022-01-01');

SELECT
    *
FROM
    employees.dept_emp;

--Dept_manager 
INSERT INTO
    `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`)
VALUES
    ('7', '1', '2018-01-01', '2022-01-01'),
    ('8', '1', '2018-01-01', '2022-01-01'),
    ('9', '1', '2018-01-01', '2022-01-01'),
    ('10', '2', '2018-01-01', '2022-01-01'),
    ('11', '2', '2018-01-01', '2022-01-01');

SELECT
    *
FROM
    employees.dept_manager;

--titles
INSERT INTO
    `titles` (`emp_no`, `title`, `from_date`, `to_date`)
VALUES
    ('0', 'degree1', '2020-06-23', '2022-06-23'),
    ('1', 'degree1', '2020-06-23', '2022-06-23'),
    ('2', 'degree1', '2020-06-23', '2022-06-23'),
    ('4', 'degree1', '2020-06-23', '2022-06-23'),
    ('5', 'degree1', '2020-06-23', '2022-06-23'),
    ('6', 'degree2', '2018-06-23', '2020-06-23'),
    ('7', 'degree3', '2017-06-23', '2019-06-23'),
    ('8', 'degree5', '2017-06-23', '2019-06-23'),
    ('9', 'degree2', '2016-06-23', '2018-06-23'),
    ('10', 'degree4', '2015-06-23', '2017-06-23'),
    ('11', 'degree3', '2020-06-23', '2022-06-23'),
    ('12', 'degree4', '2019-06-23', '2021-06-23'),
    ('13', 'degree7', '2017-06-23', '2019-06-23'),
    ('14', 'degree6', '2018-06-23', '2020-06-23'),
    ('15', 'degree5', '2019-06-23', '2021-06-23');

('15', '1', '2018-01-01', '2022-01-01');

SELECT
    *
FROM
    employees.titles;

--get data
SELECT
    *
FROM
    salaries
WHERE
    salary >= 20000;

SELECT
    *
FROM
    salaries
WHERE
    salary <= 10000;

SELECT
    *
FROM
    salaries
WHERE
    salary between 14000
    AND 50000;

SELECT
    max(emp_no)
from
    salaries;

--error
--TOTAL NUMBER WHO HAVE WORKED IN MORE THAN ONE DEPARMENT
SELECT
    COUNT(*)
FROM
    (
        SELECT
            emp_no,
            COUNT(*) AS NUM
        FROM
            dept_emp
        GROUP BY
            emp_no
    ) AS NUM2
WHERE
    NUM > 1
SELECT
    *
FROM
    titles
WHERE
    YEAR(from_date) >= 2020;

SELECT
    *
FROM
    employees
where
    first_name = BINARY UPPER(first_name);

-- Select the name, surname and name of the current department of each employee
select
    *
from
    employees;

select
    *
from
    dept_emp;

select
    *
from
    departments;

select
    e.first_name,
    e.last_name,
    dt.dept_name
from
    employees e
    left join dept_emp d on e.emp_no = d.emp_no
    left join departments dt on dt.dept_no = d.dept_no;

--Select the name, surname and number of times the employee has worked as a manager
SELECT
    emp.first_name,
    emp.last_name,
    manager.times_manager
FROM
    employees emp
    LEFT JOIN (
        SELECT
            emp_no,
            COUNT(*) AS times_manager
        FROM
            dept_manager
        GROUP BY
            emp_no
    ) manager ON emp.emp_no = manager.emp_no;

--Delete all employees with a salary greater than 20,000
DELETE FROM
    salaries
WHERE
    emp_no <> 0
    AND salary > 20000;

DELETE FROM
    departments
WHERE
    departments.dept_no = (
        SELECT
            dept_no
        FROM
            dept_emp
        GROUP BY
            dept_no
        order by
            count(dept_no) DESC
        LIMIT
            1
    );