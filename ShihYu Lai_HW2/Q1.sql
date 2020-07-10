-- Online DB (SQLite): http://sqlfiddle.com/#!7/c0511

-- Create a teble called ProjectRoomBookings
-- and choose roomNum as primary key

-- In this table, I add the startDay and endDat to store the Date of the reservation
-- Also, I add the constraint check to check whether the startTime is before the endTime
-- And, the startDay need to be same with the endDay because rooms can't be booked for multiple days
CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startDay CHAR(10) NOT NULL,
endDay CHAR(10) NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum)
CONSTRAINT checkTime CHECK (((startTime < endTime) AND (startDay = endDay))));

-- the main two problem I want to solve are : 
-- 1. the start time could be incorrectly entered to be later than the end time. 
-- 2.  a new group could be accidentally put in to occupy a room. 

-- before insert, run this query to check
-- Assume new startTime is 9 and the new endTime is 13
-- If we alrady has 12-15 and 17-19 in the table, after running this query
-- we will print 12-15, and this mean we can't insert new time because is already accupied.
Select * from ProjectRoomBookings
Where (9 < endTime and 9 >= startTime) or (13 > startTime and 13 <= endTime);

-- case 1: the normar insert
INSERT INTO ProjectRoomBookings VALUES(100, '02/24/2020', '02/24/2020', 12, 15, 'ABC');

-- case 2: the startTime is after the endTime
-- in this case, we can't insert successful because our check will find the problem
-- we will see the error : could not execute statement due to a constraint failure (19 CHECK constraint failed: checkTime)
INSERT INTO ProjectRoomBookings VALUES(110, '02/25/2020', '02/25/2020', 16, 12, 'DEF');

-- case 3: book several days
-- in this case, we can't insert successful because our check will find the problem
-- we will see the error : could not execute statement due to a constraint failure (19 CHECK constraint failed: checkTime)
INSERT INTO ProjectRoomBookings VALUES(120, '02/25/2020', '02/26/2020', 9, 12, 'GHI');

-- case 4: book the same room at the overlap time
-- in this case, we can't insert successful because our select query will generate the output
-- in the case 1, room 100 already occupied by group ABC from 12 to 15
-- so the group xyz can't book the room 100 after 12, if they fix the time to 12, then will be success
INSERT INTO ProjectRoomBookings VALUES(100, '02/24/2020', '02/24/2020', 10, 13, 'xyz');

-- case 5: startDay is after endDay
-- in this case, we can't insert successful because our check will find the problem
-- we will see the error : could not execute statement due to a constraint failure (19 CHECK constraint failed: checkTime)
INSERT INTO ProjectRoomBookings VALUES(100, '02/26/2020', '02/24/2020', 10, 11, 'xyz');