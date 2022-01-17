
-- GROUP BY --

-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS `enrolment_year`, COUNT(`id`) AS `enrolments_for_year`
FROM `students` 
GROUP BY `enrolment_year`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS `teachers_in_same_building`, `office_address`
FROM `teachers` 
GROUP BY `office_address`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `votes_average`, `exam_id`
FROM `exam_student` 
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) AS `degrees_for_department`, `department_id`
FROM `degrees` 
GROUP BY `department_id`;



-- JOIN --

-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.* , `degrees`.`name` AS `degree_name`
FROM `students` 
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.* , `departments`.`name` AS `department_name`
FROM `degrees` 
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.* , `teachers`.`name` AS `teacher_name` , `teachers`.`surname` AS `teacher_surname`
FROM `courses`
INNER JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.* , 
`degrees`.`name` AS `degree_name`, 
`degrees`.`level` AS `degree_level`,
`degrees`.`address` AS `degree_address`,
`degrees`.`email` AS `degree_email`,
`degrees`.`website` AS `degree_website`,
`departments`.`name` AS `department_name`
FROM `students` 
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name`;