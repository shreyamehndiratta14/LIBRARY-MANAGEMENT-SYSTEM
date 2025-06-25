create database LibraryDB2;
USE LibraryDB2;

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Genre VARCHAR(50),
    ISBN VARCHAR(20),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    JoinDate DATE
);

CREATE TABLE BorrowRecords (
    RecordID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
-- Task 2: Data Insertion and Handling Nulls for Library Management System

-- Switch to LibraryDB2
USE LibraryDB2;

-- INSERT data into Authors
INSERT INTO Authors (AuthorID, Name, Country) VALUES
(1, 'J.K. Rowling', 'UK'),
(2, 'George Orwell', 'UK'),
(3, 'Haruki Murakami', 'Japan');

-- INSERT data into Books
INSERT INTO Books (BookID, Title, Genre, ISBN, AuthorID) VALUES
(101, 'Harry Potter and the Sorcerer''s Stone', 'Fantasy', '9780747532699', 1),
(102, '1984', 'Dystopian', '9780451524935', 2),
(103, 'Kafka on the Shore', 'Magical Realism', NULL, 3); -- ISBN is NULL

-- INSERT data into Members
INSERT INTO Members (MemberID, Name, JoinDate) VALUES
(201, 'Alice Johnson', '2023-08-01'),
(202, 'Bob Smith', '2023-09-15');

-- INSERT data into BorrowRecords
INSERT INTO BorrowRecords (RecordID, MemberID, BookID, BorrowDate, ReturnDate) VALUES
(301, 201, 101, '2023-08-05', '2023-08-20'),
(302, 202, 102, '2023-09-20', NULL); -- Book not yet returned


-- UPDATE example: Change a member name
UPDATE Members
SET Name = 'Alice M. Johnson'
WHERE MemberID = 201;

-- UPDATE example: Set a missing ISBN
UPDATE Books
SET ISBN = '9781400079278'
WHERE BookID = 103;

-- DELETE example: Delete a borrow record that was inserted incorrectly
DELETE FROM BorrowRecords
WHERE RecordID = 302;

-- DELETE example: Remove a member who has been deactivated
DELETE FROM Members
WHERE MemberID = 202;
