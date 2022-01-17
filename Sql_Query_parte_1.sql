
-- 1
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) = 1990;


-- 2
SELECT * 
FROM `courses` 
WHERE `cfu` > 10;


-- 3
SELECT * 
FROM `students` 
WHERE `date_of_birth` < DATE_SUB(CURRENT_DATE, INTERVAL 30 YEAR);


-- 4
SELECT * 
FROM `courses` 
WHERE `period` = 'I semestre' AND `year` = 1;


-- 5
SELECT * 
FROM `exams` 
WHERE `date` = '2020-06-20' AND HOUR(`hour`) >= 14; 


-- 6 
SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

-- 7
SELECT COUNT(`id`) 
FROM `departments`;


-- 8
SELECT * 
FROM `teachers` 
WHERE `phone` is NULL;