1.
SELECT COUNT(id) FROM stops
2.
SELECT id FROM stops WHERE name = 'Craiglockhart'
3.
SELECT id, name
FROM route JOIN stops ON (id = stop)
WHERE num = 4 AND company = 'LRT'
ORDER BY pos
4.
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*) = 2
5.
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 AND B.stop = (SELECT id FROM stops WHERE name = 'London Road') 
6.
SELECT a.company, a.num, c.name, d.name FROM route a JOIN route b ON a.company = b.company AND a.num =b.num JOIN stops c ON a.stop = c.id JOIN stops d ON b.stop = d.id WHERE c.name = 'Fairmilehead' AND d.name = 'Tollcross'
7.
SELECT a.company, a.num FROM route a JOIN route b ON a.company = b.company AND a.num =b.num JOIN stops c ON a.stop = c.id JOIN stops d ON b.stop = d.id WHERE c.name = 'Haymarket'  AND d.name = 'Leith' group by a.company, a.num
8.
SELECT a.company, a.num FROM route a JOIN route b ON a.company = b.company AND a.num =b.num JOIN stops c ON a.stop = c.id JOIN stops d ON b.stop = d.id  WHERE c.name = 'Craiglockhart' AND d.name = 'Tollcross' GROUP BY a.company, a.num

