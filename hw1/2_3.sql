CREATE TABLE country (
	Continent_Name VARCHAR(20),
	Continent_Code CHAR(2),
	Country_Name VARCHAR(80),
	Two_Letter_Country_Code CHAR(2),
	Three_Letter_Country_Code CHAR(3),
	Country_Number SMALLINT,
	PRIMARY KEY (Country_name, Continent_name)
)