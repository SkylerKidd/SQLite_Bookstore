.open BOOKSTORE.db

drop table USER;
drop table LOCATION;
drop table BOOK;
drop table REVIEWER;
drop table USER_REVIEW;
drop table BOOK_REVIEW;
drop table TRANSACTION;

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
  Username        VARCHAR(15)   NOT NULL,
  CustomerFname   VARCHAR(15),
  CustomerMI      CHAR,
  CustomerLname   VARCHAR(15),
  Email           VARCHAR(20)   NOT NULL,
  CustPassword    VARCHAR(15)   NOT NULL,
  CustAddress     VARCHAR(30),
	PRIMARY KEY(CustomerID)
);

CREATE TABLE SELLER
(

  Username        CHAR(9)       NOT NULL;
  Company         VARCHAR();
)

CREATE TABLE TRANSACTION
(

)

CREATE TABLE REVIEW
(

)

  SellerID        CHAR(9)       NOT NULL,
  SellerFname     VARCHAR(15)   NOT NULL,
  SellerMI        CHAR,
  SellerLname     VARCHAR(15)   NOT NULL,
  Email           VARCHAR(20)   NOT NULL,
  SellerPassword  VARCHAR(15)   NOT NULL,
  Sellerddress    VARCHAR(30),
  PRIMARY KEY(SellerID)
);

CREATE TABLE TRANSACTION
(
  ProductID       CHAR(9)   NOT NULL,
  Price           INT       NOT NULL,
  SellerID        CHAR      NOT NULL,
  CustomerID      CHAR(9)   NOT NULL,
  TranactionDate  DATE      NOT NULL,
  FOREIGN KEY(ProductID)
);

