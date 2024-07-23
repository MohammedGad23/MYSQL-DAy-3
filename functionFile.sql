
DELIMITER $$
create function welcom_user(UserName varchar(100)) 
returns varchar(200) DETERMINISTIC
begin
	declare res varchar(200); 
	set res = concat('welcome ', UserName);
	return res;
end $$

create function multiply(x int, y int) 
returns int DETERMINISTIC
begin
	declare res int; 
	set res = x * y;
	return res;
end $$

create function viewScore_(id int , namecourse varchar(20)) 
returns float DETERMINISTIC
begin
      declare score float;
      select scoreStudent into score from exam where idStudent = id && nameCourse=namecourse;
      return score;
end $$


create function fialstudent2(namecourse varchar(20)) 
returns int DETERMINISTIC
begin
      declare cnt int;
      select count(nameCourse) into cnt from exam where scoreStudent < 70 and exam.nameCourse = namecourse;
      return cnt;
end $$

create function avrage_Course(namecourse varchar(20)) 
returns float DETERMINISTIC
begin
      declare avrage_ float;
      select avg(maxScore) into avrage_ from courses where courses.name = namecourse;
      return avrage_;
end $$

DELIMITER ;


