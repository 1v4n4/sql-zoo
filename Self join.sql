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
9.
SELECT d.name, a.company, b.num FROM route a JOIN route b ON a.company = b.company AND a.num =b.num JOIN stops c ON a.stop = c.id JOIN stops d ON b.stop = d.id  WHERE c.name = 'Craiglockhart' AND a.company =  'LRT'
10.
SELECT r1.num, r1.company, s1.name, r4.num, r4.company 
FROM route r1 JOIN route r2 ON  r1.num = r2.num AND r1.company = r2.company
JOIN stops s1 ON r2.stop = s1.id
JOIN route r3 ON s1.id = r3.stop
JOIN route r4 ON r3.num = r4.num AND r3.company = r4.company
WHERE r1.stop = (SELECT id FROM stops f WHERE f.name = 'Craiglockhart') and r4.stop = (SELECT id FROM stops e WHERE e.name = 'Lochend') ORDER BY r1.num, s1.name, r2.num

