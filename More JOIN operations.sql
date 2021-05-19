1.
SELECT id, title FROM movie WHERE yr = 1962;
2. 
SELECT yr FROM movie WHERE title = 'Citizen Kane';
3.
SELECT  id, title, yr FROM movie WHERE title LIKE '%Star_Trek%' ORDER BY yr
4. 
SELECT id FROM actor WHERE name = 'Glenn Close';
5.
SELECT id FROM movie WHERE title = 'Casablanca';
6.
SELECT name FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id WHERE title = 'Casablanca';
7.
SELECT name FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id WHERE title = 'Alien';
8.
SELECT title FROM movie JOIN casting ON movie.id=casting.movieid JOIN actor ON casting.actorid = actor.id  WHERE name = 'Harrison Ford';
9.
SELECT title FROM movie JOIN casting ON movie.id=casting.movieid JOIN actor ON casting.actorid = actor.id  WHERE name = 'Harrison Ford' AND ord <> 1;
10.
SELECT title, name FROM movie JOIN casting ON movie.id = casting.movieid JOIN actor ON casting.actorid = actor.id WHERE yr = 1962 AND ord = 1; 
11.
SELECT yr, COUNT(title) FROM actor JOIN casting ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id WHERE name =  'Rock Hudson' GROUP BY yr HAVING COUNT(title) > 2;
12.
SELECT title, name FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actorid = actor.id WHERE movieid IN(SELECT movieid FROM casting JOIN actor ON actorid=actor.id WHERE name = 'Julie Andrews') and ord = 1
13.
SELECT name FROM actor JOIN casting ON id=actorid WHERE ord = 1 GROUP BY name HAVING COUNT(CASE WHEN ord = 1 THEN 1 ELSE 0 END);
14.
SELECT  title, COUNT(actorid) as act FROM movie JOIN casting ON id = movieid WHERE yr = 1978 group by title ORDER BY act DESC, title
15.
SELECT name FROM actor JOIN casting ON id = actorid WHERE movieid IN(SELECT movieid FROM casting JOIN actor ON id = actorid WHERE name = 'Art Garfunkel') AND name != 'Art Garfunkel' ORDER BY name
