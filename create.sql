.open BOOKSTORE.db

drop table BOOK;
drop table CUSTOMER;
drop table SELLER;
drop table TRANSACTION;
drop table REVIEW;
drop table BOOK_CATEGORY;

CREATE TABLE BOOK
(
  ProductID       CHAR(10)      NOT NULL,
  Title           VARCHAR(50)   NOT NULL,
  InventoryAmount INT,
  Price           DECIMAL(4,2)  NOT NULL,
  CategoryC       INT,
  AuthorFname     VARCHAR(30)   NOT NULL,
  AuthorLname     VARCHAR(15)   NOT NULL,
  Publisher       VARCHAR(15)   NOT NULL,
  PublishedDate   DATE          NOT NULL,
  --Description	    VARCHAR(100)	NOT NULL,
  AvgRating       INT check (AvgRating >= 1 OR AvgRating <=5),
  PRIMARY KEY(ProductID),
  FOREIGN KEY(CategoryC) REFERENCES BOOK_CATEGORY(CategoryCode)
);

CREATE TABLE CUSTOMER
(
  CustomerID      CHAR(9)       NOT NULL,
  CustomerFname   VARCHAR(15)	  NOT NULL,
  CustomerMI      CHAR,
  CustomerLname   VARCHAR(15)	  NOT NULL,
  Email           VARCHAR(20)   NOT NULL,
  CustPassword    VARCHAR(15)   NOT NULL,
  CustAddress     VARCHAR(30),
	PRIMARY KEY(CustomerID)
);
