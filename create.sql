.open BOOKSTORE.db

drop table USER;
drop table BOOK;
drop table LISTING;
drop table USER_REVIEW;
drop table BOOK_REVIEW;
drop table TRANSACTION;

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
  CONSTRAINT PRIMARY KEY(Username)
)

CREATE TABLE BOOK
(
  ISBN            CHAR(14)      NOT NULL,
  Edition         VARCHAR(15),
  Title           VARCHAR(50)   NOT NULL,
  AuthorName      VARCHAR(30)   NOT NULL,
  --Description	    VARCHAR(100)	NOT NULL,
  CONSTRAINT PRIMARY KEY(ISBN)
)

CREATE TABLE LISTING
(
  Seller          VARCHAR(15)   NOT NULL,
  Book            CHAR(14)      NOT NULL,
  Price           DECIMAL(4,2)  NOT NULL,
  Quantity        INT,
  CONSTRAINT PRIMARY KEY(Seller, Book),
  CONSTRAINT FOREIGN KEY(Book) references BOOK on update cascade on delete set null,
  CONSTRAINT FOREIGN KEY(Seller) references USER ​on update cascade on delete set null
)

CREATE TABLE USER_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Reviewee        VARCHAR(15)   NOT NULL,
  Review          TEXT,
  Rating          INT           NOT NULL,
  CONSTRAINT PRIMARY KEY(Reviewer, Reviewee),
  CONSTRAINT FOREIGN KEY(Reviewer) references USER ​on update cascade on delete set null
  CONSTRAINT FOREIGN KEY(Reviewee) references USER ​on update cascade on delete set null
)

CREATE TABLE BOOK_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Book            CHAR(14)      NOT NULL,
  Reviewee        TEXT,
  Rating          INT           NOT NULL,
  CONSTRAINT PRIMARY KEY(Reviewer, Book),
  CONSTRAINT FOREIGN KEY(Reviewer) references USER ​on update cascade on delete set null
  CONSTRAINT FOREIGN KEY(Book) references BOOK ​on update cascade on delete set null
)

CREATE TABLE TRANSACTION
(
  BuyerUN         VARCHAR(15)   NOT NULL,
  SellerUN        VARCHAR(15)   NOT NULL,
  BookID          CHAR(14)      NOT NULL,
  DateTime        TEXT          NOT NULL,
  CONSTRAINT PRIMARY KEY(BuyerUN, SellerUN, BookID, DateTime),
  CONSTRAINT FOREIGN KEY(BuyerUN) references USER ​on update cascade on delete set null,
  CONSTRAINT FOREIGN KEY(SellerUN,BookID) references LISTING ​on update cascade on delete set null
);

