WITH combined1(Country_Region, total_case) AS 
(SELECT Country_Region, SUM(Confirmed)
FROM covid
GROUP BY Country_Region),
combined2(Country_Region, total_case) AS 
(SELECT Country_Region, SUM(Confirmed)
FROM covid2
GROUP BY Country_Region)

SELECT combined1.Country_Region, (combined1.total_case - combined2.total_case) AS newly_diagnosed
FROM combined1 JOIN combined2
USING (Country_Region)
WHERE (combined1.total_case - combined2.total_case) > 100000
ORDER BY (combined1.total_case - combined2.total_case) DESC