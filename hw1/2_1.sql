CREATE TABLE covid (
	FIPS INT,
	Admin2 VARCHAR(50),
	Province_State VARCHAR(50),
	Country_Region VARCHAR(50),
	Last_Update VARCHAR(20),
	Lat REAL,
	Long_ REAL,
	Confirmed INT,
	Deaths INT,
	Recovered INT,
	Active INT,
	Combined_Key VARCHAR(100),
	Incident_Rate REAL,
	Case_Fatality_Ratio REAL,
	PRIMARY KEY(Combined_Key)
);