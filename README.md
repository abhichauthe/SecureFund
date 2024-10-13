 # Astravlut Next Generation Payment App

This project is a replica of a basic banking management system built using **JSP** and **Servlets**. It allows users to create an account, log in, perform banking operations such as account creation, deposits, withdrawals, balance checks, mobile recharges, and inquiries. It simulates fundamental banking features with a user-friendly interface.

## Features

- **User Registration and Login**: 
  - Users can sign up for an account using a registration form.
  - Login functionality with user credentials to access their banking dashboard.

- **Create Bank Account**: 
  - Once logged in, users can create a bank account.

- **Deposit and Withdraw Money**: 
  - Users can deposit money into their account.
  - Withdraw funds from their account as needed.

- **Check Account Balance**: 
  - View the current bank balance at any time.

- **Mobile Recharge**:
  - Recharge mobile numbers through various service providers (e.g., Jio, Airtel, etc.).

- **Submit Inquiries**:
  - Users can raise inquiries through a contact form for support or questions.

## Technologies Used

- **Frontend**: JSP (JavaServer Pages)
- **Backend**: Servlet
- **Database**: MySQL (or any preferred RDBMS)
- **Other Tools**: JDBC for database connection and handling queries

## Installation and Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/astravlut-next-generation-payment-app.git
    ```

2. Import the project into your favorite IDE (e.g., Eclipse, IntelliJ IDEA).

3. Configure the database:
   - Create a MySQL database.
   - Import the SQL scripts to set up the necessary tables.

4. Update the database connection parameters in the `web.xml` or database configuration file.

5. Deploy the project on a servlet container like Apache Tomcat.

6. Access the application by navigating to:
    ```
    http://localhost:8080/your-project-name
    ```

## How to Use

1. **Sign Up**: 
   - Fill out the sign-up form to create a user account.

2. **Log In**: 
   - Use your credentials to log in to the banking dashboard.

3. **Banking Operations**:
   - Create a new bank account.
   - Deposit and withdraw funds.
   - Check account balance.

4. **Mobile Recharge**:
   - Select your service provider and recharge your mobile.

5. **Contact for Support**:
   - Use the inquiry form to contact support with any questions or issues.

## Future Enhancements

- **Transaction History**: Display all past transactions for users.
- **Security Features**: Implement two-factor authentication and enhanced encryption.
- **Loan System**: Add a module for applying for and managing loans.
- **Admin Dashboard**: Allow administrators to manage users and transactions.


---


