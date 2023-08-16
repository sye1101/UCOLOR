CREATE TABLE IF NOT EXISTS reservation(
	r_id VARCHAR(50),
	r_name VARCHAR(30),
	r_date VARCHAR(10),
	r_time VARCHAR(5),
	r_phone VARCHAR(20),
	r_peopleNum INTEGER,
	r_pName VARCHAR(30)
)default CHARSET=utf8;

desc reservation;

select * from reservation;