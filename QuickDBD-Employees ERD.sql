-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/lIbUpz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Employees] (
    [emp_no] INT  NOT NULL ,
    [birth_date] VARCHAR  NOT NULL ,
    [first_name] VARCHAR  NOT NULL ,
    [last_name] VARCHAR  NOT NULL ,
    [gender] VARCHAR  NOT NULL ,
    [hire_date] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [Departments] (
    [dept_no] VARCHAR  NOT NULL ,
    [dept_name] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [Dept_emp] (
    [emp_no] INTERGER  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL ,
    [from_date] VARCHAR  NOT NULL ,
    [to_date] VARCHAR  NOT NULL 
)

CREATE TABLE [Dept_manager] (
    [dept_no] VARCHAR  NOT NULL ,
    [emp_no] INTERGER  NOT NULL ,
    [from_date] VARCHAR  NOT NULL ,
    [to_date] VARCHAR  NOT NULL 
)

CREATE TABLE [Salaries] (
    [emp_no] INT  NOT NULL ,
    [salary] INT  NOT NULL ,
    [from_date] VARCHAR  NOT NULL ,
    [to_date] VARCHAR  NOT NULL 
)

CREATE TABLE [Titles] (
    [emp_no] INT  NOT NULL ,
    [title] VARCHAR  NOT NULL ,
    [from_date] VARCHAR  NOT NULL ,
    [to_date] VARCHAR  NOT NULL 
)

ALTER TABLE [Dept_emp] WITH CHECK ADD CONSTRAINT [FK_Dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_emp] CHECK CONSTRAINT [FK_Dept_emp_dept_no]

ALTER TABLE [Dept_manager] WITH CHECK ADD CONSTRAINT [FK_Dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Dept_emp] ([dept_no])

ALTER TABLE [Dept_manager] CHECK CONSTRAINT [FK_Dept_manager_dept_no]

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_emp_no]

ALTER TABLE [Titles] WITH CHECK ADD CONSTRAINT [FK_Titles_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Titles] CHECK CONSTRAINT [FK_Titles_emp_no]

COMMIT TRANSACTION QUICKDBD