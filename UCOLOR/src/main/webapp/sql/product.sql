CREATE table IF not exists product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_peopleNum INTEGER,
	p_description TEXT,
	p_fileName VARCHAR(20),
	PRIMARY KEY(p_id)
)default CHARSET=utf8;

desc product;
