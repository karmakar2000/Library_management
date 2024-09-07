											-- CRUD Operation

-- Task 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')
insert into books(isbn, book_title, category, rental_price, status, author, publisher) 
values("978-1-60129-456-2", 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
select * from books;

-- Task 2: Update an Existing Member's Address
UPDATE members
SET member_address = 'Durgapur 12345, WB'
WHERE member_id = 'C103';
select * from members;

-- Task 3: Delete a Record from the Issued Status Table -- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.
delete from issued_status where issued_id = 'IS121';

-- Task 4: Retrieve All Books Issued by a Specific Employee -- Objective: Select all books issued by the employee with emp_id = 'E101'.
select * from issued_status where issued_emp_id =  'E101';

-- Task 5: List Members Who Have Issued More Than One Book -- Objective: Use GROUP BY to find members who have issued more than one book.
select issued_emp_id, count(*) as Total_Book_issued from issued_status
group by issued_emp_id
having count(issued_id) > 1;