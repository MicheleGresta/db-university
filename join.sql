#1
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` as "Corso"
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

#2
SELECT * 
FROM `degrees` 
LEFT JOIN `departments` 
ON `degrees`.`department_id` = `departments`.`id` 
WHERE `degrees`.`level` = "magistrale" 
AND `departments`.`name` = "Dipartimento di Neuroscienze";

#3
SELECT * 
FROM `course_teacher` 
WHERE `teacher_id` = 44;

#4
SELECT `students`.`surname` , `students`.`name`, `degrees`.`name` as "nome corso", `departments`.`name` as "nome dipartimento" 
FROM `students` 
INNER JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` 
GROUP BY `students`.`surname` , `students`.`name`, `nome corso`, `nome dipartimento`;

#5
SELECT `degrees`.`name` AS "NOME CORSO", `courses`.`name` AS "NOME MATERIA", `teachers`.`name` AS "NOME PROF" 
FROM `degrees` 
INNER JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id` 
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id` 
INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`;

#6
SELECT `teachers`.`name`, `teachers`.`surname`, `departments`.`name` AS "DIPARTIMENTO" 
FROM `teachers`
INNER JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id` 
INNER JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id` 
INNER JOIN `degrees` ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Matematica"

