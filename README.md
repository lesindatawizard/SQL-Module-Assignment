## Assignment – Library Management System (Module 3)

Link to Screenshots: https://drive.google.com/drive/folders/19NQ4YAtSHHKJB9LQ0mNhVbOXc0-OXBsw?usp=sharing

### Report on building a relational database for a Library Management System

#### Steps Done:

1. **Created** a database named `library`.

2. **Created** the following tables in the database:

   * `Branch`
   * `Employee`
   * `Books`
   * `Customer`
   * `IssueStatus`
   * `ReturnStatus`

3. **Defined** table attributes and relationships:

   * **Branch**

     * `Branch_no` (PRIMARY KEY)
     * `Manager_Id`
     * `Branch_address`
     * `Contact_no`

   * **Employee**

     * `Emp_Id` (PRIMARY KEY)
     * `Emp_name`
     * `Position`
     * `Salary`
     * `Branch_no` (FOREIGN KEY referencing `Branch.Branch_no`)

   * **Books**

     * `ISBN` (PRIMARY KEY)
     * `Book_title`
     * `Category`
     * `Rental_Price`
     * `Status` ("yes" if available, "no" if not)
     * `Author`
     * `Publisher`

   * **Customer**

     * `Customer_Id` (PRIMARY KEY)
     * `Customer_name`
     * `Customer_address`
     * `Reg_date`

   * **IssueStatus**

     * `Issue_Id` (PRIMARY KEY)
     * `Issued_cust` (FOREIGN KEY referencing `Customer.Customer_Id`)
     * `Issued_book_name`
     * `Issue_date`
     * `Isbn_book` (FOREIGN KEY referencing `Books.ISBN`)

   * **ReturnStatus**

     * `Return_Id` (PRIMARY KEY)
     * `Return_cust`
     * `Return_book_name`
     * `Return_date`
     * `Isbn_book2` (FOREIGN KEY referencing `Books.ISBN`)

4. **Displayed** all created tables and ensured the schema is correct.

5. **Wrote** SQL queries for the following:

   1. **Retrieve** book title, category, and rental price of all available books.
   2. **List** employee names and salaries in descending order of salary.
   3. **Retrieve** book titles and corresponding customers who issued those books.
   4. **Display** total count of books in each category.
   5. **Retrieve** employee names and positions for salaries above Rs. 50,000.
   6. **List** customer names who registered before `2022-01-01` and have not issued any books.
   7. **Display** branch numbers and employee count per branch.
   8. **Display** names of customers who issued books in June 2023.
   9. **Retrieve** book titles from `Books` table containing "history".
   10. **Retrieve** branch numbers with more than 5 employees.
   11. **Retrieve** names of employees who manage branches and their branch addresses.
   12. **Display** names of customers who issued books with rental price > Rs. 25.
