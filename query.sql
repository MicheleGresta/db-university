#1 SELECT * FROM `students` WHERE YEAR(`date_of_birth`)= 1990;

#2
SELECT * FROM `courses` WHERE `cfu` > 10;

#3 
SELECT * FROM `students` WHERE YEAR(CURRENT_DATE) - YEAR(`date_of_birth`) >= 30;

#4
SELECT * FROM `courses` WHERE `year` = 1 AND `period` LIKE 'I semestre';

#5
SELECT * FROM `exams` WHERE date(`date`) = '2020/06/20' AND hour(`hour`) >= '14:00';

#6
SELECT * FROM `degrees` WHERE `level` = 'magistrale';

#7
SELECT COUNT(*) FROM `departments`;
SELECT COUNT(`name`) FROM `departments`;

#8
SELECT COUNT(`phone`) FROM `teachers`;