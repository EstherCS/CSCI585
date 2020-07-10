-- Online DB (MySQL 5.6): http://sqlfiddle.com/#!9/b34f39/1

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
-- SELECT Instructor from Table2 who's teaching JavaScript
-- SELECT Instructor from Table3 who's teaching Scratch
-- SELECT Instructor from Table4 who's teaching Python
-- and SELECT Instructor who exist in table2~4
-- ( it's mean this Instructor teaches these three classes )
SELECT DISTINCT Instructor
FROM Teach as Table1
WHERE EXISTS ( SELECT Instructor
               FROM Teach as Table2
               WHERE Table1.Instructor = Table2.Instructor 
               AND Table2.Subject = 'JavaScript' 
              
AND EXISTS ( SELECT Instructor
             FROM Teach as Table3
             WHERE Table2.Instructor = Table3.Instructor 
             AND Table3.Subject = 'Scratch'
            
AND EXISTS ( SELECT Instructor
             FROM Teach as Table4
             WHERE Table3.Instructor = Table4.Instructor 
             AND Table4.Subject = 'Python')));