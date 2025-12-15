# Netflix Database 2025 (SQL Mini Project)

## Project Overview

This project is a **Netflix-style database mini project** created using **MySQL**. It is designed mainly for practice and learning purposes, focusing on how a streaming platform like Netflix can store user details and movie information, and how SQL queries are used to analyze that data.

The project uses **two core tables: Users and Movies**, which are enough to understand real-world database concepts at a beginner level.

---

## Database Details

* **Database Name:** `netflix_2025_db`
* **Database Tool:** MySQL
* **Project Type:** SQL Mini Project

---

## Tables Used

### 1. Users Table

The `users` table contains information about Netflix subscribers.

**Columns:**

* `user_id` – Unique ID for each user
* `name` – User full name
* `country` – Country of the user
* `email` – Email address (unique for each user)
* `plan_type` – Subscription plan (Basic / Standard / Premium)
* `signup_date` – Date when the user joined Netflix

This table helps analyze **user distribution, subscription plans, and signup trends**.

---

### 2. Movies Table

The `movies` table stores details about movies available on the Netflix platform.

**Columns:**

* `movie_id` – Unique movie identifier
* `title` – Movie title
* `genre` – Movie genre
* `release_year` – Year of release
* `language` – Movie language
* `duration_minutes` – Length of the movie
* `rating` – IMDb-style rating
* `industry` – Industry or studio (Hollywood, Bollywood, Disney, Marvel, etc.)

This table is useful for understanding **content variety, ratings, and industry-wise releases**.

---

## Relationship (Logical)

* This project does not use joins, but logically:

  * Users represent Netflix subscribers
  * Movies represent content available to stream

The tables are kept simple to focus on **SQL querying skills**.

---

## SQL Concepts Practiced

The project includes queries covering:

* Basic `SELECT` statements
* Filtering data using `WHERE`
* Sorting results using `ORDER BY`
* Pattern matching using `LIKE`
* Aggregate functions such as `COUNT` and `AVG`
* Data grouping using `GROUP BY`

---

## Sample Queries Covered

Some example questions answered in this project:

* Movies released in the year 2025
* Users who joined Netflix in 2024
* All animation or horror movies
* Premium plan users
* Movies longer than 130 minutes
* Top-rated and longest movies
* Industry-wise movie count
* Genre-wise average ratings
* Country-wise user distribution

These queries reflect **real analytics questions** used in streaming platforms.

---

## How to Run the Project

1. Open MySQL Workbench or any MySQL client
2. Create and use the database:

   ```sql
   CREATE DATABASE netflix_2025_db;
   USE netflix_2025_db;
   ```
3. Run the SQL file step by step
4. Execute the queries provided to explore the data

---

## Learning Outcome

Through this project, I practiced:

* Designing simple database tables
* Writing clean SQL queries
* Analyzing user and content data
* Understanding how OTT platforms manage data

---

## Use Case

This project represents a **basic backend database structure** similar to Netflix, where user subscriptions and movie content are stored and analyzed for business insights.

---

## Author

**Vamsi Krishna**
B.Tech CSE | SQL & Data Science Learner

---

*This project is created for learning and SQL practice purposes.*
