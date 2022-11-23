select * from `student_management`.`class`; 
INSERT INTO `student_management`.`class` ( `class_name`, `start_date`, `status`) VALUES ( 'A1', '2008/12/20', 1);
INSERT INTO `student_management`.`class` ( `class_name`, `start_date`, `status`) VALUES ( 'A2', '2008/12/22', 1);
INSERT INTO `student_management`.`class` ( `class_name`, `start_date`, `status`) VALUES ( 'B3', current_date(), 0);
INSERT INTO student_management.student (student_name, address, phone, `status`, class_id)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student_management.student (student_name, address, `status`, class_id)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student_management.student (student_name, address, phone, `status`, class_id)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO student_management.`subject`
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO student_management.Mark (sub_id, student_id, mark, exam_times)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
