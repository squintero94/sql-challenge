DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Department_Employees;

CREATE TABLE Departments (
    dept_no VARCHAR(5)   NOT NULL,
    dept_name VARCHAR(40)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(25)   NOT NULL,
    last_name VARCHAR(25)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Department_Employees (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(5)   NOT NULL,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        emp_no,dept_no
     )
);

CREATE TABLE Department_Managers (
    dept_no VARCHAR(5)   NOT NULL,
    emp_no INT   NOT NULL,
    CONSTRAINT pk_Department_Managers PRIMARY KEY (
        dept_no,emp_no
     )
);

CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees__dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

SELECT * FROM Employees;
SELECT * FROM Department_Employees;


