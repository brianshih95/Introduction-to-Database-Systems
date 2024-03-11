create table country_continent(
	Country_id int,
	Continent_id int,
	primary key(Country_id, Continent_id),
	foreign key(Country_id) references country(Country_id),
	foreign key(Continent_id) references continent(Continent_id)
)