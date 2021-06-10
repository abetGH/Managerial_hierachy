-- Example case create statement:
CREATE TABLE employees (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  managerId INTEGER,
  FOREIGN KEY (managerId) REFERENCES employees(id)
);

INSERT INTO employees(id, name, managerId) VALUES(1, 'Rob', null);
INSERT INTO employees(id, name, managerId) VALUES(2, 'Tom', null);
INSERT INTO employees(id, name, managerId) VALUES(3, 'Roger', 1);
INSERT INTO employees(id, name, managerId) VALUES(4, 'Victor', 3);
INSERT INTO employees(id, name, managerId) VALUES(5, 'John', 4);
INSERT INTO employees(id, name, managerId) VALUES(6, 'Shawn', 2);
Go
/***
#Q6
> Each employee has either one manager or none.
Managers can also have managers and the hierachy can extend multiple levels.
Top-level managers have no managers above them(mangerid is null).
All employees whose managerid is null are top-level managers regardless of whether they have employees under them or not.
> Write a query that returns:
1. The top-level managers' id.
2. Total number of employees under them.
> Any top-level managers who have no employees under them should not be returned.

-- Expected output (rows in any order):
-- Id    EmployeeCount
-- --------------------
-- 1          3
-- 2          1

***/