SELECT combined.Country_Region, combined.total_case
FROM (SELECT Country_Region, SUM(Confirmed)
	  FROM covid
	  GROUP BY Country_Region) AS combined(Country_Region, total_case)
WHERE combined.total_case > 20000000