-- USER INSERTS
INSERT INTO USER VALUES('skyler','f.s.kidd@gmail.com','p@ssw0rd','Frank','S','Kidd','1995-02-10','98011','WA','Bothell','1234 Steeterson Street');
INSERT INTO USER VALUES('testerT','tester@example.com','12341234','Test','R','Testerson','1990-06-23','90210','WA','Beverly Hills','555 Richguy Blvd');

-- BOOK INSERTS
INSERT INTO BOOK VALUES('978-0385743563','Hardcover','Steelheart','Brandon Sanderson');
INSERT INTO BOOK VALUES('978-0385743570','Paperback','Steelheart','Brandon Sanderson');
INSERT INTO BOOK VALUES('978-1423176374','Hardcover','All Our Yesterdays','Cristin Terrill');
INSERT INTO BOOK VALUES('978-1616203221','Paperback','Life After Life','Jill McCorkle');
INSERT INTO BOOK VALUES('978-0316176491','Paperback','Life After Life','Kate Atkinson');
INSERT INTO BOOK VALUES('978-0553293357','Paperback','Foundation','Isaac Asimov');
INSERT INTO BOOK VALUES('978-0486411095','Hardcover','Dracula','Bram Stoker');
INSERT INTO BOOK VALUES('978-1451645859','Paperback','Ordinary Grace','William Kent Krueger');
INSERT INTO BOOK VALUES('978-0312577223','Hardcover','The Nightingale','Kristin Hannah');
INSERT INTO BOOK VALUES('978-1616149987','Paperback','The Life We Bury','Allen Eskens');
INSERT INTO BOOK VALUES('978-1477820018','Paperback','Take Me With You','Catherine Ryan Hyde');
INSERT INTO BOOK VALUES('978-0451419927','Paperback','Secrets of a Charmed Life','Susan Meissner');
INSERT INTO BOOK VALUES('978-1250074355','Paperback','The Silent Sister','Diane Chamberlain');
INSERT INTO BOOK VALUES('978-0143127550','Paperback','Everything I Never Told You','Celeste Ng');
INSERT INTO BOOK VALUES('978-0758278456','Paperback','What She Left Behind','Ellen M. Wiseman');
INSERT INTO BOOK VALUES('978-1477822081','Paperback','Trail of Broken Wings','Sejal Badani');
INSERT INTO BOOK VALUES('978-1594633669','Hardcover','The Girl on the Train','Paula Hawkins');
INSERT INTO BOOK VALUES('978-1507704530','Paperback','The Way We Fall','Cassia Leo');
INSERT INTO BOOK VALUES('978-1611099799','Paperback','When I Found You','Catherine Ryan Hyde');
INSERT INTO BOOK VALUES('978-0804171472','Paperback','The Narrow Road to the Deep North','Richard Flanagan');
INSERT INTO BOOK VALUES('978-1451681758','Paperback','The Light Between Oceans','M.L. Stedman');
INSERT INTO BOOK VALUES('978-0143121701','Paperback','The Invention of Wings','Sue Monk Kidd');
INSERT INTO BOOK VALUES('978-0812993547','Hardcover','Between the World and Me','Ta-Nehisi Coates');
INSERT INTO BOOK VALUES('978-0812988406','Hardcover','When Breath Becomes Air','Deckle Edge');
INSERT INTO BOOK VALUES('978-1503944435','Paperback','The Good Neighbor','A. J. Banner');
INSERT INTO BOOK VALUES('978-0615590585','Paperback','The Pecan Man','Cassie D. Selleck');
INSERT INTO BOOK VALUES('978-0553418026','Paperback','The Martian','Andy Weir');
INSERT INTO BOOK VALUES('978-0547577319','Paperback','A Long Walk to Water','Linda Sue Park');
INSERT INTO BOOK VALUES('978-0062315007','Paperback','The Alchemist','Paulo Coelho');
INSERT INTO BOOK VALUES('978-0451419910','Paperback','A Fall of Marigolds','Susan Meissner');
INSERT INTO BOOK VALUES('978-0062413864','Paperback','What She Knew','Gilly Macmillan');
INSERT INTO BOOK VALUES('978-1594634475','Hardcover','Fates and Furies','Lauren Groff');
INSERT INTO BOOK VALUES('978-1476733951','Paperback','Wool','Hugh Howey');
INSERT INTO BOOK VALUES('978-0758278432','Paperback','The Plum Tree','Ellen M. Wiseman');
INSERT INTO BOOK VALUES('978-0451466693','Paperback','Flight of the Sparrow','Amy B. Brown');
INSERT INTO BOOK VALUES('978-1496400802','Paperback','Secrets She Kept','Cathy Gohlke');
INSERT INTO BOOK VALUES('978-0061950728','Paperback','Orphan Train','Christina B. Kline');
INSERT INTO BOOK VALUES('978-0425261019','Paperback','Let Us Pretend This Never Happened','Jenny Lawson');
INSERT INTO BOOK VALUES('978-1501106477','Paperback','Brooklyn','Colm Toibin');
INSERT INTO BOOK VALUES('978-0989866217','Paperback','Miracle Man','William R Leibowitz');
INSERT INTO BOOK VALUES('978-0385376716','Hardcover','The Wonderful Things You Will Be','Emily W. Martin');
INSERT INTO BOOK VALUES('978-1250095893','Hardcover','Boys in the Trees','Carly Simon');
INSERT INTO BOOK VALUES('978-0316380867','Hardcover','The Thing About Jellyfish','Ali Benjamin');
INSERT INTO BOOK VALUES('978-0316225885','Hardcover','The Crossing','Michael Connelly');
INSERT INTO BOOK VALUES('978-1455581153','Paperback','Mean Streak','Sandra Brown');
INSERT INTO BOOK VALUES('978-1476728742','Hardcover','The Wright Brothers','David McCullough');
INSERT INTO BOOK VALUES('978-1476761671','Paperback','Before I Go','Colleen Oakley');
INSERT INTO BOOK VALUES('978-1476738024','Paperback','A Man Called Ove','Fredrik Backman');
INSERT INTO BOOK VALUES('978-1455559817','Paperback','Memory Man','David Baldacci');
INSERT INTO BOOK VALUES('978-0425247440','Paperback','What Alice Forgot','Liane Moriarty');
INSERT INTO BOOK VALUES('978-1503950252','Paperback','The Short Drop','Matthew FitzSimmons');


-- LISTING INSERTS
INSERT INTO LISTING VALUES('skyler','978-0385743563','24.99','14');
INSERT INTO LISTING VALUES('testerT','978-1616203221','29.99','3');

-- USER_REVIEW INSERTS
INSERT INTO USER_REVIEW (Reviewer, Reviewee, Rating) VALUES('skyler', 'testerT', '4');

-- BOOK_REVIEW INSERTS
INSERT INTO BOOK_REVIEW VALUES('skyler','978-0385743563','Best book ever, OMG.','5');

-- TRANSACTION INSERTS
INSERT INTO TRANSACT VALUES('skyler','testerT','978-1616203221','2016-03-03 17:16:03.234');