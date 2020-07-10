-- Online DB (SqLite 3.31.1) : https://sqliteonline.com/
-- need to create table first
-- ans click this table at the left to show the table below
-- then input the query to see which line is deleted

-- Create a teble called People
-- and choose ID as primary key
CREATE TABLE People(Name CHAR(15) NOT NULL, Address CHAR(1) NOT NULL, ID INTEGER NOT NULL, SameFam CHAR(4) NOT NULL, PRIMARY KEY(ID));
-- insert values to the table
INSERT INTO People VALUES('Alice','A', 10, 'NULL');
INSERT INTO People VALUES('Bob', 'B', 15, 'NULL');
INSERT INTO People VALUES('Carmen', 'C', 22, 'NULL');
INSERT INTO People VALUES('Diego', 'A', 9, '10');
INSERT INTO People VALUES('Ella', 'B', 3, '15');
INSERT INTO People VALUES('Farkhad', 'D', 11, 'NULL');

-- run this query
-- SELECT member who's SameFam is not NULL and get their family id
-- (in this case, we'll get 10 and 15)
-- then we DELETE the family member 
DELETE FROM People
WHERE ID IN (SELECT SameFam
             FROM People);
