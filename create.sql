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
  Fname           VARCHAR(15),
  Minit           CHAR,
  Lname           VARCHAR(15),
  Bday            DATE,
  Email           VARCHAR(20)   NOT NULL,
  Password        VARCHAR(15)   NOT NULL,
  Address         VARCHAR(30),
  PRIMARY KEY(CustomerID)
)

CREATE TABLE LISTING
(
    
)

CREATE TABLE BOOK
(
  ISBN            CHAR(10)      NOT NULL,
  Title           VARCHAR(50)   NOT NULL,
  InventoryAmount INT,
  Price           DECIMAL(4,2)  NOT NULL,
  CategoryC       INT,
  AuthorFname     VARCHAR(30)   NOT NULL,
  AuthorLname     VARCHAR(15)   NOT NULL,
  --Description	    VARCHAR(100)	NOT NULL,
  AvgRating       INT check (AvgRating >= 1 OR AvgRating <=5),
  PRIMARY KEY(ISBN),
)

CREATE TABLE USER_REVIEW
(
    
)

CREATE TABLE BOOK_REVIEW
(
    
)

CREATE TABLE TRANSACTION
(
  ProductID       CHAR(9)   NOT NULL,
  Price           INT       NOT NULL,
  SellerID        CHAR      NOT NULL,
  CustomerID      CHAR(9)   NOT NULL,
  TranactionDate  DATE      NOT NULL,
  FOREIGN KEY(ProductID)
);

