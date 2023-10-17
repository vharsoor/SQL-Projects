CREATE TABLE query1 as 
SELECT g.name as name, COUNT(h.movieid) as moviecount
FROM hasagenre h, genres g
WHERE h.genreid=g.genreid
GROUP BY g.name;



CREATE TABLE query2 as
SELECT g.name as name, AVG(r.rating) as rating
FROM hasagenre h, genres g, movies m, ratings r
WHERE h.genreid=g.genreid AND h.movieid=m.movieid AND m.movieid=r.movieid
GROUP BY g.name;


CREATE TABLE query3 as
SELECT m.title as title, COUNT(r.rating) as countofratings
FROM movies m, ratings r
WHERE m.movieid=r.movieid
GROUP BY m.title
HAVING COUNT(r.rating) >=10;



CREATE TABLE query4 as
SELECT m.movieid, m.title
FROM hasagenre h, genres g, movies m
WHERE h.genreid=g.genreid AND h.movieid=m.movieid AND g.name='Comedy';



CREATE TABLE query5 as
SELECT m.title as title, AVG(r.rating) as average
FROM movies m, ratings r
WHERE m.movieid=r.movieid 
GROUP BY m.title;


CREATE TABLE query6 as 
SELECT AVG(r.rating) as average
FROM hasagenre h, genres g, movies m, ratings r
WHERE h.genreid=g.genreid AND h.movieid=m.movieid AND  m.movieid=r.movieid AND g.name='Comedy';



CREATE TABLE query7 as
SELECT AVG(r.rating) as average
FROM hasagenre h, genres g, movies mo, ratings r
WHERE h.genreid=g.genreid AND h.movieid=mo.movieid AND  mo.movieid=r.movieid AND g.name='Comedy'
AND mo.movieid in (SELECT m.movieid
                   FROM hasagenre h, genres g, movies m, ratings r
                   WHERE h.genreid=g.genreid AND h.movieid=m.movieid AND  m.movieid=r.movieid AND g.name='Romance');



CREATE TABLE query8 as
SELECT AVG(r.rating) as average
FROM hasagenre h, genres g, movies mo, ratings r
WHERE h.genreid=g.genreid AND h.movieid=mo.movieid AND  mo.movieid=r.movieid AND g.name='Romance'
AND mo.movieid not in (SELECT m.movieid
                   FROM hasagenre h, genres g, movies m, ratings r
                   WHERE h.genreid=g.genreid AND h.movieid=m.movieid AND  m.movieid=r.movieid AND g.name='Comedy');



CREATE TABLE query9 as
SELECT movieid, rating
FROM ratings
WHERE userid = :v1;