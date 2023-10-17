# SQL-Projects
SQL Projects done during my Master's

### **#1-Create Movie Recommendation Database**
1. The description of the tables is as follows. You should also check the requirement in the given graphic description:  
users: userid (int, primary key), name (text)  
movies: movieid (integer, primary key), title (text)  
taginfo: tagid (int, primary key), content (text)  
genres: genreid (integer, primary key), name (text)  
ratings: userid (int, foreign key), movieid (int, foreign key), rating (numeric), timestamp (bigint, seconds since midnight Coordinated Universal Time (UTC) of January 1, 1970)  
tags: userid (int, foreign key), movieid (int, foreign key), tagid (int, foreign key), timestamp (bigint, seconds since midnight Coordinated Universal Time (UTC) of January 1, 1970).  
hasagenre: movieid (int, foreign key), genreid (int, foreign key)  

2. The requirement only tells you the name and data type of each attribute in each table. You need to figure out the primary keys, foreign keys, constraints or other necessary settings by yourself. The key information in the requirement is not complete and attributes can be primary keys and foreign keys at the same time.

### **#2-SQL Query for Movie Recommendation**

You should assume the data has been loaded into the database. Then you need to implement the following SQL queries. For each query, we provide an example of the schema of the saved query result.

1. Write a SQL query to return the total number of movies for each genre. Your query result should be saved in a table called “query1” which has two attributes: name, moviecount.
2. Write a SQL query to return the average rating per genre. Your query result should be saved in a table called “query2” which has two attributes: name, rating.
3. Write a SQL query to return the movies have at least 10 ratings. Your query result should be saved in a table called “query3” which has two attributes: title, countofratings.
4. Write a SQL query to return all “Comedy” movies, including movieid and title. Your query result should be saved in a table called “query4” which has two attributes, movieid and title.
5. Write a SQL query to return the average rating per movie. Your query result should be saved in a table called “query5” which has two attributes, title and average.
6. Write a SQL query to return the average rating for all “Comedy” movies. Your query result should be saved in a table called “query6” which has one attribute, average.
7. Write a SQL query to return the average rating for all movies and each of these movies is both “Comedy” and “Romance”. Your query result should be saved in a table called “query7” which has one attribute, average.
8. Write a SQL query to return the average rating for all movies and each of these movies is “Romance” but not “Comedy”. Your query result should be saved in a table called “query8” which has one attribute, average.
9. Find all movies that are rated by a User such that the userId is equal to v1. The v1 will be an integer parameter passed to the SQL query. Your query result should be saved in a table called “query9” which has two attributes, movieid and rating.

Above all, your script should be able to generate 9 tables, namely, “query1”, “query2”, …, “query9”.
