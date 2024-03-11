create table country(
	Country_id int,
	Country_Name varchar(80),
	Country_Code char(3),
	Country_Number int,
	primary key(Country_id),
	foreign key(Country_Name) references jurisdiction(Country_Name)
)