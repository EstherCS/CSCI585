-- Online DB (MySQL 5.6): http://sqlfiddle.com/#!9/b34f39/4

-- Create a teble called Teach
-- and choose Instrctor and Subject as primary key
CREATE TABLE Teach(Instructor CHAR(10) NOT NULL, Subject CHAR(15) NOT NULL, PRIMARY KEY(Instrctor, Subject));
-- insert values to the table
INSERT INTO Teach VALUES('Aleph', 'Scratch');
INSERT INTO Teach VALUES('Aleph', 'Java');
INSERT INTO Teach VALUES('Aleph', 'Processing');
INSERT INTO Teach VALUES('Bit', 'Python');
INSERT INTO Teach VALUES('Bit', 'JavaScript');
INSERT INTO Teach VALUES('Bit', 'Java');
INSERT INTO Teach VALUES('CRC', 'Python');
INSERT INTO Teach VALUES('CRC', 'JavaScript');
INSERT INTO Teach VALUES('Dat', 'Scratch');
INSERT INTO Teach VALUES('Dat', 'Python');
INSERT INTO Teach VALUES('Dat', 'JavaScript');
INSERT INTO Teach VALUES('Emscr', 'Scratch');
INSERT INTO Teach VALUES('Emscr', 'Processing');
INSERT INTO Teach VALUES('Emscr', 'JavaScript');
INSERT INTO Teach VALUES('Emscr', 'Python');


-- run this query
-- use NATURAL JOIN to join the Instructor who teach JavaScript
-- and join the Instructor who teach Scratch 
-- and join the Instructor who teach Python
SELECT DISTINCT Teach.Instructor
FROM Teach
NATURAL JOIN (SELECT Instructor
              FROM Teach
              WHERE Subject = 'JavaScript') AS T1

NATURAL JOIN (SELECT Instructor
              FROM Teach
              WHERE Subject = 'Scratch') AS T2

NATURAL JOIN (SELECT Instructor
              FROM Teach
              WHERE Subject = 'Python') AS T3;