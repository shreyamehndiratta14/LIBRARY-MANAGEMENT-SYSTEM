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
