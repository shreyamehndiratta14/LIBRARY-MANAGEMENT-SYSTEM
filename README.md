# LIBRARY-MANAGEMENT-SYSTEM
The goal of this project is to design a well-structured relational database schema for a Library Management System using MySQL Workbench. The system manages books, authors, members, and borrowing records efficiently. 
 Tools Used:
MySQL Workbench for schema design and ER diagram
SQL for writing schema creation scripts
GitHub for version control and project submission
 Schema Overview:
The database includes the following four main entities:
1. Authors
AuthorID (Primary Key)
Name
Country
2. Books
BookID (Primary Key)
Title
Genre
ISBN
AuthorID (Foreign Key → Authors)
3. Members
MemberID (Primary Key)
Name
JoinDate
4. BorrowRecords
RecordID (Primary Key)
MemberID (Foreign Key → Members)
BookID (Foreign Key → Books)
BorrowDate
ReturnDate
 Relationships:
One Author can write many Books → One-to-Many
One Member can borrow many Books (tracked by BorrowRecords)
Each BorrowRecord links a Member to a Book with a borrow and return date
 Keys Used:
Primary Keys: Uniquely identify records in all tables
Foreign Keys: Maintain referential integrity between related tables

# Library Management System – Task 2

## Objective
This task demonstrates how to perform **data insertion**, **handling of null values**, and **update/delete operations** in a MySQL-based Library Management System using SQL scripts.
 Tools Used
- MySQL Workbench / DB Fiddle / SQLiteStudio
- SQL (Structured Query Language)
- GitHub for submission and version control
 
##  Key Operations Covered

### INSERT INTO
Used to add initial data to the following tables:
- `Authors`
- `Books`
- `Members`
- `BorrowRecords`

###  Handling NULL Values
- ISBN field in `Books` is allowed to be `NULL` for incomplete records.
- `ReturnDate` in `BorrowRecords` can be `NULL` for books not yet returned.

###  UPDATE with WHERE
- Updated member name in the `Members` table.
- Filled in a missing ISBN in the `Books` table.

###  DELETE with WHERE
- Deleted an incorrectly inserted borrow record.
- Removed a deactivated member.



