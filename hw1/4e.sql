UPDATE country
SET Country_Name = 'Korea, South'
WHERE Country_Name = 'Korea, Republic of';

SELECT combined.Country_Region, combined.total_case
FROM (SELECT Country_Region, SUM(Confirmed)
	  FROM covid
	  GROUP BY Country_Region) AS combined(Country_Region, total_case) JOIN country
	  on country.Country_Name LIKE CONCAT(combined.Country_Region, '%')
WHERE combined.total_case > 20000000 AND country.Continent_Name = 'Asia'