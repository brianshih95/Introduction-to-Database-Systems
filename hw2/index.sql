create table "index"(
	Data_id int,
	StringencyIndex_Average real,
	GovernmentResponseIndex_Average real,
	ContainmentHealthIndex_Average real,
	EconomicSupportIndex real,
	primary key(Data_id),
	foreign key(StringencyIndex_Average) references Stringency(StringencyIndex_Average),
	foreign key(GovernmentResponseIndex_Average) references GovernmentResponse(GovernmentResponseIndex_Average),
	foreign key(ContainmentHealthIndex_Average) references ContainmentHealth(ContainmentHealthIndex_Average),
	foreign key(EconomicSupportIndex) references EconomicSupport(EconomicSupportIndex)
)