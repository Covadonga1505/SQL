SELECT name_student, name_subject, date_attempt, ROUND((SUM(is_correct)/3)*100, 2) AS Результат
FROM student JOIN attempt USING(student_id)
	JOIN subject USING(subject_id)
	JOIN testing USING(attempt_id)
    JOIN answer USING(answer_id)
GROUP BY student_id, subject_id, date_attempt
ORDER BY name_student, date_attempt DESC;