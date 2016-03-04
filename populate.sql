.open BOOKSTORE.db

-- USER INSERTS
INSERT INTO USER VALUES('skyler','f.s.kidd@gmail.com','p@ssw0rd','Frank','S','Kidd','1995-02-10','98011','WA','Bothell','1234 Steeterson Street');
INSERT INTO USER VALUES('testerT','tester@example.com','12341234','Test','R','Testerson','1990-06-23','90210','WA','Beverly Hills','555 Richguy Blvd');

-- BOOK INSERTS
INSERT INTO BOOK VALUES('978-0385743563','Hardcover','Steelheart','Brandon Sanderson');
INSERT INTO BOOK VALUES('978-0385743570','Paperback','Steelheart','Brandon Sanderson');
INSERT INTO BOOK VALUES('978-1423176374','Hardcover','All Our Yesterdays','Cristin Terrill');
INSERT INTO BOOK VALUES('978-1616203221','Paperback','Life After Life','Jill McCorkle');
INSERT INTO BOOK VALUES('978-0316176491','Paperback','Life After Life','Kate Atkinson');

-- LISTING INSERTS
INSERT INTO LISTING VALUES('skyler','978-0385743563','24.99','14');
INSERT INTO LISTING VALUES('testerT','978-1616203221','29.99','3');

-- USER_REVIEW INSERTS
INSERT INTO USER_REVIEW (Reviewer, Reviewee, Rating) VALUES('skyler', 'testerT', '4');

-- BOOK_REVIEW INSERTS
INSERT INTO BOOK_REVIEW VALUES('skyler','978-0385743563','Best book ever, OMG.','5');

-- TRANSACTION INSERTS
INSERT INTO TRANSACTION VALUES('skyler','testerT','978-1616203221','2016-03-03 17:16:03.234');