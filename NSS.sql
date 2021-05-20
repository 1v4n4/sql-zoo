1.
SELECT A_STRONGLY_AGREE
  FROM nss
 WHERE question='Q01'
   AND institution='Edinburgh Napier University'
   AND subject='(8) Computer Science'
2. 
SELECT institution, subject FROM nss WHERE question='Q15' AND score > 99
3.
SELECT institution, score FROM nss WHERE subject = '(8) Computer Science' AND question = 'Q15' AND score < 50
4.
SELECT subject, sum(response) FROM nss WHERE question = 'Q22' AND (subject = '(8) Computer Science' OR subject = '(H) Creative Arts and Design') GROUP by subject
5.
SELECT subject, SUM(response*A_STRONGLY_AGREE/100) FROM nss WHERE question='Q22' AND		(subject='(8) Computer Science' OR subject='(H) Creative Arts and Design') GROUP BY subject;
6.
SELECT subject, ROUND(SUM response*A_STRONGLY_AGREE)/SUM(response), 0) FROM nss WHERE question='Q22' AND subject IN ('(8) Computer Science', '(H) Creative Arts and Design') GROUP BY subject
7.
SELECT institution, ROUND(SUM (score * response) / SUM(response), 0) FROM nss WHERE question='Q22' AND (institution LIKE '%Manchester%') GROUP BY institution
8.
SELECT institution, SUM(sample), SUM(CASE WHEN subject='(8) Computer Science' THEN sample ELSE 0 END) FROM nss WHERE question='Q01' AND (institution LIKE '%Manchester%') GROUP BY institution

