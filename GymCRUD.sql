select * from members;
select * from rooms;
select * from stuff;
select * from trainers;
select * from workout;
select * from members_has_workout;

insert into members (name,age,phone)
values ("Maria",22,"6977889889");
insert into members (name,age,phone)
values ("Nikos",32,"6978776667"),
("George",44,"6932443334"),
("Sofia",22,"6976554445");
insert into rooms (number)
values (1),
(2),
(3);
insert into trainers (name,phone)
values ("Nick","699887776"),
("Jenny","6987678876"),
("Nick","6934321123");

insert into workout (rooms_idrooms,name,duration,trainers_idtrainers)
values (1,"Kangoo",45,3);

insert into stuff (name,rooms_idrooms,phone)
values ("Sophie",2,"6989876567"),
("Katia",1,"6989876567"),
("Jane",3,"6977896127");

insert into workout (rooms_idrooms,name,duration,trainers_idtrainers)
values (2,"Pilates",60,2),
(3,"Aerobics",55,1);

insert into members_has_workout (members_idmembers,workout_idworkout,membername,workoutname)
values (1,1,"Maria"),
(1,2,"Maria"),
(2,2,"Nikos"),
(2,3,"Nikos"),
(3,2,"George"),
(4,1,"Sofia");


select workout.name,trainers.name,trainers.phone
from trainers join workout
on workout.Trainers_idTrainers=trainers.idTrainers;

select workout.name,members_has_workout.membername,workout.rooms_idrooms
from members_has_workout join workout
on members_has_workout.workout_idworkout=workout.idworkout;

