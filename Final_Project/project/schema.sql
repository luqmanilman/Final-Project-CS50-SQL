-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
--REPRESENT Customers info

CREATE TABLE Customers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "phone_number" int UNIQUE,
    "adress" TEXT,
    "zip_code" INTEGER,
    PRIMARY KEY("id")
);

--bookstore information
CREATE TABLE Book_store(
    "id" INTEGER,
    "name" TEXT,
    "reviews" INTEGER,
    "address" TEXT,
    "zip_code" INTEGER,
    "work_days" TEXT,
    PRIMARY KEY ("id")
);

--Item types
CREATE TABLE Store_items(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "price" REAL,
    "stock" INTEGER,
    PRIMARY KEY ("id")
);

--Customers Orders
CREATE TABLE Orders(
    "id" INTEGER,
    "customers_id" INTEGER,
    "items_id" INTEGER,
    "date" DATE,
    PRIMARY KEY("id"),
    FOREIGN KEY ("customers_id") REFERENCES Customers("id"),
    FOREIGN KEY ("items_id") REFERENCES Store_items("id")
);

--Order type
CREATE TABLE Order_type(
    "id" INTEGER,
    "orders_id" INTEGER,
    "order_type" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("orders_id") REFERENCES Orders("id")
);

--Employee personal information
CREATE TABLE Employee(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "job_title" TEXT,
    "salary" INTEGER,
    "hire_date" DATE,
    "phone_number" INTEGER,
    PRIMARY KEY ("id")
);

--Sales table
CREATE TABLE Sales(
    "id" INTEGER,
    "order_type_id" INTEGER,
    "items_id" INTEGER,
    "price" INTEGER,
    "amount" INTEGER,
    "sales_date" DATE,
    "employee_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("order_type_id") REFERENCES Order_type("id"),
    FOREIGN KEY ("items_id") REFERENCES Store_items("id"),
    FOREIGN KEY ("employee_id") REFERENCES Employee("id")
);

--Feedback
CREATE TABLE Feedback(
    "id" INTEGER,
    "customers_id" INTEGER,
    "employee_id" INTEGER,
    "items_id" INTEGER,
    "reviews" INTEGER,
    "store_shop_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customers_id") REFERENCES Customers("id"),
    FOREIGN KEY ("employee_id") REFERENCES Employee("id"),
    FOREIGN KEY ("items_id") REFERENCES Store_items("id"),
    FOREIGN KEY ("store_shop_id") REFERENCES Book_store("id")
);

--Create Views
CREATE VIEW "check_item_availability" AS
SELECT id,name,type,stock FROM Store_items
WHERE stock IS NOT NULL;

CREATE VIEW "top_reviewed" AS
SELECT id,name,type, reviews FROM Store_Items
ORDER BY reviews DESC;

--Creating index to boost search
CREATE INDEX item_reviews_index ON Store_items("id", "name", "type", "reviews");
CREATE INDEX recent_sales_index ON Sales("id", "items_id", "amount", "sales_date");
CREATE INDEX orders_index_ ON Orders("id", "items_id", "date", "customers_id");
CREATE INDEX employee_index ON Employee("id", "first_name", "last_name", "job_title", "salary");
CREATE INDEX order_type_index ON Order_type("id", "orders_id", "order_type");
CREATE INDEX feedback_index ON Feedback("id", "reviews");
