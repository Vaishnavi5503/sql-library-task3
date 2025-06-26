-- use the Library database
USE LibraryDB;

-- 1️⃣ Select all columns from Books
SELECT * FROM Books;

-- 2️⃣ Select only book titles and author IDs
SELECT Title, AuthorID FROM Books;

-- 3️⃣ Find books with title containing 'Harry'
SELECT * FROM Books
WHERE Title LIKE '%Harry%';

-- 4️⃣ Get members who have an email address
SELECT * FROM Members
WHERE Email IS NOT NULL;

-- 5️⃣ Find members whose names start with 'A'
SELECT * FROM Members
WHERE Name LIKE 'A%';

-- 6️⃣ List borrow records between two dates
SELECT * FROM Borrow
WHERE BorrowDate BETWEEN '2024-05-01' AND '2024-06-30';

-- 7️⃣ Show all books, sorted by Title A-Z
SELECT * FROM Books
ORDER BY Title ASC;

-- 8️⃣ Show top 2 most recently borrowed books
SELECT * FROM Borrow
ORDER BY BorrowDate DESC
LIMIT 2;

-- 9️⃣ Use alias to rename column
SELECT Title AS Book_Title FROM Books;

-- 🔟 Select distinct member names
SELECT DISTINCT Name FROM Members;

-- BONUS: Filter with IN and NOT IN
SELECT * FROM Books
WHERE AuthorID IN (1, 3);