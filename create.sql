.open BOOKSTORE.db

drop table USER;
drop table LISTING
drop table BOOK;
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
  PRIMARY KEY(Username)
)

CREATE TABLE LISTING
(
  Seller          VARCHAR(15)   NOT NULL,
  Book            CHAR(13)      NOT NULL,
  Edition         VARCHAR(15)   NOT NULL,
  Price           DECIMAL(4,2)  NOT NULL,
  Quantity        INT,
  PRIMARY KEY(Seller, Book, Edition)
)

CREATE TABLE BOOK
(
  ISBN            CHAR(13)      NOT NULL,
  ISSN            CHAR(8),
  Title           VARCHAR(50)   NOT NULL,
  AuthorName      VARCHAR(30)   NOT NULL,
  --Description	    VARCHAR(100)	NOT NULL,
  PRIMARY KEY(ISBN)
)

CREATE TABLE USER_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Reviewee        VARCHAR(15)   NOT NULL,
  Reviewee        VARCHAR(120),
  Rating          INT           NOT NULL,
  PRIMARY KEY(Reviewer, Reviewee)
)

CREATE TABLE BOOK_REVIEW
(
  Reviewer        VARCHAR(15)   NOT NULL,
  Book            CHAR(10)      NOT NULL,
  Reviewee        VARCHAR(120),
  Rating          INT           NOT NULL,
  PRIMARY KEY(Reviewer, Book)
)

CREATE TABLE TRANSACTION
(
  BuyerUN         VARCHAR(15)   NOT NULL,
  SellerUN        VARCHAR(15)   NOT NULL,
  BookID          CHAR(13)      NOT NULL,
  Edition         VARCHAR(15)   NOT NULL,
  DateTime        INTEGER       NOT NULL,
  PRIMARY KEY(BuyerUN, SellerUN, BookID, Edition, DateTime)
);

