-- Online DB (MySQL 5.6): http://sqlfiddle.com/#!9/8d8a51/1

-- Create a teble called Project
-- and choose PID and Step as primary key
CREATE TABLE Project(PID CHAR(5) NOT NULL, Step INTEGER NOT NULL, P_status CHAR(1) NOT NULL, PRIMARY KEY(PID, Step));
-- insert values to the table
INSERT INTO Project VALUES('P100', 0, 'C');
INSERT INTO Project VALUES('P100', 1, 'W');
INSERT INTO Project VALUES('P100', 2, 'W');
INSERT INTO Project VALUES('P201', 0, 'C');
INSERT INTO Project VALUES('P201', 1, 'C');
INSERT INTO Project VALUES('P333', 0, 'W');
INSERT INTO Project VALUES('P333', 1, 'W');
INSERT INTO Project VALUES('P333', 2, 'W');
INSERT INTO Project VALUES('P333', 3, 'W');

-- run this query
-- SELECT the PID which step = 0 and P_status = 'C'
-- Also, the PID can't have other step number with status is C
-- So I have another condition to choose the PID not has other step is complete
SELECT PID FROM Project
WHERE (Step = 0 AND P_status = 'C')
AND PID
NOT IN (SELECT PID
        FROM Project 
        WHERE (Step != 0 AND P_status = 'C'));