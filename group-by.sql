#1 
SELECT YEAR(`enrolment_date`) as "anno", COUNT(*) AS "iscritti" 
FROM `students` 
GROUP BY YEAR(`enrolment_date`);

#2
SELECT `office_address`, COUNT(*) AS "Numero di insegnati"
FROM `teachers`
GROUP BY `office_address`
HAVING COUNT(*) > 1;

#3
SELECT `exam_id`, AVG(`vote`) 
FROM `exam_student`
GROUP BY `exam_id`;

#4
SELECT `department_id` as "dipartimento", COUNT(`name`) AS "corsi di laurea"
FROM `degrees`
GROUP BY `department_id`;