-- Online DB (MySQL 5.6): http://sqlfiddle.com/#!9/511956/3

-- Create a teble called enrollment
-- and choose SID and ClassName as primary key
CREATE TABLE enrollment
(SID INTEGER NOT NULL, ClassName CHAR(10) NOT NULL, Grade CHAR(1) NOT NULL, PRIMARY KEY (SID, ClassName));

-- insert values to the table
INSERT INTO enrollment VALUES(123, 'Processing', 'A');
INSERT INTO enrollment VALUES(123, 'Python', 'B');
INSERT INTO enrollment VALUES(123, 'Scratch', 'B');
INSERT INTO enrollment VALUES(662, 'Java', 'B');
INSERT INTO enrollment VALUES(662, 'Python', 'A');
INSERT INTO enrollment VALUES(662, 'JavaScript', 'A');
INSERT INTO enrollment VALUES(662, 'Scratch', 'B');
INSERT INTO enrollment VALUES(345, 'Scratch', 'A');
INSERT INTO enrollment VALUES(345, 'JavaScript', 'B');
INSERT INTO enrollment VALUES(345, 'Python', 'A');
INSERT INTO enrollment VALUES(555, 'Python', 'B');
INSERT INTO enrollment VALUES(555, 'JavaScript', 'B');

-- run this query
-- use GROUP BY ClassName to see all the same classes as one class and count the number
-- then ORDER BY the DESC to sort the data returned in descending order.
SELECT ClassName, COUNT(ClassName) AS Total 
       FROM enrollment 
       GROUP BY ClassName
       ORDER BY Total DESC, LENGTH(ClassName);