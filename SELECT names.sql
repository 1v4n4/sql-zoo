1.
SELECT name FROM world WHERE name LIKE 'y%'
2.
SELECT name FROM world WHERE name LIKE '%y'
3.
SELECT name FROM world  WHERE name LIKE '%x%'
4.
SELECT name FROM world WHERE name LIKE '%land'
5.
SELECT name FROM world WHERE name LIKE 'c%ia'
6.
SELECT name FROM world WHERE name LIKE '%oo%'
7.
SELECT name FROM world WHERE name LIKE '%a%a%a%'
8.
SELECT name FROM world WHERE name LIKE '_t%' 
9.
SELECT name FROM world WHERE name LIKE '%o__o%'
10.
SELECT name FROM world WHERE name LIKE '____'
11.
SELECT name FROM world WHERE name = capital
12.
SELECT name FROM world WHERE capital = concat(name, ' City')
13.
SELECT name, capital FROM world WHERE  name LIKE '%' + capital + '%'
14.
SELECT capital, name FROM world WHERE capital LIKE name+'_'+'%'
15.
SELECT name, REPLACE(capital, name, '')  FROM world WHERE capital LIKE name+'_%'


