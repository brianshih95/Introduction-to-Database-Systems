create table people(
	Data_id int,
	ConfirmedCases int, 
	ConfirmedDeaths int,
	populationVaccinated real,
	primary key(Data_id),
	foreign key(populationVaccinated) references MajorityVaccinated(populationVaccinated)
)