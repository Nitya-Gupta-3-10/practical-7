# INNER JOIN
select s.name,s.cgpa,d.dep_name from student s inner join department d on s.dep_id=d.dep_id;
select s.name,e.course_id,e.grade from student s inner join enrollment e on s.roll_no=e.roll_no;
 select d.dep_name,count(*) as student_count from student s inner join department d on s.dep_id=d.dep_id group by d.dep_name;
select d.dep_name,avg(s.cgpa) as avg_cgpa from student s inner join department d on s.dep_id=d.dep_id group by d.dep_name;

# LEFT JOIN
select s.name,e.course_id,e.grade from student s left join enrollment e on s.roll_no=e.roll_no;

# FULL OUTTER JOIN
select s.name,e.course_id,e.grade from student s left join enrollment e on s.roll_no=e.roll_no 
union 
select s.name,e.course_id,e.grade from student s right join enrollment e on s.roll_no=e.roll_no;
