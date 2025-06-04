### LIBRARY MANAGEMENT SYSTEM

# Database creation
create database Library;
Use Library;

# Table 1 - "Branch"
create table Branch (
Branch_no int auto_increment primary key,
Manager_Id int,
Branch_address varchar(250),
Contact_no varchar(15) not null unique);

Desc Branch;

# Value insertion to library branch from main, sub, central and department branches.
insert into Branch (Branch_No, Manager_Id, Branch_address, Contact_no) 
values
(1, 347, 'Dr. A.P.J. Abdul Kalam Science Library, Mananchira, Kozhikode', '8086123456'),
(2, 582, 'Sasthra Sub Library, West Hill, Kozhikode', '9074123456'),
(3, 761, 'Innovation Science Wing Library, Meenchanda, Kozhikode', '8590123456'),
(4, 193, 'CyberTech IT Library, Kallayi, Kozhikode', '9387123456'),
(5, 456, 'Digital Core IT Library, Mavoor Road, Kozhikode', '8119123456'),
(6, 618, 'TechNode Sub IT Library, Nadakkavu, Kozhikode', '9567123456'),
(7, 829, 'Heritage History Library, Medical College Area, Kozhikode', '8848123456'),
(8, 274, 'Central Archives of Kerala History, Palayam, Kozhikode', '9633123456'),
(9, 395, 'Mappila Heritage Library, Feroke, Kozhikode', '9745123456'),
(10, 707, 'Thunchan Malayalam Literature Library, Vellayil, Kozhikode', '9037123456');

Select * from Branch;

# Table 2 - "Employee"
create table Employee (
Emp_Id int primary key,
Emp_name varchar(150),
Position varchar(150),
Salary Decimal(10,2),
Branch_no int,
Foreign key (Branch_no) references Branch(Branch_no));

Desc Employee;

insert into Employee ( Emp_Id, Emp_name, Position, Salary, Branch_no) 
values
(201, 'Lesin Fargan', 'Operations Associate', 64500.00, 1),
(202, 'Ubaidullah Kuniyan', 'Library Assistant', 32000.00, 2),
(203, 'Rino Jervin', 'IT Support Executive', 70500.00, 3),
(204, 'Aadithya Prakash', 'Content Curator', 47500.00, 4),
(205, 'Shammas Shukoor', 'Research Assistant', 58000.00, 5),
(206, 'Ashnad Ameer', 'Junior Librarian', 39000.00, 6),
(207, 'Joel Mathew', 'Catalog Manager', 73000.00, 7),
(208, 'Irfan Ayub', 'Documentation Analyst', 51000.00, 8),
(209, 'Umer Farooq', 'Digital Media Coordinator', 68700.00, 9),
(210, 'Shankar Dey', 'Library Relations Officer', 61000.00, 10);

select * from Employee;

# Table 3 - "Books"
create table Books (
ISBN VARCHAR(15) primary key unique,
Book_title varchar(150),
Category varchar(150),
Rental_price decimal(10,2),
Status varchar(3), check (Status in('Yes','No')),
Author varchar(150),
Publisher varchar(150));

Desc Books;

Insert into Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) 
values
('9792276762385', 'The White Tiger', 'Fiction', 288.91, 'Yes', 'Khushwant Singh', 'Mathrubhumi Books'),
('9795898432057', 'Train to Pakistan', 'Fiction', 231.47, 'Yes', 'Devdutt Pattanaik', 'DC Books'),
('9782588254420', 'The God of Small Things', 'Fiction', 304.14, 'Yes', 'Sudha Murty', 'Westland'),
('9791434141955', 'Interpreter of Maladies', 'Fiction', 178.73, 'No', 'Khushwant Singh', 'Rupa Publications'),
('9781327200455', 'The Palace of Illusions', 'Fiction', 275.27, 'Yes', 'Jhumpa Lahiri', 'Penguin India'),
('9795053468895', 'Serious Men', 'Fiction', 342.10, 'Yes', 'R.K. Narayan', 'Vintage India'),
('9793360764251', 'Swami and Friends', 'Fiction', 215.68, 'Yes', 'R.K. Narayan', 'DC Books'),
('9799284123706', 'The Guide', 'Fiction', 303.21, 'Yes', 'Arundhati Roy', 'IndiaInk'),
('9796250120945', 'Chanakya’s Chant', 'Fiction', 252.89, 'Yes', 'Ashwin Sanghi', 'Aleph Book Company'),
('9784279941183', 'The Alchemist’s Secret', 'Fiction', 342.95, 'Yes', 'Anuja Chauhan', 'Penguin India'),
('9782813422843', 'When Breath Becomes Air', 'Fiction', 248.63, 'No', 'R.K. Narayan', 'Westland'),
('9783804156785', 'The Zoya Factor', 'Fiction', 190.52, 'Yes', 'Sudha Murty', 'IndiaInk'),
('9789651566316', 'Five Point Someone', 'Fiction', 225.49, 'No', 'Jeet Thayil', 'Penguin India'),
('9784685239144', 'An Era of Darkness', 'Fiction', 162.37, 'Yes', 'Shashi Tharoor', 'DC Books'),
('9795741953955', 'The Room on the Roof', 'Fiction', 343.28, 'Yes', 'Ruskin Bond', 'Aleph Book Company'),
('9797997980643', 'The Inheritance of Loss', 'Fiction', 267.90, 'No', 'Kiran Desai', 'Rupa Publications'),
('9783423342153', 'Half Girlfriend', 'Fiction', 327.18, 'Yes', 'Chetan Bhagat', 'Rupa Publications'),
('9788787412805', 'The Immortals of Meluha', 'Fiction', 135.73, 'Yes', 'Amish Tripathi', 'Westland'),
('9783657412034', 'Sita: Warrior of Mithila', 'Fiction', 174.82, 'Yes', 'Amish Tripathi', 'HarperCollins India'),
('9795184929946', 'The Secret of the Nagas', 'Fiction', 259.46, 'No', 'Amish Tripathi', 'HarperCollins India'),
('9798426232789', 'Gitanjali', 'Fiction', 319.44, 'Yes', 'R.K. Narayan', 'IndiaInk'),
('9786721211734', 'The Blue Umbrella', 'Fiction', 186.51, 'Yes', 'Ruskin Bond', 'Mathrubhumi Books'),
('9784185041628', 'The Rozabal Line', 'Fiction', 267.30, 'No', 'Ashwin Sanghi', 'Aleph Book Company'),
('9788788978105', 'The Legend of Lakshmi Prasad', 'Fiction', 311.07, 'Yes', 'Sudha Murty', 'Westland'),
('9794786523473', 'Lanka’s Princess', 'Fiction', 277.59, 'Yes', 'Kiran Desai', 'Rupa Publications'),
('9791098479628', 'The Oath of the Vayuputras', 'Fiction', 191.62, 'No', 'Amish Tripathi', 'HarperCollins India'),
('9796819927325', 'The Hungry Tide', 'Fiction', 294.70, 'Yes', 'Amitav Ghosh', 'Penguin India'),
('9789214218843', 'Goat Days', 'Fiction', 329.17, 'No', 'Benyamin', 'DC Books'),
('9796322104616', 'The Lowland', 'Fiction', 233.85, 'Yes', 'Jhumpa Lahiri', 'Penguin India'),
('9789434137826', 'A Suitable Boy', 'Fiction', 308.49, 'No', 'Vikram Seth', 'Vintage India'),
('9787864218894', 'The Namesake', 'Fiction', 275.63, 'Yes', 'Jhumpa Lahiri', 'Penguin India'),
('9793149872447', 'Sea of Poppies', 'Fiction', 198.42, 'Yes', 'Amitav Ghosh', 'Aleph Book Company'),
('9782323659812', 'The Ministry of Utmost Happiness', 'Fiction', 342.58, 'Yes', 'Arundhati Roy', 'Vintage India'),
('9783214897025', 'One Indian Girl', 'Fiction', 146.73, 'No', 'Chetan Bhagat', 'Rupa Publications'),
('9788742359814', 'Revolution 2020', 'Fiction', 305.27, 'Yes', 'Chetan Bhagat', 'Rupa Publications'),
('9798241356831', '2 States', 'Fiction', 233.86, 'Yes', 'Chetan Bhagat', 'Rupa Publications'),
('9791064875518', 'The Great Indian Novel', 'Fiction', 319.92, 'No', 'Shashi Tharoor', 'Penguin India'),
('9788945439212', 'My Gita', 'Fiction', 129.48, 'Yes', 'Devdutt Pattanaik', 'Westland'),
('9797821342781', 'The Pregnant King', 'Fiction', 181.57, 'Yes', 'Devdutt Pattanaik', 'Westland'),
('9781236549983', 'The Forest of Enchantments', 'Fiction', 248.24, 'No', 'Chitra Banerjee Divakaruni', 'HarperCollins India');

 select * from Books;
 
# Table 4 - "Customer"
create table Customer (
Customer_Id int primary key,
Customer_name varchar(150) unique,
Customer_address varchar(250),
Reg_date date);

Desc Customer;

Insert into Customer ( Customer_Id, Customer_name, Customer_address, Reg_Date) 
values
(1, 'Anjali Menon', 'Karaparamba Road, Kozhikode 673010', '2025-04-03'),
(2, 'Vishnu Nair', 'Mavoor Road, Kozhikode 673009', '2025-04-08'),
(3, 'Neha Haridas', 'Panniyankara, Kozhikode 673003', '2025-04-15'),
(4, 'Arjun Krishnan', 'West Hill, Kozhikode 673005', '2025-04-20'),
(5, 'Revathy Suresh', 'Palayam, Kozhikode 673004', '2025-04-28'),
(6, 'Sreejith Kumar', 'Kallayi Road, Kozhikode 673002', '2025-04-30'),
(7, 'Arya Prakash', 'Puthiyara, Kozhikode 673021', '2025-05-01'),
(8, 'Rohith Raj', 'Chevayur, Kozhikode 673017', '2025-05-02'),
(9, 'Lekshmi Nair', 'Eranchipalam, Kozhikode 673006', '2025-05-04'),
(10, 'Adarsh Pillai', 'Bilathikulam, Kozhikode 673016', '2025-05-06'),
(11, 'Sneha Balan', 'Medical College Area, Kozhikode 673008', '2025-05-08'),
(12, 'Faheem Basheer', 'Malaparamba, Kozhikode 673009', '2025-05-10'),
(13, 'Anagha Ravi', 'Vellayil Beach Road, Kozhikode 673032', '2025-05-13'),
(14, 'Rahul Dev', 'Pavangad, Kozhikode 673021', '2025-05-16'),
(15, 'Devika Namboodiri', 'Thondayad Bypass, Kozhikode 673014', '2025-05-18'),
(16, 'Harikrishnan P', 'Nadakkavu, Kozhikode 673011', '2025-05-20'),
(17, 'Aswathy Shaji', 'Feroke Town, Kozhikode 673631', '2025-05-23'),
(18, 'Nihal K', 'Pantheerankavu, Kozhikode 673019', '2025-05-26'),
(19, 'Pavithra Unni', 'Meenchanda, Kozhikode 673018', '2025-05-29'),
(20, 'Jayasree Das', 'Kunnamangalam, Kozhikode 673571', '2025-05-31');
 
select * from Customer;

# Table 5 - "Issue_status"
create table issue_status (
Issue_Id int auto_increment primary key,
Issued_Cust int,
foreign key (Issued_cust) references Customer(Customer_Id),
Issued_book_name varchar(150),
Issue_date date,
ISBN_book varchar(20),
foreign key (ISBN_book) references Books(ISBN));

Desc issue_status;

insert into Issue_status (Issue_Id, Issued_cust, Issued_book_name,Issue_date,ISBN_Book) 
values
(1, 5, 'The Palace of Illusions', '2025-05-26', '9781327200455'),
(2, 12, 'Train to Pakistan', '2025-05-28', '9795898432057'),
(3, 9, 'Gitanjali', '2025-05-29', '9798426232789'),
(4, 16, 'Sea of Poppies', '2025-05-30', '9793149872447'),
(5, 3, 'One Indian Girl', '2025-06-01', '9783214897025'),
(6, 19, 'The Hungry Tide', '2025-05-31', '9796819927325'),
(7, 7, 'The Blue Umbrella', '2025-05-27', '9786721211734'),
(8, 14, 'The Legend of Lakshmi Prasad', '2025-05-25', '9788788978105'),
(9, 2, 'Revolution 2020', '2025-06-03', '9788742359814'),
(10, 11, 'The Lowland', '2025-06-04', '9796322104616');

select * from  Issue_status;

# Table 6 - "return_Status"
create table return_Status (
Return_Id int primary key,
Return_Cust int,
Return_book_name varchar(150),
Return_book_date date,
ISBN_book2 varchar(20),
foreign key (ISBN_book2) references Books(ISBN));

Desc return_Status;

insert into return_Status (Return_Id, Return_Cust, Return_book_name, Return_book_date, ISBN_book2) 
values
(123, 7, 'Five Point Someone', '2025-05-26', '9789651566316'),
(245, 15, 'The Palace of Illusions', '2025-05-28', '9781327200455'),
(301, 11, 'Swami and Friends', '2025-05-29', '9793360764251'),
(419, 3, 'The Immortals of Meluha', '2025-05-30', '9788787412805'),
(532, 19, 'The Hungry Tide', '2025-05-31', '9796819927325'),
(608, 6, 'The Forest of Enchantments', '2025-06-01', '9781236549983'),
(725, 9, 'The Alchemist’s Secret', '2025-05-27', '9784279941183'),
(804, 1, 'The Room on the Roof', '2025-06-03', '9795741953955'),
(879, 17, 'The Great Indian Novel', '2025-06-04', '9791064875518'),
(993, 14, 'Chanakya’s Chant', '2025-05-25', '9796250120945');

select * from return_Status;

# 1. Retrieve the book title, category, and rental price of all available books.
select Book_title, Category, Rental_Price from Books where Status = 'Yes';

# 2. List the employee names and their respective salaries in descending order of salary.
select Emp_name, Salary from Employee order by Salary desc;

# 3. Retrieve the book titles and the corresponding customers who have issued those books.
select b.Book_title, c.Customer_name 
from Issue_Status i 
inner join Books b on i.Isbn_book = b.ISBN 
inner join Customer c on i.Issued_cust = c.Customer_Id;

# 4. Display the total count of books in each category.
select Category, count(*) as Total_Books_Count
from Books
group by Category;

# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
select Emp_name, Position, Salary
from Employee
where Salary > 50000;

# 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
select Customer_name from Customer
where Reg_date < '2022-01-01' and Customer_Id not in (select Issued_cust from Issue_Status);

# 7. Display the branch numbers and the total count of employees in each branch.
select Branch_no, count(*) as Total_Emp_Branchwise
from Employee 
group by Branch_no;

# 8. Display the names of customers who have issued books in the month of June 2023.
select distinct c.Customer_name 
from Issue_Status i 
inner join Customer c on i.Issued_cust = c.Customer_Id 
where i.Issue_date between'2023-06-01' and '2023-06-30';

# 9. Retrieve book_title from book table containing History.
Insert into Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) value
('9788899001122', 'A Brief History of Tomorrow', 'Philosophy', 292.75, 'Yes', 'Yuval Noah Harari', 'Penguin India');
select Book_title from Books where Book_title like '%History%';

# 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
select  Branch_no, count(*) as Totat_emp_Count 
from Employee group by Branch_no 
having count(*) > 5;

# 11. Retrieve the names of employees who manage branches and their respective branch addresses.
UPDATE Branch SET Manager_Id = 201 WHERE Branch_No = 1;
UPDATE Branch SET Manager_Id = 202 WHERE Branch_No = 2;
UPDATE Branch SET Manager_Id = 203 WHERE Branch_No = 3;
UPDATE Branch SET Manager_Id = 204 WHERE Branch_No = 4;
UPDATE Branch SET Manager_Id = 205 WHERE Branch_No = 5;
UPDATE Branch SET Manager_Id = 206 WHERE Branch_No = 6;
UPDATE Branch SET Manager_Id = 207 WHERE Branch_No = 7;
UPDATE Branch SET Manager_Id = 208 WHERE Branch_No = 8;
UPDATE Branch SET Manager_Id = 209 WHERE Branch_No = 9;
UPDATE Branch SET Manager_Id = 210 WHERE Branch_No = 10;
select b.Branch_no, e.Emp_name, b.Branch_address 
from Employee e 
inner join Branch b on e.Emp_Id = b.Manager_Id;

# 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
select c.Customer_name, b.Rental_Price
from Issue_Status i inner join Books b on I.Isbn_book = b.ISBN 
inner join Customer c on I.Issued_cust = c.Customer_Id 
where b.Rental_Price > 25;