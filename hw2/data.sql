create table "data"(
	Data_id int,
	"Date" date,
	Country_id int, 
	primary key(Data_id),
	foreign key(Country_id) references country(Country_id)
)