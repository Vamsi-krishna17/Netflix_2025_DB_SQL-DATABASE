create database if not exists netflix_2025_db;
use netflix_2025_db;
create table users(
user_id int not null,
name varchar(20),
country varchar(25),
email varchar(30) unique,
plan_type varchar(10),
signup_date date
);
create table movies(
movie_id int not null,
title varchar(10),
genre varchar(10),
release_year year not null,
language varchar(15),
duration_minutes int,
rating decimal(3,2),
industry varchar(18)
);
alter table movies 
modify rating decimal(3,2),
modify genre varchar(25),
modify title varchar(30);
INSERT INTO movies 
(movie_id, title, genre, release_year, language, duration_minutes, rating, industry)
VALUES
(1, 'Baaghi 4', 'Action', 2025, 'Hindi', 142, 7.4, 'Bollywood'),
(2, 'Alpha', 'Action/Thriller', 2025, 'Hindi', 138, 7.1, 'Bollywood'),
(3, 'Anaconda', 'Horror/Adventure', 2025, 'English', 128, 6.6, 'Hollywood'),
(4, 'Smile 2', 'Horror', 2025, 'English', 121, 7.5, 'Hollywood'),
(5, 'M3GAN 2.0', 'Horror/Thriller', 2025, 'English', 115, 6.9, 'Hollywood'),
(6, 'The Black Phone 2', 'Horror', 2025, 'English', 118, 7.3, 'Hollywood'),
(7, 'How to Train Dragon', 'Fantasy/Adventure', 2025, 'English', 145, 8.1, 'Hollywood'),
(8, 'Moana 2', 'Animation', 2025, 'English', 112, 8.0, 'Disney'),
(9, 'Zootopia 2', 'Animation', 2025, 'English', 110, 8.2, 'Disney'),
(10, 'Mandalorian & Grogu', 'Sci-Fi', 2025, 'English', 134, 7.9, 'Disney'),
(11, 'Super Mario Bros. Movie 2', 'Animation', 2025, 'English', 119, 7.6, 'Universal'),
(12, 'Toy Story 5', 'Animation', 2025, 'English', 108, 7.8, 'Disney'),
(13, 'Spider-Man 4', 'Action/Superhero', 2025, 'English', 141, 8.4, 'Marvel'),
(14, 'Fast & Furious 11', 'Action', 2025, 'English', 150, 6.8, 'Universal'),
(15, 'Tron: Ares', 'Sci-Fi', 2025, 'English', 127, 7.2, 'Disney'),
(16, 'Sonic the Hedgehog 3', 'Animation/Action', 2025, 'English', 124, 7.7, 'Paramount'),
(17, 'Minecraft: The Movie', 'Adventure/Family', 2025, 'English', 118, 7.1, 'Warner Bros'),
(18, 'CapAmerica: Brave New World', 'Superhero', 2025, 'English', 149, 7.3, 'Marvel'),
(19, 'Thunderbolts*', 'Superhero', 2025, 'English', 129, 7.0, 'Marvel'),
(20, 'Jurassic World 4', 'Sci-Fi/Adventure', 2025, 'English', 146, 7.8, 'Universal');
select * from movies;
INSERT INTO users
(user_id, name, country, email, plan_type, signup_date)
VALUES
(1, 'Arjun Mehta', 'India', 'arjunm@gmail.com', 'Premium', '2024-11-12'),
(2, 'Priya Sharma', 'India', 'priya.sharma@gmail.com', 'Standard', '2023-10-05'),
(3, 'Rahul Verma', 'India', 'rahulv@gmail.com', 'Basic', '2024-02-19'),
(4, 'Sarah Jones', 'USA', 'sarahj@gmail.com', 'Premium', '2023-09-11'),
(5, 'David Miller', 'USA', 'davidmiller@gmail.com', 'Basic', '2022-12-15'),
(6, 'Emily Carter', 'UK', 'emilyc@gmail.com', 'Standard', '2023-07-22'),
(7, 'Daniel Scott', 'UK', 'dscott@gmail.com', 'Premium', '2023-05-30'),
(8, 'Aisha Khan', 'UAE', 'aishakhan@gmail.com', 'Standard', '2024-01-04'),
(9, 'Ahmed Ali', 'UAE', 'ahmed.ali@gmail.com', 'Basic', '2023-03-07'),
(10, 'Maria Garcia', 'Spain', 'mariags@gmail.com', 'Premium', '2024-05-14'),
(11, 'Carlos Ruiz', 'Spain', 'carlosr@gmail.com', 'Standard', '2022-11-29'),
(12, 'Riya Patel', 'India', 'riyapatel@gmail.com', 'Basic', '2024-06-10'),
(13, 'Kevin Brown', 'USA', 'kevinb@gmail.com', 'Standard', '2023-08-18'),
(14, 'Olivia White', 'UK', 'oliviaw@gmail.com', 'Premium', '2022-09-01'),
(15, 'Harsh Gupta', 'India', 'harshg@gmail.com', 'Standard', '2024-03-26'),
(16, 'Kunal Singh', 'India', 'kunalsingh@gmail.com', 'Premium', '2024-08-19'),
(17, 'Chloe Evans', 'Australia', 'chloeev@gmail.com', 'Basic', '2023-12-21'),
(18, 'Liam Wilson', 'Australia', 'liamw@gmail.com', 'Standard', '2022-10-09'),
(19, 'Emma Taylor', 'Canada', 'emmat@gmail.com', 'Premium', '2024-09-16'),
(20, 'Noah Brown', 'Canada', 'noahb@gmail.com', 'Basic', '2023-11-03'),
(21, 'Arnav Rao', 'India', 'arnavr@gmail.com', 'Standard', '2024-07-13'),
(22, 'Meera Nair', 'India', 'meeranair@gmail.com', 'Premium', '2023-04-17'),
(23, 'Vivek Pillai', 'India', 'vivekp@gmail.com', 'Basic', '2024-02-28'),
(24, 'Jason Lee', 'Singapore', 'jasonlee@gmail.com', 'Premium', '2023-06-25'),
(25, 'Hannah Kim', 'South Korea', 'hannahk@gmail.com', 'Standard', '2024-04-02');

# BASIC SELECT 
#1
select title from movies where release_year = 2025;
# 2 Display all users who joined Netflix in 2024.
select * from users where Year(signup_date)=2024;
# 3 Show all Animation movies.
select title from movies where genre="Animation";
# 4  Display all users from India.
select name from users where country="India";
# 5 Show all movies from Disney.
select title from movies where industry ="Disney";

# B. Filtering (WHERE)
# 6 Find movies with rating above 7.5.
select title from movies where rating>7.5;
#7 Show all horror movies.
select title from movies where genre ="horror";
# 8 Find all Premium plan users.
select name from users where plan_type ="Premium";
# 9 Show movies longer than 130 minutes.
select title from movies where duration_minutes>130;
# 10 Display movies whose language is English.
select title from movies where language ="English";
 
# Sorting (ORDER BY)
# 11 List movies in descending order of rating.
select title from movies order by rating desc;
# 12 List users in order of their signup date (newest first).
select name,signup_date from users order by signup_date;
# 13 show the top 5 longest movies
select title from movies order by duration_minutes desc limit 5;

# Pattern Searching (LIKE)
# 14 Show all movies whose title starts with “S”.
select title from movies where title like "s%";
# 15 Find all users whose email ends with “gmail.com”.
select * from users where email like "%gmail.com";
# 16 Display movies containing the word “Man”.
select title from movies where title like "%Man%";

 # Aggregation + GROUP BY
# 17 Count how many movies each industry has released.
select industry,count(*) from movies group by industry;
# 18 Find the average movie rating for each genre.
select genre,avg(rating) from movies group by genre;
# 19 Count how many users are in each plan_type.
select plan_type,count(*) from users group by plan_type;
# 20 Count number of users per country.
select country,count(*) from users group by country;