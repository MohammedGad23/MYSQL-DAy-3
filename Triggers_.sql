DELIMITER $$
create trigger Delete__
after delete 
on student
for each row begin
	insert into Delete_Students value(now(), old.idStudent, old.email, old.address, concat(old.firstName, ' ', old.secondName));
end $$

create trigger AddStudent
after insert
on student
for each row begin 
	insert into Backup_Students value (new.idStudent, new.email, new.address, new.gender, concat(new.firstName, ' ', new.secondName), new.nameTrack);	
end $$

create trigger AddStudentinfo
before insert
on student
for each row begin 
	insert into change_info value(CURRENT_TIMESTAMP(), 'insert row on student table');
end $$
create trigger updateStudentinfo
before update
on student
for each row begin 
	insert into change_info value(CURRENT_TIMESTAMP(), 'update row on student table');
end $$
create trigger AddCourseinfo
before insert
on courses
for each row begin 
	insert into change_info value(CURRENT_TIMESTAMP(), 'insert row on courses table');
end $$
create trigger updateCourseinfo
before update
on courses
for each row begin 
	insert into change_info value(CURRENT_TIMESTAMP(), 'update row on courses table');
end $$
DELIMITER ;
