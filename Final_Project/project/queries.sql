-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

INSERT INTO "Customers"("id", "first_name", "last_name", "phone_number", "address", "zip_code")
VALUES
(1, "Andi", "Susanto", 081234567890, "Jalan Merdeka", 12345),
(5, "Budi", "Santoso", 082345678901, "Jalan Maju Mundur", 23456),
(7, "Citra", "Wijaya", 083456789012, "Jalan Jenderal Sudirman", 34567),
(12, "Dewi", "Kusuma", 084567890123, "Jalan Gajah Mada", 45678),
(15, "Eko", "Prabowo", 085678901234, "Jalan Pahlawan", 56789),
(69, "Fajar", "Nugroho", 086789012345, "Jalan Surya Kencana", 67890),
(54, "Gita", "Purnama", 087890123456, "Jalan Diponegoro", 78901),
(39, "Hadi", "Saputra", 088901234567, "Jalan Ahmad Yani", 89012),
(22, "Indah", "Putri", 089012345678, "Jalan Sukarno Hatta", 90123),
(33, "Joko", "Widodo", 081123456789, "Jalan Gatot Subroto", 01234),
(44, "Kartika", "Sari", 082234567890, "Jalan Imam Bonjol", 34567),
(25, "Laras", "Dewi", 083345678901, "Jalan Thamrin", 45678),
(36, "Maman", "Suparman", 084456789012, "Jalan Sudirman", 56789),
(47, "Nadia", "Lestari", 085567890123, "Jalan Juanda", 67890),
(58, "Oscar", "Lubis", 086678901234, "Jalan Diponegoro", 78901);

INSERT INTO "Book_store"("id", "name", "reviews", "address", "zip_code", "work_days")
VALUES
(11, "Gramethia", 4, "Jalan Cijambe Kidul", 40687, "Monday"),
(12, "Book Haven", 0, "Jalan Panglima Polim", 12160, "Tuesday"),
(13, "Wonder Books", 5, "Jalan Thamrin", 10350, "Wednesday"),
(14, "Bookworm's Paradise", 3, "Jalan Kaliurang", 55581, "Thursday"),
(15, "Page Turner's Emporium", 2, "Jalan Sudirman", 60271, "Friday");


INSERT INTO Store_items("id", "name", "type", "price", "stock")
VALUES
(1, "One Piece", "Comics", 50000, 89),
(2, "Harry Potter", "Novel", 50000, 89),
(3, "The Lord of the Rings", "Novel", 75000, 45),
(4, "Marvel's Avengers", "Comics", 55000, 72),
(5, "To Kill a Mockingbird", "Novel", 60000, 63),
(6, "Batman: The Killing Joke", "Comics", 45000, 81),
(7, "Percy Jackson and the Olympians", "Novel", 55000, 68),
(8, "Naruto", "Comics", 48000, 77),
(9, "The Hunger Games", "Novel", 52000, 59),
(10, "Spider-Man", "Comics", 52000, 66),
(11, "Game of Thrones", "Novel", 70000, 52),
(12, "X-Men", "Comics", 47000, 73),
(13, "Doraemon", "Comics", 45000, 82),
(14, "The Da Vinci Code", "Novel", 65000, 55),
(15, "Attack on Titan", "Comics", 51000, 69),
(16, "The Hobbit", "Novel", 62000, 61),
(17, "Black Panther", "Comics", 54000, 74),
(18, "The Chronicles of Narnia", "Novel", 58000, 57),
(19, "Superman", "Comics", 49000, 78),
(20, "The Catcher in the Rye", "Novel", 54000, 67);

INSERT INTO "Orders"("id", "customers_id", "items_id", "date")
VALUES
(22, 5, 9, "2024-04-21 09:30:00"),
(23, 7, 6, "2024-04-21 10:15:00"),
(24, 12, 4, "2024-04-21 11:00:00"),
(25, 15, 10, "2024-04-21 11:45:00"),
(26, 69, 2, "2024-04-21 12:30:00"),
(27, 54, 8, "2024-04-21 13:15:00"),
(28, 39, 14, "2024-04-21 14:00:00"),
(29, 22, 17, "2024-04-21 14:45:00"),
(30, 33, 16, "2024-04-21 15:30:00"),
(31, 44, 3, "2024-04-21 16:15:00");


INSERT INTO "Order_type"("id", "orders_id", "order_type")
VALUES
(12, 22, "Offline"),
(15, 23, "Online"),
(18, 24, "Offline"),
(21, 25, "Online"),
(24, 26, "Offline"),
(27, 27, "Online"),
(30, 28, "Offline"),
(33, 29, "Online"),
(36, 30, "Offline"),
(39, 31, "Online");

INSERT INTO "Employee"("id", "first_name", "last_name", "job_title", "salary", "hire_date", "phone_number")
VALUES
(1, "John", "Doe", "Manager", 10000000, "2024-04-21", 81234567890),
(2, "Jane", "Smith", "Assistant Manager", 8000000, "2024-04-21", 82345678901),
(3, "Michael", "Johnson", "Cashier", 6000000, "2024-04-21", 83456789012),
(4, "Emily", "Williams", "Sales Associate", 5500000, "2024-04-21", 84567890123),
(5, "Christopher", "Brown", "Sales Associate", 5500000, "2024-04-21", 85678901234),
(6, "Jessica", "Jones", "Stock Clerk", 5000000, "2024-04-21", 86789012345),
(7, "Daniel", "Miller", "Stock Clerk", 5000000, "2024-04-21", 87890123456),
(8, "Sarah", "Davis", "Janitor", 4500000, "2024-04-21", 88901234567),
(9, "Matthew", "Wilson", "Janitor", 4500000, "2024-04-21", 89012345678),
(10, "Emma", "Martinez", "Security Guard", 5000000, "2024-04-21", 81123456789),
(11, "David", "Anderson", "Security Guard", 5000000, "2024-04-21", 82234567890),
(12, "Olivia", "Taylor", "Bookkeeper", 7000000, "2024-04-21", 83345678901),
(13, "Noah", "Thomas", "Librarian", 7000000, "2024-04-21", 84456789012),
(14, "Ava", "Hernandez", "IT Specialist", 9000000, "2024-04-21", 85567890123),
(15, "William", "Moore", "Delivery Driver", 6000000, "2024-04-21", 86678901234);

INSERT INTO "Sales"("id", "order_type_id", "items_id", "price", "amount", "sales_date", "employee_id")
VALUES
(1, 12, 9, 52000, 3, "2024-04-21 09:45:00", 1),
(2, 15, 6, 45000, 5, "2024-04-21 10:30:00", 2),
(3, 18, 4, 55000, 2, "2024-04-21 11:15:00", 3),
(4, 21, 10, 52000, 4, "2024-04-21 12:00:00", 4),
(5, 24, 2, 50000, 3, "2024-04-21 12:45:00", 5),
(6, 27, 8, 48000, 5, "2024-04-21 13:30:00", 6),
(7, 30, 14, 65000, 2, "2024-04-21 14:15:00", 7),
(8, 33, 17, 54000, 4, "2024-04-21 15:00:00", 8),
(9, 36, 16, 62000, 3, "2024-04-21 15:45:00", 9),
(10, 39, 3, 75000, 1, "2024-04-21 16:30:00", 10);

INSERT INTO "Feedback"("id", "customers_id", "employee_id", "items_id", "reviews", "book_store_id")
VALUES
(1, 5, 1, 9, 4, 11),
(2, 7, 2, 6, 3, 12),
(3, 12, 3, 4, 5, 13),
(4, 15, 4, 10, 3, 14),
(5, 69, 5, 2, 4, 15),
(6, 54, 6, 8, 4, 11),
(7, 39, 7, 14, 3, 12),
(8, 22, 8, 17, 5, 13),
(9, 33, 9, 16, 5, 14),
(10, 44, 10, 3, 4, 15);



-- SELECT query to retrieve all items with prices less than 30000
SELECT * FROM "Store_items" WHERE "price" < 30000;

-- UPDATE query to increase the stock of a specific item
UPDATE "Store_items" SET "stock" = "stock" + 10 WHERE "id" = 1;

-- DELETE query to remove an item from the Store_items table
DELETE FROM "Store_items" WHERE "id" = 3;

-- SELECT query to retrieve orders made by a specific customer
SELECT * FROM "Orders" WHERE "customers_id" = 1;

-- UPDATE query to change the address of a customer
UPDATE "Customers" SET "address" = '456 Pine St' WHERE "id" = 2;

-- DELETE query to remove an order from the Orders table
DELETE FROM "Orders" WHERE "id" = 3;
