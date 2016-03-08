.open BOOKSTORE.db

drop table USER;
drop table BOOK;
drop table LISTING;
drop table USER_REVIEW;
drop table BOOK_REVIEW;
drop table TRANSACT;

CREATE TABLE USER
(
  Username        VARCHAR(15)   NOT NULL,
  Email           VARCHAR(20)   NOT NULL,
  Password        VARCHAR(15)   NOT NULL,
  Fname           VARCHAR(15),
  Minit           CHAR,
  Lname           VARCHAR(15),
  Bdate           DATE,
  ZipCode         VARCHAR(5),
  State           CHAR(2),
  City            VARCHAR(15),
  StAddress       VARCHAR(30),
  PRIMARY KEY(Username)
);

CREATE TABLE BOOK
(
  ISBN            CHAR(14)      NOT NULL,
  Edition         VARCHAR(15),
  Title           VARCHAR(50)   NOT NULL,
  AuthorName      VARCHAR(30)   NOT NULL,
  PRIMARY KEY(ISBN)
);

CREATE TABLE LISTING
(
  Seller          VARCHAR(15)   NOT NULL,
  Book            CHAR(14)      NOT NULL,
  Price           DECIMAL(4,2)  NOT NULL,
  Quantity        INT,
  CHECK 		  (Quantity >= 0),
  PRIMARY KEY(Seller, Book),
  FOREIGN KEY(Book) references BOOK(ISBN) on update cascade,
  FOREIGN KEY(Seller) references USER(Username) on update cascade on delete restrict
);

CREATE TABLE USER_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Reviewee        VARCHAR(15)   NOT NULL,
  Review          TEXT,
  Rating          INT           NOT NULL,
  CHECK 		  (Rating >= 1 OR Rating <= 5),
  PRIMARY KEY(Reviewer, Reviewee),
  FOREIGN KEY(Reviewer) references USER(Username) on update cascade,
  FOREIGN KEY(Reviewee) references USER(Username) on update cascade
);

CREATE TABLE BOOK_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Book            CHAR(14)      NOT NULL,
  Review          TEXT,
  Rating          INT           NOT NULL,
  CHECK 		  (Rating >= 1 OR Rating <= 5),
  PRIMARY KEY(Reviewer, Book),
  FOREIGN KEY(Reviewer) references USER(Username) on update cascade,
  FOREIGN KEY(Book) references BOOK(ISBN) on update cascade
);

CREATE TABLE TRANSACT
(
  BuyerUN         VARCHAR(15)   NOT NULL,
  SellerUN        VARCHAR(15)   NOT NULL,
  BookID          CHAR(14)      NOT NULL,
  DateTime        TEXT          NOT NULL,
  PRIMARY KEY(BuyerUN, SellerUN, BookID, DateTime),
  FOREIGN KEY(BuyerUN) references USER(Username) on update cascade on delete restrict,
  FOREIGN KEY(SellerUN,BookID) references LISTING(Seller, Book) on update cascade on delete restrict
);

